library(tidyverse)

zork_edges <- 
  zork_edges |>
    add_row(
      perspective_location = locations$west_of_house,
      perspective_to_target = directions$north,
      target_location = locations$north_of_house
    ) |>
    add_row(
      perspective_location = locations$west_of_house,
      perspective_to_target = directions$west,
      target_location = locations$forest
    ) |>
    add_row(
      perspective_location = locations$forest,
      perspective_to_target = directions$north,
      target_location = locations$clearing
    ) |>
    add_row(
      perspective_location = locations$clearing,
      perspective_to_target = directions$west,
      target_location = locations$forest
    ) |>
    add_row(
      perspective_location = locations$clearing,
      perspective_to_target = directions$south,
      target_location = locations$forest_path
    ) |>
    add_row(
      perspective_location = locations$forest_path,
      perspective_to_target = directions$south,
      target_location = locations$north_of_house
    ) |>
    add_row(
      perspective_location = locations$north_of_house,
      perspective_to_target = directions$east,
      target_location = locations$behind_house
    ) |>
    add_row(
      perspective_location = locations$behind_house,
      perspective_to_target = directions$south,
      target_location = locations$south_of_house
    ) |>
    add_row(
      perspective_location = locations$south_of_house,
      perspective_to_target = directions$south,
      target_location = locations$forest
    ) |>
    add_row(
      perspective_location = locations$behind_house,
      perspective_to_target = directions$west,
      target_location = locations$kitchen
    ) |>
    add_row(
      perspective_location = locations$kitchen,
      perspective_to_target = directions$west,
      target_location = locations$living_room
    ) |>
    add_row(
      perspective_location = locations$kitchen,
      perspective_to_target = directions$up,
      target_location = locations$attic
    ) |>
    add_row(
      perspective_location = locations$living_room,
      perspective_to_target = directions$west,
      target_location = locations$inaccessible
    ) |>
    add_row(
      perspective_location = locations$west_of_house,
      perspective_to_target = directions$south,
      target_location = locations$south_of_house
    ) |>
    add_row(
      perspective_location = locations$south_of_house,
      perspective_to_target = directions$east,
      target_location = locations$behind_house
    ) |>
    add_row(
      perspective_location = locations$behind_house,
      perspective_to_target = directions$east,
      target_location = locations$clearing
    ) |>
    add_row(
      perspective_location = locations$clearing,
      perspective_to_target = directions$east,
      target_location = locations$canyon_view
    ) |>
    add_row(
      perspective_location = locations$canyon_view,
      perspective_to_target = directions$down,
      target_location = locations$rocky_ledge
    ) |>
    add_row(
      perspective_location = locations$kitchen,
      perspective_to_target = directions$down,
      target_location = locations$cellar
    ) |>
    add_row(
      perspective_location = locations$cellar,
      perspective_to_target = directions$north,
      target_location = locations$the_troll_room
    ) |>
    add_row(
      perspective_location = locations$cellar,
      perspective_to_target = directions$south,
      target_location = locations$east_of_chasm
    ) |>
    add_row(
      perspective_location = locations$east_of_chasm,
      perspective_to_target = directions$east,
      target_location = locations$gallery
    ) |>
    add_row(
      perspective_location = locations$cellar,
      perspective_to_target = directions$west,
      target_location = locations$inaccessible
    ) |> 
    add_row(
      perspective_location = locations$gallery,
      perspective_to_target = directions$north,
      target_location = locations$studio
    ) |> 
    add_row(
      perspective_location = locations$studio,
      perspective_to_target = directions$up,
      target_location = locations$unexplored
    ) |> 
    add_row(
      perspective_location = locations$the_troll_room,
      perspective_to_target = directions$east,
      target_location = locations$east_west_passageway
    ) |> 
    add_row(
      perspective_location = locations$the_troll_room,
      perspective_to_target = directions$west,
      target_location = locations$maze
    ) |> 
    add_row(
      perspective_location = locations$east_west_passageway,
      perspective_to_target = directions$east,
      target_location = locations$unexplored
    ) |> 
    add_row(
      perspective_location = locations$east_west_passageway,
      perspective_to_target = directions$down,
      target_location = locations$unexplored
    ) 