view: tdq_indicator_definition {
  sql_table_name: "TALEND_DQ"."TDQ_INDICATOR_DEFINITION"
    ;;

  dimension_group: ind_begin {
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
    sql: ${TABLE}."IND_BEGIN_DATE" ;;
  }

  dimension: ind_categ_uuid {
    type: string
    sql: ${TABLE}."IND_CATEG_UUID" ;;
  }

  dimension: ind_category {
    type: string
    sql: ${TABLE}."IND_CATEGORY" ;;
  }

  dimension: ind_critical {
    type: number
    sql: ${TABLE}."IND_CRITICAL" ;;
  }

  dimension: ind_description {
    type: string
    sql: ${TABLE}."IND_DESCRIPTION" ;;
  }

  dimension_group: ind_end {
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
    sql: ${TABLE}."IND_END_DATE" ;;
  }

  dimension: ind_label {
    type: string
    sql: ${TABLE}."IND_LABEL" ;;
  }

  dimension: ind_pk {
    type: number
    sql: ${TABLE}."IND_PK" ;;
  }

  dimension: ind_purpose {
    type: string
    sql: ${TABLE}."IND_PURPOSE" ;;
  }

  dimension: ind_uuid {
    type: string
    sql: ${TABLE}."IND_UUID" ;;
  }

  dimension: ind_version {
    type: number
    sql: ${TABLE}."IND_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
