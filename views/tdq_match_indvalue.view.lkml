view: tdq_match_indvalue {
  sql_table_name: "TALEND_DQ"."TDQ_MATCH_INDVALUE"
    ;;

  dimension: an_duration {
    type: number
    sql: ${TABLE}."AN_DURATION" ;;
  }

  dimension_group: an_runtime {
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
    sql: ${TABLE}."AN_RUNTIME" ;;
  }

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}."ANALYSIS_PK" ;;
  }

  dimension: calendar_pk {
    type: number
    sql: ${TABLE}."CALENDAR_PK" ;;
  }

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}."INDICATOR_PK" ;;
  }

  dimension: indv_dthresh_hi {
    type: number
    sql: ${TABLE}."INDV_DTHRESH_HI" ;;
  }

  dimension: indv_dthresh_low {
    type: number
    sql: ${TABLE}."INDV_DTHRESH_LOW" ;;
  }

  dimension: indv_dthresh_ok {
    type: string
    sql: ${TABLE}."INDV_DTHRESH_OK" ;;
  }

  dimension: indv_exp_val {
    type: string
    sql: ${TABLE}."INDV_EXP_VAL" ;;
  }

  dimension: indv_exp_val_ok {
    type: string
    sql: ${TABLE}."INDV_EXP_VAL_OK" ;;
  }

  dimension: indv_ithresh_hi {
    type: number
    sql: ${TABLE}."INDV_ITHRESH_HI" ;;
  }

  dimension: indv_ithresh_low {
    type: number
    sql: ${TABLE}."INDV_ITHRESH_LOW" ;;
  }

  dimension: indv_ithresh_ok {
    type: string
    sql: ${TABLE}."INDV_ITHRESH_OK" ;;
  }

  dimension: indv_match_count {
    type: number
    sql: ${TABLE}."INDV_MATCH_COUNT" ;;
  }

  dimension: indv_match_percent {
    type: number
    sql: ${TABLE}."INDV_MATCH_PERCENT" ;;
  }

  dimension: indv_row_count {
    type: number
    sql: ${TABLE}."INDV_ROW_COUNT" ;;
  }

  dimension: m_pk {
    type: number
    sql: ${TABLE}."M_PK" ;;
  }

  dimension: option_pk {
    type: number
    sql: ${TABLE}."OPTION_PK" ;;
  }

  dimension: rep_duration {
    type: number
    sql: ${TABLE}."REP_DURATION" ;;
  }

  dimension_group: rep_runtime {
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
    sql: ${TABLE}."REP_RUNTIME" ;;
  }

  dimension: table_a_pk {
    type: number
    sql: ${TABLE}."TABLE_A_PK" ;;
  }

  dimension: table_b_pk {
    type: number
    sql: ${TABLE}."TABLE_B_PK" ;;
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
