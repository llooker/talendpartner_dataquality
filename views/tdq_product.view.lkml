view: tdq_product {
  sql_table_name: "TALEND_DQ"."TDQ_PRODUCT"
    ;;

  dimension: pr_display_version {
    type: string
    sql: ${TABLE}."PR_DISPLAY_VERSION" ;;
  }

  dimension: pr_name {
    type: string
    sql: ${TABLE}."PR_NAME" ;;
  }

  dimension: pr_version {
    type: string
    sql: ${TABLE}."PR_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [pr_name]
  }
}
