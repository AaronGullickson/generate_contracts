
## Tables of outcomes
employer_tab <- read.md("tables/employer_table.md")
mission_tab <- read.md("tables/mission_table.md")
supplemental <- read.md("tables/supplemental_items.md")

## Modifer tables
offer_mods <- read.md("tables/offer_mods.md") %>%
  pivot_longer(cols=starts_with("rating"), names_prefix="rating", 
               values_to="Mod", names_to = "Rating")
hall_mods <- read.md("tables/hall_mods.md")
rating_mods <- read.md("tables/rating_mods.md")
mission_mods <- read.md("tables/mission_mods.md")
employer_mods <- read.md("tables/employer_mods.md")
