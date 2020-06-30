view: tdq_migration {
  sql_table_name: "TALEND_DQ"."TDQ_MIGRATION"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension_group: migration {
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
    sql: ${TABLE}."MIGRATION_DATE" ;;
  }

  dimension: migration_name {
    type: string
    sql: ${TABLE}."MIGRATION_NAME" ;;
  }

  dimension: previous_version {
    type: string
    sql: ${TABLE}."PREVIOUS_VERSION" ;;
  }

  dimension: update_version {
    type: string
    sql: ${TABLE}."UPDATE_VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, migration_name]
  }
}
