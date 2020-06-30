view: tdq_v_last_analysis {
  sql_table_name: "TALEND_DQ"."TDQ_V_LAST_ANALYSIS"
    ;;

  dimension: an_uuid {
    type: string
    sql: ${TABLE}."AN_UUID" ;;
  }

  dimension: last_version {
    type: number
    sql: ${TABLE}."LAST_VERSION" ;;
  }

  dimension: rep_uuid {
    type: string
    sql: ${TABLE}."REP_UUID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
