view: tdq_set_indvalue {
  sql_table_name: "TALEND_DQ"."TDQ_SET_INDVALUE"
    ;;

  dimension: an_duration {
    type: number
    sql: ${TABLE}."AN_DURATION" ;;
  }

  dimension: an_pk {
    type: number
    sql: ${TABLE}."AN_PK" ;;
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

  dimension: cal_pk {
    type: number
    sql: ${TABLE}."CAL_PK" ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}."ELT_PK" ;;
  }

  dimension: ind_parent_pk {
    type: number
    sql: ${TABLE}."IND_PARENT_PK" ;;
  }

  dimension: ind_pk {
    type: number
    sql: ${TABLE}."IND_PK" ;;
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

  dimension: set_indv_pk {
    type: number
    sql: ${TABLE}."SET_INDV_PK" ;;
  }

  dimension: siv_int_value {
    type: number
    sql: ${TABLE}."SIV_INT_VALUE" ;;
  }

  dimension: siv_row_count {
    type: number
    sql: ${TABLE}."SIV_ROW_COUNT" ;;
  }

  dimension: siv_thresh_hi {
    type: number
    sql: ${TABLE}."SIV_THRESH_HI" ;;
  }

  dimension: siv_thresh_low {
    type: number
    sql: ${TABLE}."SIV_THRESH_LOW" ;;
  }

  dimension: siv_thresh_ok {
    type: string
    sql: ${TABLE}."SIV_THRESH_OK" ;;
  }

  dimension: siv_thresh_perc_hi {
    type: number
    sql: ${TABLE}."SIV_THRESH_PERC_HI" ;;
  }

  dimension: siv_thresh_perc_low {
    type: number
    sql: ${TABLE}."SIV_THRESH_PERC_LOW" ;;
  }

  dimension: siv_thresh_perc_ok {
    type: string
    sql: ${TABLE}."SIV_THRESH_PERC_OK" ;;
  }

  dimension: table_pk {
    type: number
    sql: ${TABLE}."TABLE_PK" ;;
  }

  dimension: time_pk {
    type: number
    sql: ${TABLE}."TIME_PK" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
