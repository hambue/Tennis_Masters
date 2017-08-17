setwd("~/R/Tennis")

library(readr)
library(stringr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(purrr)

urls <- paste0("ATP/tennis_atp-master/atp_matches_",
               1990:2015, ".csv")

df1 <- urls %>%
  map(read_csv) %>%
  map(~ filter(.x, tourney_level == "M", round == "R16")) %>%
  map(~ filter(.x, winner_rank <= 10 | loser_rank <= 10)) %>%
  map(~ select(.x, tourney_name, tourney_date, round, winner_name, loser_name,
               winner_rank, loser_rank)) %>%
  map_df(bind_rows)
  

df1 %>% gather(win_los, player, winner_name, loser_name) %>%
  mutate(rank = ifelse(win_los == "winner_name", 
                       winner_rank, loser_rank)) %>%
  select(tourney_date, tourney_name, round, player, rank) %>%
  filter(rank <= 10) %>%
  group_by(tourney_date, tourney_name) %>%
  summarise(number_of_T10_in_R16 = n(),
            players=paste0(player, collapse=", ")) %>%
  filter(number_of_T10_in_R16 < 5) %>%
  arrange(number_of_T10_in_R16) -> final_df


#knitr::kable(final_df)

  