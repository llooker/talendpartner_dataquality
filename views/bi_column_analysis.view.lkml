view: bi_column_analysis {
  sql_table_name: "@{schema_name}"."BI_COLUMN_ANALYSIS"
    ;;

  dimension: an_pk {
    type: number
    hidden: yes
    sql: ${TABLE}."AN_PK" ;;
  }

  dimension: analysis_name {
    type: string
    sql: ${TABLE}."ANALYSIS_NAME" ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }

  dimension: connection_name {
    type: string
    sql: ${TABLE}."CONNECTION_NAME" ;;
  }

  dimension: indicator_category {
    type: string
    sql: ${TABLE}."INDICATOR_CATEGORY" ;;
  }

  dimension: indicator_name {
    type: string
    sql: ${TABLE}."INDICATOR_NAME" ;;
  }

  dimension: indicator_value {
    type: number
    sql: ${TABLE}."INDICATOR_VALUE" ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}."REPORT_NAME" ;;
  }

  dimension: rows_processed {
    type: number
    sql: ${TABLE}."ROWS_PROCESSED" ;;
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

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_rows_processed {
    type: sum
    sql: ${rows_processed} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      connection_name,
      table_name,
      analysis_name,
      report_name,
      column_name,
      indicator_name
    ]
  }
}
