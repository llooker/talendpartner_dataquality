view: tdq_v_olap_summary_indicator {
  sql_table_name: "TALEND_DQ"."TDQ_V_OLAP_SUMMARY_INDICATOR"
    ;;

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

  dimension: indicator_pk {
    type: number
    sql: ${TABLE}."INDICATOR_PK" ;;
  }

  dimension: indv_dthresh_ok {
    type: number
    sql: ${TABLE}."INDV_DTHRESH_OK" ;;
  }

  dimension: indv_int_value {
    type: number
    sql: ${TABLE}."INDV_INT_VALUE" ;;
  }

  dimension: indv_ithresh_ok {
    type: number
    sql: ${TABLE}."INDV_ITHRESH_OK" ;;
  }

  dimension: indv_ithresh_perc_ok {
    type: number
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
