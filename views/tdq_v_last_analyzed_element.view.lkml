view: tdq_v_last_analyzed_element {
  sql_table_name: "TALEND_DQ"."TDQ_V_LAST_ANALYZED_ELEMENT"
    ;;

  dimension: elt_ctx_group_id {
    type: string
    sql: ${TABLE}."ELT_CTX_GROUP_ID" ;;
  }

  dimension: elt_ctx_name {
    type: string
    sql: ${TABLE}."ELT_CTX_NAME" ;;
  }

  dimension: elt_uuid {
    type: string
    sql: ${TABLE}."ELT_UUID" ;;
  }

  dimension: last_version {
    type: number
    sql: ${TABLE}."LAST_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [elt_ctx_name]
  }
}
