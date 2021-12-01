
roll <- function(n, d) {
  sum(sample(1:d, n, replace=TRUE))
}

trim_roll <- function(roll) {
  max(min(roll, 12), 2)
}

get_contract_num <- function(bonus) {
  
  result <- roll(2,6)+bonus
  
  ifelse(result<8, 0,
         ifelse(result<10,1,
                ifelse(result<12,2,3)))
}

roll_negotiator <- function(bonus) {
  
  result <- roll(2,6)+bonus
  
  ifelse(result<6, "Green (6+)",
         ifelse(result<9, "Regular (5+)",
                ifelse(result<11, "Veteran (4+)", "Elite (3+)")))
}

roll_employer <- function(bonus) {
  employer_roll <- trim_roll(roll(2,6)+bonus)
  employer <- subset(employer_tab, Roll==employer_roll)$Employer
  if(employer=="Independent") {
    #re-roll
    employer_roll <- trim_roll(roll(2,6)+bonus)
    employer <- subset(employer_tab, Roll==employer_roll)$Independent
  } else if(employer=="Minor Power") {
    #re-roll
    employer_roll <- trim_roll(roll(2,6)+bonus)
    employer <- subset(employer_tab, Roll==employer_roll)$Minor
  }
  return(employer)
}

roll_salvage_pct <- function(bonus) {
  salvage <- "Exchange"
  while(!str_detect(salvage, "%")) {
    salvage_roll <- trim_roll(roll(2,6)+bonus)
    salvage <- paste(subset(supplemental, Roll==salvage_roll)$Salvage, 
                     " (", salvage_roll, "), Exchange", sep="")
  }
  return(salvage)
}

gen_contract <- function(hall, rating) {
  
  #### Load mods ####
  hall_mod <- hall_mods %>% filter(Hall==hall)
  rating_mod <- rating_mods %>% filter(Rating==rating)
  
  #### Get employer ####
  employer <- roll_employer(hall_mod$Employer+rating_mod$Employer)
  employer_mod <- employer_mods %>% filter(Type==employer)
  
  if(employer=="Mercenary") {
    #determine the original employer
    employer_orig <- roll_employer(2)
    while(employer_orig=="Mercenary") {
      employer_orig <- roll_employer(2)
    }
    employer <- paste(employer, " (", employer_orig, ")", sep="")
  }
  
  #### Get mission type ####
  employer_type <- case_when(
    str_detect(employer, "Periphery") ~ "Periphery",
    str_detect(employer, "Corporation") ~ "Corporation",
    str_detect(employer, "Private") ~ "Private.Party",
    str_detect(employer, "Planetary Gov") ~ "Planetary.Gov",
    TRUE ~ "Inner.Sphere"
  )

  mission_type <- subset(mission_tab, Roll==roll(2,6))[,employer_type]
  if(mission_type=="Special") {
    mission_type <- subset(mission_tab, Roll==roll(2,6))[,"Special"]
  }
  if(mission_type=="Covert") {
    mission_type <- subset(mission_tab, Roll==roll(2,6))[,"Covert"]
  }
  
  #remove the asterisks for compound mission when finding the mission mod
  mission_mod <- mission_mods %>% filter(Type==str_remove(mission_type, "\\*"))
  
  #### Contract characteristics ####
  pay_mult <- rating_mod$PayMult * mission_mod$PayMult * employer_mod$PayMult
  mission_length <- mission_mod$Length
  
  command_roll <- trim_roll(roll(2,6)+rating_mod$Command+mission_mod$Command+
                              employer_mod$Command)
  overhead_roll <- roll(2,6)
  salvage_roll <- trim_roll(roll(2,6)+rating_mod$Salvage+mission_mod$Salvage+
                              employer_mod$Salvage)
  support_roll <- trim_roll(roll(2,6)+rating_mod$Support+mission_mod$Support+
                              employer_mod$Support)
  transport_roll <- trim_roll(roll(2,6)+rating_mod$Transport+mission_mod$Transport+
                                employer_mod$Transport)
  advance_roll <- trim_roll(roll(2,6)+rating_mod$Advance+mission_mod$Advance+
                                employer_mod$Advance)
  mrbc_roll <- trim_roll(roll(2,6)+rating_mod$MRBC+mission_mod$MRBC+
                              employer_mod$MRBC+hall_mod$MRBC)
  
  command <- paste(subset(supplemental, Roll==command_roll)$Command, 
                   " (", command_roll, ")", sep="")
  overhead <- paste(subset(supplemental, Roll==overhead_roll)$Overhead, 
                    " (", overhead_roll, ")", sep="")
  salvage <- paste(subset(supplemental, Roll==salvage_roll)$Salvage, 
                   " (", salvage_roll, ")", sep="")
  support <- paste(subset(supplemental, Roll==support_roll)$Support, 
                   " (", support_roll, ")", sep="")
  transport <- paste(subset(supplemental, Roll==transport_roll)$Transport, 
                     " (", transport_roll, ")", sep="")
  advance <- paste(subset(supplemental, Roll==advance_roll)$Advance, 
                     " (", advance_roll, ")", sep="")
  mrbc <- paste(subset(supplemental, Roll==mrbc_roll)$MRBC, 
                   " (", mrbc_roll, ")", sep="")
  negotiator <- roll_negotiator(employer_mod$Negotiator)
  
  if(str_detect(salvage, "Exchange")) {
    #figure out percentage
    salvage <- roll_salvage_pct(rating_mod$Salvage+mission_mod$Salvage+
                                  employer_mod$Salvage)
  }
  
  return(c(employer=employer, mission_type=mission_type, 
           pay_mult=pay_mult, mission_length=mission_length,
           command=command, overhead=overhead, salvage=salvage,
           support=support, transport=transport, advance=advance,
           mrbc=mrbc, negotiator=negotiator))
}

gen_all_contracts <- function(hall, rating, well_connected) {
  
  offer_mod <- subset(offer_mods, Hall==hall & Rating==rating)$Mod+
    well_connected
  n_offer <- get_contract_num(offer_mod)
  if(n_offer==0) {
    return(NA)
  }
  bind_rows(rerun(n_offer, gen_contract(hall, rating)))
}
