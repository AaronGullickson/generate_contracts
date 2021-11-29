
roll <- function(n, d) {
  sum(sample(1:d, n, replace=TRUE))
}

trim_roll <- function(roll) {
  max(min(roll, 12), 2)
}

get_contract_num <- function(bonus) {
  
  result <- roll(2,6)+bonus
  
  ifelse(result<7, 0,
         ifelse(result<10,1,
                ifelse(result<12,2,
                       ifelse(result<14,3,5))))
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
  mission_mod <- mission_mods %>% filter(Type==mission_type)
  
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
  
  return(c(employer=employer, mission_type=mission_type, 
           pay_mult=pay_mult, mission_length=mission_length,
           command=command, overhead=overhead, salvage=salvage,
           support=support, transport=transport))
}

gen_all_contracts <- function(hall, rating) {
  
  offer_mod <- subset(offer_mods, Hall==hall & Rating==rating)$Mod
  n_offer <- get_contract_num(offer_mod)
  if(n_offer==0) {
    return(NA)
  }
  plyr::rdply(n_offer, gen_contract(hall, rating))
}
