- dashboard: data_quality
  title: Data Quality
  layout: newspaper
  elements:
  - title: Data Quality Score
    name: Data Quality Score
    model: data_quality
    explore: bi_dq_metrics
    type: single_value
    fields: [bi_dq_metrics.dq_score]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Rows Processed
    name: Rows Processed
    model: data_quality
    explore: bi_dq_metrics
    type: single_value
    fields: [bi_dq_metrics.total_rows_processed]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Rows Succeeded
    name: Rows Succeeded
    model: data_quality
    explore: bi_dq_metrics
    type: single_value
    fields: [bi_dq_metrics.total_rows_succeeded]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Rows Failed
    name: Rows Failed
    model: data_quality
    explore: bi_dq_metrics
    type: single_value
    fields: [bi_dq_metrics.total_rows_failed]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Accuracy
    name: Accuracy
    model: data_quality
    explore: bi_dq_metrics
    type: liquid_fill_gauge
    fields: [bi_dq_metrics.dq_score]
    filters:
      bi_dq_metrics.dq_dimension: Accuracy
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    series_types: {}
    defaults_version: 0
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 3
    col: 0
    width: 4
    height: 6
  - title: Completeness
    name: Completeness
    model: data_quality
    explore: bi_dq_metrics
    type: liquid_fill_gauge
    fields: [bi_dq_metrics.dq_score]
    filters:
      bi_dq_metrics.dq_dimension: Completeness
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: false
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 3
    col: 8
    width: 4
    height: 6
  - title: Consistency
    name: Consistency
    model: data_quality
    explore: bi_dq_metrics
    type: liquid_fill_gauge
    fields: [bi_dq_metrics.dq_score]
    filters:
      bi_dq_metrics.dq_dimension: Consistency
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: false
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 3
    col: 4
    width: 4
    height: 6
  - title: Timeliness
    name: Timeliness
    model: data_quality
    explore: bi_dq_metrics
    type: liquid_fill_gauge
    fields: [bi_dq_metrics.dq_score]
    filters:
      bi_dq_metrics.dq_dimension: Timeliness
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: false
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 3
    col: 12
    width: 4
    height: 6
  - title: Uniqueness
    name: Uniqueness
    model: data_quality
    explore: bi_dq_metrics
    type: liquid_fill_gauge
    fields: [bi_dq_metrics.dq_score]
    filters:
      bi_dq_metrics.dq_dimension: Uniqueness
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: false
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 3
    col: 20
    width: 4
    height: 6
  - title: Validity
    name: Validity
    model: data_quality
    explore: bi_dq_metrics
    type: liquid_fill_gauge
    fields: [bi_dq_metrics.dq_score]
    filters:
      bi_dq_metrics.dq_dimension: Validity
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 100
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: false
    waveColor: "#64518A"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    series_types: {}
    defaults_version: 0
    listen:
      Report Name: bi_dq_metrics.report_name
      Run Date: bi_dq_metrics.run_date_filter
    row: 3
    col: 16
    width: 4
    height: 6
  - title: Data Quality Over Time
    name: Data Quality Over Time
    model: data_quality
    explore: bi_dq_metrics
    type: looker_area
    fields: [bi_dq_metrics.dq_score, bi_dq_metrics.run_time]
    sorts: [bi_dq_metrics.run_time desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_series: []
    series_types: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 9
    col: 0
    width: 12
    height: 8
  - title: Departments
    name: Departments
    model: data_quality
    explore: bi_dq_metrics
    type: looker_bar
    fields: [bi_dq_metrics.department_name, bi_dq_metrics.dq_score]
    sorts: [bi_dq_metrics.dq_score desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 9
    col: 12
    width: 12
    height: 8
  filters:
  - name: Report Name
    title: Report Name
    type: field_filter
    default_value: '"dq_report_snowflake_dimensions"'
    allow_multiple_values: true
    required: false
    model: data_quality
    explore: bi_dq_metrics
    listens_to_filters: []
    field: bi_dq_metrics.report_name
  - name: Run Date
    title: Run Date
    type: field_filter
    default_value: '2020-07-02 17:28:22'
    allow_multiple_values: true
    required: false
    model: data_quality
    explore: bi_dq_metrics
    listens_to_filters: [Report Name]
    field: bi_dq_metrics.run_date_filter
