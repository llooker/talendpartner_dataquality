view: tdq_v_all_run_overview_analy {
  sql_table_name: "TALEND_DQ"."TDQ_V_ALL_RUN_OVERVIEW_ANALY"
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
