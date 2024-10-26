library(tidyverse)
library(tidygraph)
library(ggraph)
library(googlesheets4)
library(gt)
library(patchwork)

graph_data_file = "zork-graph-data - edgepairs.tsv"

raw_dat <- read_tsv(graph_data_file, show_col_types = FALSE)

zork_df <- 
  raw_dat  %>% 
    mutate(
      from = perspective_location, 
      to = target_location, 
      region = factor(region),
      edge_angle_arg = case_when(
        perspective_to_target == "north" ~ 0,
        perspective_to_target == "south" ~ 180,
        perspective_to_target == "east" ~ 0,
        perspective_to_target == "west" ~ 0)
      )  %>% 
    select(from, to, everything()) 
    

double_edges_cols <- zork_df  %>% 
  mutate(
    edge_label = case_when(
      perspective_to_target %in% c('east', 'west') ~ 'e-w',
      perspective_to_target %in% c('north', 'south') ~'n-s',
      perspective_to_target %in% c('up', 'down') ~'n-s'
    )
  ) %>% 
  select(from, to, edge_label)

# Identify bidirectional edges
bidirectional_edges <- double_edges_cols %>%
  inner_join(double_edges_cols, 
    by = c("from" = "to", "to" = "from", "edge_label" = "edge_label")) %>%
  distinct(from, to, edge_label)

zork_graph_dat <- as_tbl_graph(zork_df)

n_regions <- length(unique(zork_df$region))

cols_f <- colorRampPalette(RColorBrewer::brewer.pal(11, 'Spectral'))

zork_ggraph <- 
  zork_graph_dat  %>% 
  ggraph() + 
#    geom_edge_link(data = bidirectional_edges, aes(colour = region), 
#      arrow = arrow(type = "closed", length = unit(4, 'mm')), 
#      end_cap = circle(3, 'mm')) + 
    geom_edge_fan(aes(label = perspective_to_target), 
      alpha = 0.2, 
      angle_calc = 'along',
      label_colour = 'grey',
      label_dodge = unit(3.5, 'mm'),
      arrow = arrow(length = unit(4, 'mm')), 
      end_cap = circle(3, 'mm')) + 
    geom_edge_loop(aes(label = perspective_to_target), 
      label_dodge = unit(2.5, 'mm'),
      arrow = arrow(length = unit(4, 'mm')), 
      end_cap = circle(3, 'mm')) +    
    geom_node_text(aes(label = name),
      alpha = 0.7) +
    theme_minimal() +
  scale_edge_colour_manual(values = cols_f(n_regions)) + 
    scale_colour_manual(values = cols_f(n_regions)) +
    theme(
      plot.background = element_rect(colour = "#F5DEB3"),
      legend.position = 'top',
      text = element_text(family = "Courier", size = 20),
      axis.ticks = element_blank(),
      axis.text = element_blank(),
      panel.grid = element_blank()
    ) + 
    labs(
      title = "Paths of Zork",
      subtitle = "Angle of edge determined by ggraph, not direction",
      x = "",
      y = ""
    )

zork_img_dir <- 'img'
zork_graph_filename <- 
  paste0(
    zork_img_dir, "/",
    today(), 
    '--zork-graph.png')

ggsave(zork_graph_filename, zork_ggraph, width = 14, height = 8, units = 'in')


zork_gt_filename <- 
  paste0(
    zork_img_dir, "/",
    today(), 
    '--zork-gt.png')

zork_gt <-
  zork_df  %>% 
    select(from, interactivity)  %>% 
    distinct()  %>% 
    gt()

gtsave(zork_gt, zork_gt_filename)
