library(tidyverse)

# run only for first data import:
#-----------------------------------------------------------
# urls <- paste0("../data/tennis_atp/atp_matches_",
#                1990:2017, ".csv")
# 
# all_csvs <- urls %>%
#   map(read_csv) 
# 
# saveRDS(all_csvs, file = "data.rds")

#-----------------------------------------------------------

# import all csvs
data <- readRDS(file = "data.rds") 

# find all R16 matches in Masters tournaments
# with Top10 players involved
# possible problem: what if no Top10 was involved?!
df1 <- data %>%
  map(~ filter(.x, tourney_level == "M", round == "R16")) %>%
  map(~ filter(.x, winner_rank <= 10 | loser_rank <= 10)) %>%
  map(~ select(.x, tourney_name, tourney_date, round, winner_name, loser_name,
               winner_rank, loser_rank)) %>%
  map_df(bind_rows)
  

# new column with all player names
# only keep rows with Top10 players
final_df <- df1 %>% 
  gather(win_los, player, winner_name, loser_name) %>%
  mutate(rank = ifelse(win_los == "winner_name", 
                       winner_rank, loser_rank)) %>%
  select(tourney_date, tourney_name, round, player, rank) %>%
  filter(rank <= 10) %>%
  group_by(tourney_date, tourney_name) %>%
  summarise(number_of_T10_in_R16 = n(),
            players=paste0(player, collapse=", ")) %>%
  filter(number_of_T10_in_R16 < 5) %>%
  arrange(number_of_T10_in_R16)


# nice formatted table for README.md
#knitr::kable(final_df)

  