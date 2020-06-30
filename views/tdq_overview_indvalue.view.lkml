view: tdq_overview_indvalue {
  sql_table_name: "TALEND_DQ"."TDQ_OVERVIEW_INDVALUE"
    ;;

  dimension: an_duration {
    type: number
    sql: ${TABLE}."AN_DURATION" ;;
  }

  dimension: an_pk {
    type: number
    sql: ${TABLE}."AN_PK" ;;
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

  dimension: cal_pk {
    type: number
    sql: ${TABLE}."CAL_PK" ;;
  }

  dimension: elt_pk {
    type: number
    sql: ${TABLE}."ELT_PK" ;;
  }

  dimension: ind_pk {
    type: number
    sql: ${TABLE}."IND_PK" ;;
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

  dimension: time_pk {
    type: number
    sql: ${TABLE}."TIME_PK" ;;
  }

  dimension: tv_catalogcount {
    type: number
    sql: ${TABLE}."TV_CATALOGCOUNT" ;;
  }

  dimension: tv_indexcount {
    type: number
    sql: ${TABLE}."TV_INDEXCOUNT" ;;
  }

  dimension: tv_keycount {
    type: number
    sql: ${TABLE}."TV_KEYCOUNT" ;;
  }

  dimension: tv_name {
    type: string
    sql: ${TABLE}."TV_NAME" ;;
  }

  dimension: tv_pk {
    type: number
    sql: ${TABLE}."TV_PK" ;;
  }

  dimension: tv_rowcount {
    type: number
    sql: ${TABLE}."TV_ROWCOUNT" ;;
  }

  dimension: tv_schemacount {
    type: number
    sql: ${TABLE}."TV_SCHEMACOUNT" ;;
  }

  dimension: tv_table_filter {
    type: string
    sql: ${TABLE}."TV_TABLE_FILTER" ;;
  }

  dimension: tv_tablecount {
    type: number
    sql: ${TABLE}."TV_TABLECOUNT" ;;
  }

  dimension: tv_triggercount {
    type: number
    sql: ${TABLE}."TV_TRIGGERCOUNT" ;;
  }

  dimension: tv_view_filter {
    type: string
    sql: ${TABLE}."TV_VIEW_FILTER" ;;
  }

  dimension: tv_viewcount {
    type: number
    sql: ${TABLE}."TV_VIEWCOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [tv_name]
  }
}
