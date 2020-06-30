view: tdq_analyzed_set {
  sql_table_name: "TALEND_DQ"."TDQ_ANALYZED_SET"
    ;;

  dimension: an_set_pk {
    type: number
    sql: ${TABLE}."AN_SET_PK" ;;
  }

  dimension: elt_a_pk {
    type: number
    sql: ${TABLE}."ELT_A_PK" ;;
  }

  dimension: elt_b_pk {
    type: number
    sql: ${TABLE}."ELT_B_PK" ;;
  }

  dimension: match_ind_pk {
    type: number
    sql: ${TABLE}."MATCH_IND_PK" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
