library(tidyverse)

# import all csvs
data <- readRDS(file = "data.rds") 

# find all SF matches in Masters tournaments
finalists <- data %>%
  map(~ filter(.x, tourney_level == "M", round == "F")) %>%
  map(~ select(.x, tourney_name, tourney_date, winner_name, loser_name)) %>%
  map_df(bind_rows) %>%
  gather(win_los, player, winner_name, loser_name) %>%
  select(tourney_name, tourney_date, player) %>%
  arrange(tourney_date)


all_masters <- data %>%
  map(~ filter(.x, tourney_level == "M")) %>%
  map(~ select(.x, tourney_name, tourney_date, round, winner_name, loser_name,
               winner_rank, loser_rank)) %>%
  map_df(bind_rows)


all_opp_ranks <- all_masters %>% 
  gather(win_los, player, winner_name, loser_name) %>%
  mutate(opp_rank = case_when(win_los == "winner_name" ~ loser_rank,
                              win_los == "loser_name" ~ winner_rank)) %>%
  select(tourney_name, tourney_date, player, opp_rank)


# bind finalist with all_opp_ranks and keep only rows with finalists names

final_opp_ranks <- inner_join(finalists, all_opp_ranks)

url_link <- "http://www.tennisabstract.com/cgi-bin/tourney.cgi?t="

overview <- final_opp_ranks %>%
  group_by(tourney_name, tourney_date, player) %>%
  summarise(opp_ranks = paste0(opp_rank, collapse = ", "),
            median_rank = median(opp_rank),
            mean_rank = round(mean(opp_rank), 1)) %>%
  mutate(link1 = url_link,
         link2 = tourney_date %/% 10000,
         link3 = stringr::str_replace_all(tourney_name, " ", "_")) %>%
  unite(link, link1, link2, link3, sep = "") %>%
  ungroup() %>%
  mutate(tourney_date = paste0("<a href='",link,"' target='_blank'>",tourney_date,"</a>")) %>%
  select(-link)



htmlwidgets::saveWidget(DT::datatable(overview, escape = FALSE),
                        file="overview.html")




