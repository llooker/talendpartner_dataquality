view: bi_overview_analysis {
  sql_table_name: "TALEND_DQ"."BI_OVERVIEW_ANALYSIS"
    ;;

  dimension: analysis_name {
    type: string
    sql: ${TABLE}."ANALYSIS_NAME" ;;
  }

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}."ANALYSIS_PK" ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}."CATALOG_NAME" ;;
  }

  dimension: database_connection_name {
    type: string
    sql: ${TABLE}."DATABASE_CONNECTION_NAME" ;;
  }

  dimension: number_of_indexes {
    type: number
    sql: ${TABLE}."NUMBER_OF_INDEXES" ;;
  }

  measure: total_number_of_indexes{
    type: sum
    sql: ${number_of_indexes} ;;
  }

  dimension: number_of_keys {
    type: number
    sql: ${TABLE}."NUMBER_OF_KEYS" ;;
  }

  measure: total_number_of_keys {
    type: sum
    sql: ${number_of_keys} ;;
  }

  dimension: number_of_rows {
    type: number
    sql: ${TABLE}."NUMBER_OF_ROWS" ;;
  }

  measure: total_number_of_rows {
    type: sum
    sql: ${number_of_rows} ;;
  }

  measure: avg_number_of_rows {
    type: average
    sql: ${number_of_rows} ;;
    value_format_name: decimal_0
  }

  dimension: number_of_triggers {
    type: number
    sql: ${TABLE}."NUMBER_OF_TRIGGERS" ;;
  }

  measure: total_number_of_tiggers {
    type: sum
    sql:  ${number_of_triggers} ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}."REPORT_NAME" ;;
  }

  dimension_group: report_run {
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
    sql: ${TABLE}."REPORT_RUN_TIME" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: table_or_view_name {
    type: string
    sql: ${TABLE}."TABLE_OR_VIEW_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      analysis_name,
      catalog_name,
      database_connection_name,
      report_name,
      schema_name,
      table_or_view_name
    ]
  }
}
