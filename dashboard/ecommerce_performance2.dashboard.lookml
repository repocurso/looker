# ------------------------------------------------
#  E-Commerce Performance Dashboard - 2
# ------------------------------------------------

- dashboard: ecommerce_performance2
  title: E-Commerce Performance Dashboard - USA
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  elements:
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.total_revenue]
    filters:
      users.country: USA
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Total Revenue - USA
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 2
    col: 0
    width: 8
    height: 2
  - title: ''
    name: ''
    model: training_ecommerce
    explore: order_items
    type: looker_map
    fields: [users.state, order_items.total_revenue]
    filters:
      users.country: USA
    sorts: [order_items.total_revenue desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${order_items.total_revenue}/${order_items.total_revenue:total}",
        label: "% of Total Revenue", value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: of_total_revenue, _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    defaults_version: 1
    title_hidden: true
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 0
    col: 8
    width: 15
    height: 11
  - title: Untitled
    name: Untitled
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.total_revenue]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Total Revenue
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 0
    col: 0
    width: 8
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "[← Volver al dashboard general](/dashboards/training_ecommerce::ecommerce_performance1)"
    row: 11
    col: 0
    width: 6
    height: 2
  - title: Total Revenue by State
    name: Total Revenue by State
    model: training_ecommerce
    explore: order_items
    type: looker_column
    fields: [users.state, order_items.total_revenue]
    sorts: [order_items.total_revenue desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_revenue,
            id: order_items.total_revenue, name: Total Revenue}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#000000"}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 4
    col: 0
    width: 8
    height: 7
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 2020/01/01 to 2021/01/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: training_ecommerce
    explore: order_items
    listens_to_filters: []
    field: order_items.created_date
  - name: Status
    title: Status
    type: field_filter
    default_value: Complete
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: training_ecommerce
    explore: order_items
    listens_to_filters: []
    field: order_items.status

