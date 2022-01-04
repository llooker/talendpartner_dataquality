view: max_run_date {
  derived_table: {
    sql: SELECT max(run_time) FROM "TDQ003"."DQ_METRICS" LIMIT 10
      ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }

  dimension_group: maxrun_time {
    type: time
    sql: ${TABLE}."MAX(RUN_TIME)" ;;
    view_label: "Dq Metrics"
  }

#   set: detail {
#     fields: [maxrun_time_time]
#   }
}
