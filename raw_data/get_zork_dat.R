
zork_edges_filepath <- 'raw_data/zork-edges.tsv'
zork_nodes_filepath <- 'raw_data/zork-nodes.tsv'


zork_edges <- readr::read_tsv(zork_edges_filepath)
zork_nodes <- readr::read_tsv(zork_nodes_filepath)

# will experiment with vscode extensions for data entry

# zork_gs = 'https://docs.google.com/spreadsheets/d/10PSDN97MdqDH_QaofhVh5Te8n4MxpYf6XJM3JsGetxI/edit?gid=0#gid=0'


# googlesheets4::gs4_deauth()


# zork_dat <- read_sheet(zork_gs) |> 
#  dplyr::mutate(playthrough = '2024-10-22')  %>% 
#  dplyr::select(-interactivity)

# zork_dat_filepath <- paste0('raw_data/zork-paths.tsv')
# readr::write_tsv(zork_dat, zork_dat_filepath)

# library(tidyverse)

# don't run script needs to be wrangled
# zork_nodes <- zork_dat  %>% 
#  dplyr::select(perspective_location, region, interactivity)  %>%   
#  dplyr::distinct()  
 
#readr::write_tsv(zork_nodes, 'raw_data/zork-nodes.tsv')