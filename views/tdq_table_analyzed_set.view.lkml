view: tdq_table_analyzed_set {
  sql_table_name: "TALEND_DQ"."TDQ_TABLE_ANALYZED_SET"
    ;;

  dimension: an_pk {
    type: number
    sql: ${TABLE}."AN_PK" ;;
  }

  dimension: an_set_pk {
    type: number
    sql: ${TABLE}."AN_SET_PK" ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}."ELT_PK" ;;
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
