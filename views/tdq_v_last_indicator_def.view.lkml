view: tdq_v_last_indicator_def {
  sql_table_name: "TALEND_DQ"."TDQ_V_LAST_INDICATOR_DEF"
    ;;

  dimension: ind_uuid {
    type: string
    sql: ${TABLE}."IND_UUID" ;;
  }

  dimension: last_version {
    type: number
    sql: ${TABLE}."LAST_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
