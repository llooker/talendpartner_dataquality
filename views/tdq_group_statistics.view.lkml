view: tdq_group_statistics {
  sql_table_name: "TALEND_DQ"."TDQ_GROUP_STATISTICS"
    ;;

  dimension: g_group_count {
    type: number
    sql: ${TABLE}."G_GROUP_COUNT" ;;
  }

  dimension: g_pk {
    type: number
    sql: ${TABLE}."G_PK" ;;
  }

  dimension: g_record_count {
    type: number
    sql: ${TABLE}."G_RECORD_COUNT" ;;
  }

  dimension: g_size {
    type: number
    sql: ${TABLE}."G_SIZE" ;;
  }

  dimension: m_pk {
    type: number
    sql: ${TABLE}."M_PK" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
