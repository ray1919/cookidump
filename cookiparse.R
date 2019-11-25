require(rvest)
require(httr)
library(stringr)

my_session <- read_html("output/r80899.html", encoding = "utf-8")

# tm version

tm_version <- my_session %>% html_node(".recipe-card__tm-version") %>%
  html_nodes("core-badge") %>%
  html_text() %>% str_replace_all("\\n +", "")

title <- my_session %>% html_nodes(".recipe-card__title") %>%
  html_text()

img_url <- my_session %>% html_nodes(".recipe-card__picture") %>%
  html_nodes(".core-tile__image") %>% html_attr("src")

difficulty <- my_session %>% html_node("#rc-icon-difficulty-text") %>%
  html_text() %>% str_replace_all("\\n +", "")

active <- my_session %>% html_node("#rc-icon-active-time") %>%
  html_text() %>% str_replace_all("\\n +", "")

total <- my_session %>% html_node("#rc-icon-total-time") %>%
  html_text() %>% str_replace_all("\\n +", "")

quantity <- my_session %>% html_node("#rc-icon-quantity") %>%
  html_text() %>% str_replace_all("\\n +", "")

# ingredients

ingredients <- my_session %>% html_node("#ingredients-0") %>%
  html_children() %>%
  html_text() %>%
  str_replace_all("\\n +", "")

# nutritions

nutritions_t <- my_session %>% html_node(".nutritions") %>% 
  html_nodes("dt") %>%
  html_text() %>%
  str_replace_all("\\n +", "")
nutritions_d <- my_session %>% html_node(".nutritions") %>%
  html_nodes("dd") %>%
  html_text() %>%
  str_replace_all("\\n +", "")

# steps

steps <- my_session %>% html_node(".preparation-steps") %>%
  html_nodes("li") %>%
  html_text() %>%
  str_replace_all("\\n +", "")


