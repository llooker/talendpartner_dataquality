view: tdq_analysis {
  sql_table_name: "TALEND_DQ"."TDQ_ANALYSIS"
    ;;

  dimension: an_author {
    type: string
    sql: ${TABLE}."AN_AUTHOR" ;;
  }

  dimension_group: an_begin {
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
    sql: ${TABLE}."AN_BEGIN_DATE" ;;
  }

  dimension_group: an_creation {
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
    sql: ${TABLE}."AN_CREATION_DATE" ;;
  }

  dimension: an_data_filter {
    type: string
    sql: ${TABLE}."AN_DATA_FILTER" ;;
  }

  dimension: an_description {
    type: string
    sql: ${TABLE}."AN_DESCRIPTION" ;;
  }

  dimension_group: an_end {
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
    sql: ${TABLE}."AN_END_DATE" ;;
  }

  dimension: an_label {
    type: string
    sql: ${TABLE}."AN_LABEL" ;;
  }

  dimension: an_pk {
    type: number
    sql: ${TABLE}."AN_PK" ;;
  }

  dimension: an_purpose {
    type: string
    sql: ${TABLE}."AN_PURPOSE" ;;
  }

  dimension: an_status {
    type: string
    sql: ${TABLE}."AN_STATUS" ;;
  }

  dimension: an_type {
    type: string
    sql: ${TABLE}."AN_TYPE" ;;
  }

  dimension: an_uuid {
    type: string
    sql: ${TABLE}."AN_UUID" ;;
  }

  dimension: an_version {
    type: number
    sql: ${TABLE}."AN_VERSION" ;;
  }

  dimension: rep_author {
    type: string
    sql: ${TABLE}."REP_AUTHOR" ;;
  }

  dimension_group: rep_creation {
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
    sql: ${TABLE}."REP_CREATION_DATE" ;;
  }

  dimension: rep_description {
    type: string
    sql: ${TABLE}."REP_DESCRIPTION" ;;
  }

  dimension: rep_label {
    label: "rule_execution_name"
    type: string
    sql: ${TABLE}."REP_LABEL" ;;
  }

  dimension: rep_purpose {
    type: string
    sql: ${TABLE}."REP_PURPOSE" ;;
  }

  dimension: rep_status {
    type: string
    sql: ${TABLE}."REP_STATUS" ;;
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
