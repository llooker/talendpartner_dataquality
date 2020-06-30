connection: "sujan_snowflake_talend_dq"

# include all the views
include: "/views/**/*.view"

datagroup: data_quality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: data_quality_default_datagroup

# explore: dq_metadata {}
#

explore: bi_column_analysis {
  label: "Column Analysis"
}

explore: bi_comparison_analysis {
  label: "Comparison Analysis"
}

explore: bi_overview_analysis {
  label: "Overview Analysis"
}


explore: dq_metrics {
  label: "Data Quality Metrics"
  join: max_run_date {
    relationship: one_to_one
    type: cross
  }
}

# explore: max_run_date {}
#
# explore: tdq_analysis {}
#
# explore: tdq_analyzed_element {}
#
# explore: tdq_analyzed_set {}
#
# explore: tdq_calendar {}
#
# explore: tdq_day_time {}
#
# explore: tdq_group_statistics {}
#
# explore: tdq_indicator_definition {}
#
# explore: tdq_indicator_options {}
#
# explore: tdq_indicator_value {}
#
# explore: tdq_match_indvalue {}
#
# explore: tdq_matching_indvalue {}
#
# explore: tdq_migration {}
#
# explore: tdq_overview_indvalue {}
#
# explore: tdq_product {}
#
# explore: tdq_set_indvalue {}
#
# explore: tdq_table_analyzed_set {}
#
# explore: tdq_v_all_run_analysis {}
#
# explore: tdq_v_all_run_match_analysis {}
#
# explore: tdq_v_all_run_overview_analy {}

# Per talend team this level of detail is not required for this iteration
# explore: tdq_v_analysis {
#   join: tdq_v_ind_histo {
#     relationship: many_to_one
#     sql_on: ${tdq_v_analysis.rep_uuid} = ${tdq_v_ind_histo.rep_uuid}
#         AND ${tdq_v_analysis.an_uuid} = ${tdq_v_ind_histo.an_uuid};;
#   }
#   join: tdq_v_last_analysis {
#     relationship: many_to_one
#     sql_on: ${tdq_v_analysis.rep_uuid} = ${tdq_v_last_analysis.rep_uuid}
#       AND ${tdq_v_analysis.an_uuid} = ${tdq_v_last_analysis.an_uuid};;
#   }
# }

# explore: tdq_v_analyzed_element {}
#
# explore: tdq_v_ind_histo {}
#
# explore: tdq_v_indicator_definition {}
#
# explore: tdq_v_last_analysis {}
#
# explore: tdq_v_last_analysis_exec {}
#
# explore: tdq_v_last_analyzed_element {}
#
# explore: tdq_v_last_indicator_def {}
#
# explore: tdq_v_last_match_analysis_exec {}
#
# explore: tdq_v_last_overview_analy_exec {}
#
# explore: tdq_v_last_run_analysis {}
#
# explore: tdq_v_last_run_match_analysis {}
#
# explore: tdq_v_last_run_overview_analy {}
#
# explore: tdq_v_olap_simpl_indicator {}
#
# explore: tdq_v_olap_summary_indicator {}
#
# explore: tdq_v_olap_textstat_indicator {}
#
# explore: tdq_v_simple_indics {}
#
# explore: tdq_values {}
