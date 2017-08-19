library(tidyverse)

# import all csvs
data <- readRDS(file = "data.rds") 

# find all SF matches in Masters tournaments
df2 <- data %>%
  map(~ filter(.x, tourney_level == "M", round == "SF")) %>%
  map(~ select(.x, tourney_name, tourney_date, round, winner_name, loser_name,
               winner_rank, loser_rank)) %>%
  map_df(bind_rows)


# new column with all player names
final_df2 <- df2 %>% 
  gather(win_los, player, winner_name, loser_name) %>%
  mutate(rank = ifelse(win_los == "winner_name", 
                       winner_rank, loser_rank)) %>%
  select(tourney_date, tourney_name, round, player, rank) %>%
  #filter(rank <= 10) %>%
  group_by(tourney_date, tourney_name) %>%
  summarise(number_of_T10_in_SF = sum(rank <= 10),
            players=paste0(player, collapse=", ")) %>%
  arrange(number_of_T10_in_SF)

table_df <- final_df2 %>%
  filter(number_of_T10_in_SF == 0)

# nice formatted table for README.md
# knitr::kable(table_df)
