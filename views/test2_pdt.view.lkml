# If necessary, uncomment the line below to include explore_source.

# include: "ljk_bq_project.model.lkml"

view: test_pdt{
  derived_table: {
    sql:
    SELECT
      count(0),
      gender,
      usertype
    FROM `jinkyu-cloocus.looker_test.test3`
    group by gender, usertype
    ;;
  }
}
