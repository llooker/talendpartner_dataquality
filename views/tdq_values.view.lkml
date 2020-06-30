view: tdq_values {
  sql_table_name: "TALEND_DQ"."TDQ_VALUES"
    ;;

  dimension: val_pk {
    type: number
    sql: ${TABLE}."VAL_PK" ;;
  }

  dimension: val_string {
    type: string
    sql: ${TABLE}."VAL_STRING" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
