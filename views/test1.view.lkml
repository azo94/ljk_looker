# The name of this view in Looker is "Test1"
view: test1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.test1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bikeid" in Explore.

  dimension: bikeid {
    type: number
    description: "Bike ID"
    value_format_name: id
    sql: ${TABLE}.bikeid ;;
  }

  dimension: birth_year {
    type: number
    description: "Year of Birth"
    sql: ${TABLE}.birth_year ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_birth_year {
    type: sum
    sql: ${birth_year} ;;
  }

  measure: average_birth_year {
    type: average
    sql: ${birth_year} ;;
  }

  dimension: end_station_id {
    type: number
    description: "End Station ID"
    sql: ${TABLE}.end_station_id ;;
  }

  dimension: end_station_latitude {
    type: number
    description: "End Station Latitude"
    sql: ${TABLE}.end_station_latitude ;;
  }

  dimension: end_station_longitude {
    type: number
    description: "End Station Longitude"
    sql: ${TABLE}.end_station_longitude ;;
  }

  dimension: end_station_name {
    type: string
    description: "End Station Name"
    sql: ${TABLE}.end_station_name ;;
  }

  dimension: gender {
    type: string
    description: "Gender (unknown, male, female)"
    sql: ${TABLE}.gender ;;
  }

  dimension: start_station_id {
    type: number
    description: "Start Station ID"
    sql: ${TABLE}.start_station_id ;;
  }

  dimension: start_station_latitude {
    type: number
    description: "Start Station Latitude"
    sql: ${TABLE}.start_station_latitude ;;
  }

  dimension: start_station_longitude {
    type: number
    description: "Start Station Longitude"
    sql: ${TABLE}.start_station_longitude ;;
  }

  dimension: start_station_name {
    type: string
    description: "Start Station Name"
    sql: ${TABLE}.start_station_name ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: starttime {
    type: time
    description: "Start Time"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.starttime ;;
  }

  dimension_group: stoptime {
    type: time
    description: "Stop Time"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.stoptime ;;
  }

  dimension: tripduration {
    type: number
    description: "Trip Duration (in seconds)"
    sql: ${TABLE}.tripduration ;;
  }

  dimension: usertype {
    type: string
    description: "User Type (Customer = 24-hour pass or 7-day pass user, Subscriber = Annual Member)"
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: [start_station_name, end_station_name]
  }
}
