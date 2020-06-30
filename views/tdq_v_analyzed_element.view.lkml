view: tdq_v_analyzed_element {
  sql_table_name: "TALEND_DQ"."TDQ_V_ANALYZED_ELEMENT"
    ;;

  dimension_group: elt_begin {
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
    sql: ${TABLE}."ELT_BEGIN_DATE" ;;
  }

  dimension: elt_catalog_name {
    type: string
    sql: ${TABLE}."ELT_CATALOG_NAME" ;;
  }

  dimension: elt_column_name {
    type: string
    sql: ${TABLE}."ELT_COLUMN_NAME" ;;
  }

  dimension: elt_connection_name {
    type: string
    sql: ${TABLE}."ELT_CONNECTION_NAME" ;;
  }

  dimension: elt_connection_uuid {
    type: string
    sql: ${TABLE}."ELT_CONNECTION_UUID" ;;
  }

  dimension: elt_ctx_group_id {
    type: string
    sql: ${TABLE}."ELT_CTX_GROUP_ID" ;;
  }

  dimension: elt_ctx_group_name {
    type: string
    sql: ${TABLE}."ELT_CTX_GROUP_NAME" ;;
  }

  dimension: elt_ctx_name {
    type: string
    sql: ${TABLE}."ELT_CTX_NAME" ;;
  }

  dimension_group: elt_end {
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
    sql: ${TABLE}."ELT_END_DATE" ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}."ELT_PK" ;;
  }

  dimension: elt_project_name {
    type: string
    sql: ${TABLE}."ELT_PROJECT_NAME" ;;
  }

  dimension: elt_schema_name {
    type: string
    sql: ${TABLE}."ELT_SCHEMA_NAME" ;;
  }

  dimension: elt_table_name {
    type: string
    sql: ${TABLE}."ELT_TABLE_NAME" ;;
  }

  dimension: elt_uuid {
    type: string
    sql: ${TABLE}."ELT_UUID" ;;
  }

  dimension: elt_version {
    type: number
    sql: ${TABLE}."ELT_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      elt_ctx_group_name,
      elt_connection_name,
      elt_schema_name,
      elt_table_name,
      elt_catalog_name,
      elt_project_name,
      elt_ctx_name,
      elt_column_name
    ]
  }
}
