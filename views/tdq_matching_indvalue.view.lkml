view: tdq_matching_indvalue {
  sql_table_name: "TALEND_DQ"."TDQ_MATCHING_INDVALUE"
    ;;

  dimension: an_duration {
    type: number
    sql: ${TABLE}."AN_DURATION" ;;
  }

  dimension_group: an_runtime {
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
    sql: ${TABLE}."AN_RUNTIME" ;;
  }

  dimension: analysis_pk {
    type: number
    sql: ${TABLE}."ANALYSIS_PK" ;;
  }

  dimension: calendar_pk {
    type: number
    sql: ${TABLE}."CALENDAR_PK" ;;
  }

  dimension: m_match_count {
    type: number
    sql: ${TABLE}."M_MATCH_COUNT" ;;
  }

  dimension: m_pk {
    type: number
    sql: ${TABLE}."M_PK" ;;
  }

  dimension: m_row_count {
    type: number
    sql: ${TABLE}."M_ROW_COUNT" ;;
  }

  dimension: m_suspect_count {
    type: number
    sql: ${TABLE}."M_SUSPECT_COUNT" ;;
  }

  dimension: m_unique_count {
    type: number
    sql: ${TABLE}."M_UNIQUE_COUNT" ;;
  }

  dimension: rep_duration {
    type: number
    sql: ${TABLE}."REP_DURATION" ;;
  }

  dimension_group: rep_runtime {
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
    sql: ${TABLE}."REP_RUNTIME" ;;
  }

  dimension: table_pk {
    type: number
    sql: ${TABLE}."TABLE_PK" ;;
  }

  dimension: time_pk {
    type: number
    sql: ${TABLE}."TIME_PK" ;;
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
