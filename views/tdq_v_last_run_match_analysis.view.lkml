view: tdq_v_last_run_match_analysis {
  sql_table_name: "TALEND_DQ"."TDQ_V_LAST_RUN_MATCH_ANALYSIS"
    ;;

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

  dimension: cal_pk {
    type: number
    sql: ${TABLE}."CAL_PK" ;;
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
