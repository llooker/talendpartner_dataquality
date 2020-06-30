view: tdq_v_ind_histo {
  sql_table_name: "TALEND_DQ"."TDQ_V_IND_HISTO"
    ;;

  dimension: an_author {
    type: string
    sql: ${TABLE}."AN_AUTHOR" ;;
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

  dimension: an_label {
    type: string
    sql: ${TABLE}."AN_LABEL" ;;
  }

  dimension: an_uuid {
    type: string
    sql: ${TABLE}."AN_UUID" ;;
  }

  dimension_group: cal {
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
    sql: ${TABLE}."CAL_DATE" ;;
  }

  dimension: elt_catalog_name {
    type: string
    sql: ${TABLE}."ELT_CATALOG_NAME" ;;
  }

  dimension: elt_column_name {
    label: "data_element"
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

  dimension: elt_schema_name {
    type: string
    sql: ${TABLE}."ELT_SCHEMA_NAME" ;;
  }

  dimension: elt_table_name {
    label: "data_concept"
    type: string
    sql: ${TABLE}."ELT_TABLE_NAME" ;;
  }

  dimension: elt_uuid {
    type: string
    sql: ${TABLE}."ELT_UUID" ;;
  }

  dimension: ind_categ_uuid {
    type: string
    sql: ${TABLE}."IND_CATEG_UUID" ;;
  }

  dimension: ind_category {
    type: string
    sql: ${TABLE}."IND_CATEGORY" ;;
  }

  dimension: ind_label {
    label: "indicator_name"
    type: string
    sql: ${TABLE}."IND_LABEL" ;;
  }

  dimension: ind_uuid {
    type: string
    sql: ${TABLE}."IND_UUID" ;;
  }

  dimension: indv_int_value {
    label: "indicator_count"
    type: number
    sql: ${TABLE}."INDV_INT_VALUE" ;;
  }

  dimension: indv_row_count {
    label: "rows_processed"
    type: number
    sql: ${TABLE}."INDV_ROW_COUNT" ;;
  }

  dimension: ino_regexp {
    type: string
    sql: ${TABLE}."INO_REGEXP" ;;
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

  dimension: rep_label {
    type: string
    sql: ${TABLE}."REP_LABEL" ;;
  }

  dimension: rep_status {
    type: string
    sql: ${TABLE}."REP_STATUS" ;;
  }

  dimension: rep_uuid {
    type: string
    sql: ${TABLE}."REP_UUID" ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}."RUN_TIME" ;;
  }

  dimension: time_hour {
    type: number
    sql: ${TABLE}."TIME_HOUR" ;;
  }

  dimension: time_minute {
    type: number
    sql: ${TABLE}."TIME_MINUTE" ;;
  }

  ##### Custom Measures and Dimensions

  dimension: dummy_pk {
    type: string
    primary_key: yes
    sql: ${an_uuid} || ' ' || ${time_hour} || ' ' || ${time_minute} ;;
  }

  dimension: rows_failed {
    type: number
    sql: CASE WHEN ${ind_category} in ('Simple Statistics') = true
                THEN ${indv_int_value}
              WHEN ${ind_category} in ('Pattern Matching') = true
                THEN ${indv_row_count} - ${indv_int_value}
              ELSE ${indv_int_value}
          END
    ;;
  }

  dimension: dq_dimension {
    type:  string
    sql:   CASE WHEN ${ind_label} in ('Regular Expression Matching') = true
                  THEN 'Validity'
                WHEN ${ind_label} in ('Duplicate Count') = true
                  THEN 'Uniqueness'
                WHEN ${ind_label} in ('Blank Count') = true
                  THEN 'Completeness'
                WHEN ${ind_label} in ('Null Count') = true
                  THEN 'Validity'
                ELSE 'Other'
            END
    ;;
  }

  dimension: rows_succeeded {
    type: number
    sql: ${indv_row_count} - ${rows_failed} ;;
  }

  measure: total_rows_processed {
    type: sum
    sql:  ${indv_row_count} ;;
  }

  measure: total_rows_succeeded {
    type: sum
    sql: ${rows_succeeded} ;;
  }

  measure: dq_score {
    type: number
    sql: ${total_rows_succeeded} / ${total_rows_processed} ;;
    value_format_name: percent_2
  }

  measure: count {
    type: count
    drill_fields: [elt_table_name, elt_column_name, elt_connection_name, elt_catalog_name, elt_schema_name]
  }
}
