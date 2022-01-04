view: bi_dq_metrics {
  sql_table_name: "TDQ003"."BI_DQ_METRICS"
    ;;

  dimension: data_concept {
    type: string
    sql: ${TABLE}."DATA_CONCEPT" ;;
  }

  dimension: data_element {
    type: string
    sql: ${TABLE}."DATA_ELEMENT" ;;
  }

  dimension: dq_dimension {
    type: string
    sql: ${TABLE}."DQ_DIMENSION" ;;
  }

  dimension: elt_connection_name {
    type: string
    sql: ${TABLE}."ELT_CONNECTION_NAME" ;;
  }

  dimension: indicator_count {
    type: number
    sql: ${TABLE}."INDICATOR_COUNT" ;;
  }

  dimension: indicator_name {
    type: string
    sql: ${TABLE}."INDICATOR_NAME" ;;
  }

  dimension: rows_processed {
    type: number
    sql: ${TABLE}."ROWS_PROCESSED" ;;
  }

  dimension: rule_execution_name {
    type: string
    sql: ${TABLE}."RULE_EXECUTION_NAME" ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}."RULE_NAME" ;;
  }

  dimension: rule_pk {
    type: number
    sql: ${TABLE}."RULE_PK" ;;
  }

  dimension_group: run {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RUN_TIME" ;;
  }

  dimension: rows_failed {
    type: number
    sql: ${TABLE}."TOTAL_ROWS_FAILED" ;;
  }

  ######## Custom Looker Fields
#   dimension: max_run_date {
#     type: date_raw
#     sql: (SELECT MAX(run_time) FROM "TALEND_DQ"."DQ_METRICS") ;;
#   }

  dimension: is_max_time {
    type: yesno
    sql: ${run_time} = ${max_run_date.maxrun_time_time} ;;
  }
  dimension: rows_succeeded {
    type: number
    sql: ${rows_processed} - ${rows_failed} ;;
  }

  measure: total_rows_processed {
    type: sum
    sql:  ${rows_processed} ;;
  }

  measure: total_rows_succeeded {
    type: sum
    sql: ${rows_succeeded} ;;
  }

  measure: total_rows_failed {
    type: sum
    sql: ${rows_failed} ;;
  }


  measure: last_dq_score {
    type: number
    sql: ${total_rows_succeeded} / NULLIF(${total_rows_processed}, 0) * 100 ;;
    value_format_name: decimal_0
    #filters: [is_max_time: "Yes"]
  }


  measure: count {
    type: count
    drill_fields: [indicator_name, rule_execution_name, elt_connection_name, rule_name]
  }
}
