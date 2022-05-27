view: test2_pdt {
  derived_table: {
    explore_source: looker_test.test2 {
      column: usertype {
        field: looker_test.test2.usertype
      }
      column: route {
        field: looker_test.test2.route
      }
      column: trips_num {
        field: looker_test.test2.trips_num
      }


    }
  }

  dimension: usertype {
    type: string
    primary_key: yes
    sql: ${TABLE}.usertype ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.route ;;
  }

  dimension: trips_num {
    type: number
    sql: ${TABLE}.trips_num ;;
  }
}
