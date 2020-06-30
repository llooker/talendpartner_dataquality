view: tdq_calendar {
  sql_table_name: "TALEND_DQ"."TDQ_CALENDAR"
    ;;

  dimension_group: cal_date {
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

  dimension: cal_day_in_month {
    type: number
    sql: ${TABLE}."CAL_DAY_IN_MONTH" ;;
  }

  dimension: cal_day_in_year {
    type: number
    sql: ${TABLE}."CAL_DAY_IN_YEAR" ;;
  }

  dimension: cal_day_name {
    type: string
    sql: ${TABLE}."CAL_DAY_NAME" ;;
  }

  dimension: cal_day_off {
    type: string
    sql: ${TABLE}."CAL_DAY_OFF" ;;
  }

  dimension: cal_last_month_day {
    type: number
    sql: ${TABLE}."CAL_LAST_MONTH_DAY" ;;
  }

  dimension: cal_last_week_day {
    type: number
    sql: ${TABLE}."CAL_LAST_WEEK_DAY" ;;
  }

  dimension: cal_month {
    type: number
    sql: ${TABLE}."CAL_MONTH" ;;
  }

  dimension: cal_month_name {
    type: string
    sql: ${TABLE}."CAL_MONTH_NAME" ;;
  }

  dimension: cal_month_period {
    type: string
    sql: ${TABLE}."CAL_MONTH_PERIOD" ;;
  }

  dimension: cal_pk {
    type: number
    sql: ${TABLE}."CAL_PK" ;;
  }

  dimension: cal_quarter {
    type: number
    sql: ${TABLE}."CAL_QUARTER" ;;
  }

  dimension: cal_quarter_period {
    type: string
    sql: ${TABLE}."CAL_QUARTER_PERIOD" ;;
  }

  dimension: cal_semester {
    type: number
    sql: ${TABLE}."CAL_SEMESTER" ;;
  }

  dimension: cal_semester_period {
    type: string
    sql: ${TABLE}."CAL_SEMESTER_PERIOD" ;;
  }

  dimension: cal_spec_day_label {
    type: string
    sql: ${TABLE}."CAL_SPEC_DAY_LABEL" ;;
  }

  dimension: cal_special_day {
    type: string
    sql: ${TABLE}."CAL_SPECIAL_DAY" ;;
  }

  dimension: cal_week_day {
    type: number
    sql: ${TABLE}."CAL_WEEK_DAY" ;;
  }

  dimension: cal_week_num {
    type: number
    sql: ${TABLE}."CAL_WEEK_NUM" ;;
  }

  dimension: cal_week_period {
    type: string
    sql: ${TABLE}."CAL_WEEK_PERIOD" ;;
  }

  dimension: cal_year {
    type: number
    sql: ${TABLE}."CAL_YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [cal_month_name, cal_day_name]
  }
}
