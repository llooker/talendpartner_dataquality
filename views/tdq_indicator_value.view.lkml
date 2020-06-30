view: tdq_indicator_value {
  sql_table_name: "TALEND_DQ"."TDQ_INDICATOR_VALUE"
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

  dimension: element_pk {
    type: number
    sql: ${TABLE}."ELEMENT_PK" ;;
  }

  dimension: ind_type {
    type: string
    sql: ${TABLE}."IND_TYPE" ;;
  }

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}."INDICATOR_PK" ;;
  }

  dimension_group: indv_date_value {
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
    sql: ${TABLE}."INDV_DATE_VALUE" ;;
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

  dimension_group: indv_idatethresh_hi {
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
    sql: ${TABLE}."INDV_IDATETHRESH_HI" ;;
  }

  dimension_group: indv_idatethresh_lo {
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
    sql: ${TABLE}."INDV_IDATETHRESH_LO" ;;
  }

  dimension: indv_idatethresh_ok {
    type: string
    sql: ${TABLE}."INDV_IDATETHRESH_OK" ;;
  }

  dimension: indv_int_value {
    type: number
    sql: ${TABLE}."INDV_INT_VALUE" ;;
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

  dimension: indv_ithresh_perc_hi {
    type: number
    sql: ${TABLE}."INDV_ITHRESH_PERC_HI" ;;
  }

  dimension: indv_ithresh_perc_low {
    type: number
    sql: ${TABLE}."INDV_ITHRESH_PERC_LOW" ;;
  }

  dimension: indv_ithresh_perc_ok {
    type: string
    sql: ${TABLE}."INDV_ITHRESH_PERC_OK" ;;
  }

  dimension: indv_pk {
    type: number
    sql: ${TABLE}."INDV_PK" ;;
  }

  dimension: indv_real_value {
    type: number
    sql: ${TABLE}."INDV_REAL_VALUE" ;;
  }

  dimension: indv_row_count {
    type: number
    sql: ${TABLE}."INDV_ROW_COUNT" ;;
  }

  dimension: indv_value_type_indicator {
    type: string
    sql: ${TABLE}."INDV_VALUE_TYPE_INDICATOR" ;;
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

  dimension: time_pk {
    type: number
    sql: ${TABLE}."TIME_PK" ;;
  }

  dimension: value_pk {
    type: number
    sql: ${TABLE}."VALUE_PK" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
