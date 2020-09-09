view: bi_dq_metrics {
  sql_table_name: "@{DQ_SCHEMA_NAME}"."BI_DQ_METRICS"
    ;;

  dimension: data_concept {
    type: string
    sql: ${TABLE}."DATA_CONCEPT" ;;
  }

  dimension: data_element {
    type: string
    sql: ${TABLE}."DATA_ELEMENT" ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}."DEPARTMENT_NAME" ;;
  }

  dimension: dq_dimension {
    type: string
    sql: ${TABLE}."DQ_DIMENSION" ;;
  }

  dimension: indicator_category {
    type: string
    sql: ${TABLE}."INDICATOR_CATEGORY" ;;
  }

  dimension: indicator_name {
    type: string
    sql: ${TABLE}."INDICATOR_NAME" ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}."REPORT_NAME" ;;
  }

  dimension: rows_failed {
    type: number
    sql: ${TABLE}."ROWS_FAILED" ;;
  }

  dimension: rows_passed {
    type: number
    sql: ${TABLE}."ROWS_PASSED" ;;
  }

  dimension: rows_processed {
    type: number
    sql: ${TABLE}."ROWS_PROCESSED" ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}."RULE_NAME" ;;
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

  dimension: run_date_filter {
    type: string
    sql: ${run_time} ;;
  }

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
    drill_fields: [detail*]
  }

  measure: total_rows_succeeded {
    type: sum
    sql: ${rows_succeeded} ;;
    drill_fields: [detail*]
  }

  measure: total_rows_failed {
    type: sum
    sql: ${rows_failed} ;;
    drill_fields: [detail*]
  }

  measure: dq_score {
    label: "Data Quality Score"
    type: number
    sql: ${total_rows_succeeded} / NULLIF(${total_rows_processed}, 0) * 100 ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
    #filters: [is_max_time: "Yes"]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      run_time,
      report_name,
      data_concept,
      data_element,
      department_name,
      dq_dimension,
      dq_score,
      indicator_category,
      indicator_name,
      rows_processed,
      rows_passed,
      rows_failed,
      rule_name
    ]
  }

}
