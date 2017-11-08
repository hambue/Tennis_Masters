library(tidyverse)
library(stringr)

test_df <- read_csv("../data/tennis_atp/atp_matches_2016.csv")

tmp_df <- test_df %>%
  filter(best_of == 3) %>%
  filter(winner_rank < 33 & loser_rank < 33) %>%
  select(score) %>%
  filter(!str_detect(score, "RET")) %>%
  filter(!str_detect(score, "W/O")) %>%
  filter(!str_detect(score, "abandoned")) %>%
  mutate(sets_played = str_count(score, " ") + 1,
         score = str_replace_all(score, "\\([0-9]+\\)",""),
         first_set = str_sub(score, 1 , 3)) %>%
  separate(first_set, c("winner", "loser"), convert=TRUE) %>%
  mutate(sequence = case_when(
    sets_played == 2 ~ "AA",
    sets_played == 3 & winner > loser ~ "ABA",
    sets_played == 3 & loser > winner ~ "BAA"
  ))

# first result:
table(tmp_df$sets_played)/nrow(tmp_df)
# 2     3
#0.62  0.38

# sequence result:
table(tmp_df$sequence)/nrow(tmp_df)
#    AA       ABA       BAA 
# 0.6219081 0.1660777 0.2120141 

# only for 3 sets:
three_df <- filter(tmp_df, sets_played == 3)
table(three_df$sequence)/nrow(three_df)
#    ABA       BAA 
# 0.4392523 0.5607477