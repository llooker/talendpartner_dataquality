view: dq_metadata {
  sql_table_name: "TALEND_DQ"."DQ_METADATA"
    ;;

  dimension: dq_dimension {
    type: string
    sql: ${TABLE}."DQ_DIMENSION" ;;
  }

  dimension: is_fail_count {
    type: yesno
    sql: ${TABLE}."IS_FAIL_COUNT" ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}."RULE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_name]
  }
}
