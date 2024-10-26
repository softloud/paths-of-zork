zork_nodes <- tibble(
  perspective_location = character(),
  region = character(),
  interactivity = character(),
  loot = character()
)

zork_edges <- tibble(
  perspective_location = character(),
  perspective_to_target = character(),
  target_location = character()
)