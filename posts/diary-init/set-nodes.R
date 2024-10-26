zork_nodes <- 
  zork_nodes |>
    add_row(
      perspective_location = locations$west_of_house,
      region = regions$forest,
      interactivity = 'solved: mailbox',
      loot = 'leaflet'
    ) |>
      add_row(
      perspective_location = locations$north_of_house,
      region = regions$forest,
      interactivity = 'none',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$forest,
      region = regions$forest,
      interactivity = 'song bird?',
      loot = 'none'    
    ) |>
    add_row(
      perspective_location = locations$clearing,
      region = regions$forest,
      interactivity = 'unsolved: pile of leaves',
      loot = 'none'    
    )  |>
    add_row(
      perspective_location = locations$forest_path,
      region = regions$forest,
      interactivity = 'none',
      loot = 'none'    
    ) |>
    add_row(
      perspective_location = locations$behind_house,
      region = regions$forest,
      interactivity = 'window to house',
      loot = 'none'    
    ) |>
    add_row(
      perspective_location = locations$south_of_house,
      region = regions$forest,
      interactivity = 'none',
      loot = 'none'    
    ) |>
    add_row(
      perspective_location = locations$kitchen,
      region = regions$house,
      interactivity = 'sack',
      loot = 'water, lunch, garlic'    
    ) |>
    add_row(
      perspective_location = locations$living_room,
      region = regions$house,
      interactivity = 'rug, locked door to west',
      loot = 'sword, lantern'    
    ) |>
    add_row(
      perspective_location = locations$attic,
      region = regions$house,
      interactivity = 'none',
      loot = 'rope, knife'    
    ) |>
    add_row(
      perspective_location = locations$unexplored,
      region = regions$unexplored,
      interactivity = unknown,
      loot = unknown
    ) |>
    add_row(
      perspective_location = locations$canyon_view,
      region = regions$forest,
      interactivity = 'none',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$rocky_ledge,
      region = regions$forest,
      interactivity = 'none',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$cellar,
      region = regions$cellar,
      interactivity = 'none',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$inaccessible,
      region = regions$unexplored,
      interactivity = 'none',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$east_of_chasm,
      region = regions$cellar,
      interactivity = 'none',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$gallery,
      region = regions$cellar,
      interactivity = 'painting',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$studio,
      region = regions$cellar,
      interactivity = 'note, 69 colours',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$the_troll_room,
      region = regions$cellar,
      interactivity = 'troll',
      loot = 'none'
    ) |>
    add_row(
      perspective_location = locations$maze,
      region = regions$cellar,
      interactivity = unknown,
      loot = unknown
    ) |>
    add_row(
      perspective_location = locations$east_west_passageway,
      region = regions$cellar,
      interactivity = unknown,
      loot = unknown
    )