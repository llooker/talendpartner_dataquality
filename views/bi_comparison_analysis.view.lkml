view: bi_comparison_analysis {
  sql_table_name: "@{DQ_SCHEMA_NAME}"."BI_COMPARISON_ANALYSIS"
    ;;

  dimension: analysis_name {
    type: string
    sql: ${TABLE}."ANALYSIS_NAME" ;;
  }

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}."ANALYSIS_PK" ;;
  }

  dimension: indicator_category {
    type: string
    sql: ${TABLE}."INDICATOR_CATEGORY" ;;
  }

  dimension: indicator_description {
    type: string
    sql: ${TABLE}."INDICATOR_DESCRIPTION" ;;
  }

  dimension: indicator_name {
    type: string
    sql: ${TABLE}."INDICATOR_NAME" ;;
  }

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}."INDICATOR_PK" ;;
  }

  dimension: match_percentage {
    type: number
    sql: ${TABLE}."MATCH_PERCENTAGE" ;;
    value_format_name: decimal_2
  }

  measure: total_match_precentage {
    type: number
    sql: ${total_number_of_rows_matched}/${total_number_of_rows}*100 ;;
    value_format_name: decimal_2
  }

  dimension: number_of_rows {
    type: number
    sql: ${TABLE}."NUMBER_OF_ROWS" ;;
  }

  measure: total_number_of_rows{
    type: sum
    sql: ${number_of_rows} ;;
  }

  dimension: number_rows_matched {
    type: number
    sql: ${TABLE}."NUMBER_ROWS_MATCHED" ;;
  }

  measure: total_number_of_rows_matched {
    type: sum
    sql: ${number_rows_matched} ;;
  }


  dimension: report_name {
    type: string
    sql: ${TABLE}."REPORT_NAME" ;;
  }

  dimension_group: report_runtime {
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
    sql: ${TABLE}."REPORT_RUNTIME" ;;
  }

  dimension: table_a_pk {
    type: number
    sql: ${TABLE}."TABLE_A_PK" ;;
  }

  dimension: table_b_pk {
    type: number
    sql: ${TABLE}."TABLE_B_PK" ;;
  }

  dimension: table_name_a {
    type: string
    sql: ${TABLE}."TABLE_NAME_A" ;;
  }

  dimension: table_name_b {
    type: string
    sql: ${TABLE}."TABLE_NAME_B" ;;
  }

  measure: count {
    type: count
    drill_fields: [report_name, indicator_name, analysis_name]
  }
}
