connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"

datagroup: data_quality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: data_quality_default_datagroup

explore: bi_column_analysis {
  label: "Column Analysis"
}

explore: bi_comparison_analysis {
  label: "Comparison Analysis"
}

explore: bi_overview_analysis {
  label: "Overview Analysis"
}

explore: bi_dq_metrics {
  label: "Data Quality Metrics"
  view_label: "Data Quality"
  join: max_run_date {
    relationship: one_to_one
    type: cross
  }
}
