# The name of this view in Looker is "Test2"
view: test2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.test2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Route" in Explore.

  dimension: route {
    type: string
    sql: ${TABLE}.route ;;
  }

  dimension: trips_num {
    type: number
    sql: ${TABLE}.trips_num ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_trips_num {
    type: sum
    sql: ${trips_num} ;;
  }

  measure: average_trips_num {
    type: average
    sql: ${trips_num} ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
