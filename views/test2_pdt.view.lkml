# If necessary, uncomment the line below to include explore_source.

# include: "ljk_bq_project.model.lkml"

view: test_pdt{
  derived_table: {
    explore_source: test1 {
      column: bikeid {}
      column: birth_year {}
      column: gender {}
      column: start_station_id {}
      column: usertype {}
    }
  }
  dimension: bikeid {
    description: "Bike ID"
    value_format: "0"
    type: number
  }
  dimension: birth_year {
    description: "Year of Birth"
    type: number
  }
  dimension: gender {
    description: "Gender (unknown, male, female)"
  }
  dimension: start_station_id {
    description: "Start Station ID"
    type: number
  }
  dimension: usertype {
    description: "User Type (Customer = 24-hour pass or 7-day pass user, Subscriber = Annual Member)"
  }
}
