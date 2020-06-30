view: tdq_day_time {
  sql_table_name: "TALEND_DQ"."TDQ_DAY_TIME"
    ;;

  dimension: time_hour {
    type: number
    sql: ${TABLE}."TIME_HOUR" ;;
  }

  dimension: time_label {
    type: string
    sql: ${TABLE}."TIME_LABEL" ;;
  }

  dimension: time_minute {
    type: number
    sql: ${TABLE}."TIME_MINUTE" ;;
  }

  dimension: time_pk {
    type: number
    sql: ${TABLE}."TIME_PK" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
