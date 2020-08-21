## The database views to be deployed in the datamart.

<br>
#### bi_dq_metrics.sql


```
CREATE VIEW "TALEND_DQ".bi_dq_metrics AS
select
  *,
  rows_processed-rows_failed as rows_passed
from (
  select report_name as report_name,
  run_time ,
  connection_name as department_name,
  analysis_name as rule_name ,
  table_name as data_concept ,
  column_name as data_element ,
  indicator_category,
  indicator_name ,
    case
      when charindex ('Validity',analysis_name) > 0 then 'Validity'
      when charindex ('Timeliness',analysis_name) > 0 then 'Timeliness'
      when charindex ('Accuracy',analysis_name) > 0 then 'Accuracy'
      when charindex ('Uniqueness',analysis_name) > 0 then 'Uniqueness'
    when charindex ('Completeness',analysis_name) > 0 then 'Completeness'
    when charindex ('Consistency',analysis_name) > 0 then 'Consistency'
      else 'Other'
    end as dq_dimension,
  rows_processed ,
    CASE
      WHEN indicator_category in ('Simple Statistics') = true THEN indicator_value
        when indicator_category in ('Pattern Matching') = true  then rows_processed - indicator_value
        ELSE indicator_value
    END AS rows_failed
  from bi_column_analysis
) as dq_metrics_only
where dq_dimension <> 'Other';
```
<br>
#### bi_overview_analysis.sql

```
CREATE VIEW "TALEND_DQ".bi_overview_analysis AS
select tva.rep_label as report_name,
  oi.rep_runtime as run_time,
  tva.an_label as analysis_name,
  tae.elt_connection_name database_connection_name,
  tae.elt_catalog_name catalog_name,
  tae.elt_schema_name schema_name ,
  oi.tv_name table_or_view_name,
  oi.tv_rowcount number_of_rows,
  oi.tv_keycount number_of_keys,
  oi.tv_indexcount number_of_indexes,
  oi.tv_triggercount number_of_triggers
from tdq_v_last_overview_analy_exec lo,
  tdq_overview_indvalue oi,
  tdq_analyzed_element tae ,
  tdq_v_analysis tva
where lo.analysis_pk = oi.an_pk
  and oi.elt_pk = tae.elt_pk
  and oi.tv_name <> 'NULL TALEND'
  and lo.analysis_pk = tva.an_pk
;
```
<br>
#### bi_comparison_analysis.sql

```
CREATE VIEW "TALEND_DQ".bi_comparison_analysis AS
select a.rep_label as report_name,
  mi.an_runtime as run_time,
  a.an_label as analysis_name,
  tid.ind_label as indicator_name,
  tid.ind_category as indicator_category,
  tid.ind_description as indicator_description,
  mi.table_a_pk,
  table_a.elt_table_name table_name_a,
  mi.table_b_pk,
  table_b.elt_table_name table_name_b,
  mi.indv_row_count as number_of_rows,
  mi.indv_match_count as number_rows_matched,
  (mi.indv_match_percent*100) as match_percentage
from  TDQ_V_LAST_MATCH_ANALYSIS_EXEC ma,
  tdq_v_analysis a,
  tdq_match_indvalue mi,
  tdq_analyzed_element table_a,
  tdq_analyzed_element table_b,
  tdq_indicator_definition tid
where ma.analysis_pk = a.an_pk
and ma.analysis_pk  = mi.analysis_pk
and mi.table_a_pk = table_a.elt_pk
and mi.table_b_pk = table_b.elt_pk
and mi.indicator_pk = tid.ind_pk ;
```
<br>
#### bi_column_analysis.sql

```
CREATE VIEW "TALEND_DQ".bi_column_analysis AS
SELECT a.rep_label AS report_name,
    ih.run_time,
    a.an_label AS analysis_name,
    ih.elt_connection_name as connection_name,
    ih.elt_table_name AS table_name,
    ih.elt_column_name AS column_name,
    ih.ind_category as indicator_category,
    ih.ind_label AS indicator_name,
    ih.indv_row_count AS rows_processed,
    ih.indv_int_value AS indicator_value
   FROM tdq_v_analysis a,
    tdq_v_ind_histo ih
  WHERE a.rep_uuid::text = ih.rep_uuid::text AND a.an_uuid::text = ih.an_uuid::text
  ORDER BY a.rep_label, ih.run_time, a.an_pk;
```
