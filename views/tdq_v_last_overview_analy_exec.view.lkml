view: tdq_v_last_overview_analy_exec {
  sql_table_name: "TALEND_DQ"."TDQ_V_LAST_OVERVIEW_ANALY_EXEC"
    ;;

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}."ANALYSIS_PK" ;;
  }

  dimension_group: last_runtime {
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
    sql: ${TABLE}."LAST_RUNTIME" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
