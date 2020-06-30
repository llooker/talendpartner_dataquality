view: tdq_indicator_options {
  sql_table_name: "TALEND_DQ"."TDQ_INDICATOR_OPTIONS"
    ;;

  dimension: ino_case_sensitive {
    type: string
    sql: ${TABLE}."INO_CASE_SENSITIVE" ;;
  }

  dimension: ino_count_blanks {
    type: string
    sql: ${TABLE}."INO_COUNT_BLANKS" ;;
  }

  dimension: ino_count_nulls {
    type: string
    sql: ${TABLE}."INO_COUNT_NULLS" ;;
  }

  dimension: ino_pk {
    type: number
    sql: ${TABLE}."INO_PK" ;;
  }

  dimension: ino_regexp {
    type: string
    sql: ${TABLE}."INO_REGEXP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
