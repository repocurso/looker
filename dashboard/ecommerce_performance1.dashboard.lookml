# ------------------------------------------------
#  E-Commerce Performance Dashboard - 1
# ------------------------------------------------

- dashboard: ecommerce_performance1
  title: E-Commerce Performance Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <a href="https://cftic.centrosdeformacion.empleo.madrid.org/" target="_blank">
        <img src="https://raw.githubusercontent.com/repocurso/looker/master/images/cmice.png"
             height="60"
             alt="CMICE">
      </a>
      <a href="https://cloud.google.com/" target="_blank">
        <img src="https://raw.githubusercontent.com/repocurso/looker/master/images/gcp.png"
             height="60"
             alt="GOOGLE">
      </a>
      <a href="https://ixen.ai/" target="_blank">
        <img src="https://raw.githubusercontent.com/repocurso/looker/master/images/ixen.png"
             height="60"
             alt="IXEN">
      </a>

      ## **E-Commerce Performance Dashboard**

      ### Sales overview · Order analysis

      This dashboard allows you to analyze sales performance based on revenue, order volume, and items sold. Interactive filters let you examine different time periods and order statuses.

    row: 0
    col: 0
    width: 22
    height: 5
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "[\U0001f517 Detailed Report USA](/dashboards/training_ecommerce::ecommerce_performance2)\n"
    row: 25
    col: 0
    width: 4
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <a href="/dashboards/training_ecommerce::ecommerce_performance2?Created+Date={{ _filters['order_items.created_date']
      | url_encode }}&Status={{ _filters['order_items.status'] | url_encode }}">🔗
      Detailed Report USA</a>
    row: 25
    col: 4
    width: 4
    height: 2
  - title: Untitled
    name: Untitled
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.detailed_report_html]
    sorts: [order_items.detailed_report_html]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 25
    col: 8
    width: 5
    height: 2
  - title: Untitled
    name: Untitled (2)
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.detailed_report_link]
    sorts: [order_items.detailed_report_link]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    custom_color: "#3D52B9"
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 25
    col: 13
    width: 9
    height: 2

  - title: E-Commerce Performance Dashboard
    name: E-Commerce Performance Dashboard
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.total_revenue]
    limit: 500
    column_limit: 50
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
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 5
    col: 0
    width: 8
    height: 2
  - title: New Tile
    name: New Tile
    model: training_ecommerce
    explore: order_items
    type: looker_line
    fields: [order_items.created_month, order_items.total_revenue]
    fill_fields: [order_items.created_month]
    sorts: [order_items.created_month]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_point_styles:
      order_items.total_revenue: auto
    trend_lines: [{color: "#4c4c4c", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    custom_color_enabled: true
    custom_color: "#1A73E8"
    show_single_value_title: true
    single_value_title: Item Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    title_hidden: true
    listen:
      Status: order_items.status
      Created Date: order_items.created_date
    row: 7
    col: 0
    width: 22
    height: 6
  - title: Percentage of Sales by Gender
    name: Percentage of Sales by Gender
    model: training_ecommerce
    explore: order_items
    type: looker_pie
    fields: [order_items.total_revenue, products.department]
    sorts: [order_items.total_revenue desc]
    limit: 3
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    start_angle:
    series_labels: {}
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
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Status: order_items.status
      Created Date: order_items.created_date
    row: 13
    col: 13
    width: 9
    height: 6
  - title: User Behavior by Traffic Source
    name: User Behavior by Traffic Source
    model: training_ecommerce
    explore: order_items
    type: looker_column
    fields: [order_items.average_sale_price, users.traffic_source]
    filters:
      users.state: ''
      users.city: ''
      products.brand: ''
    sorts: [users.traffic_source]
    limit: 500
    column_limit: 50
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors: {}
    y_axes: [{label: '', orientation: left, series: [{id: order_items.average_sale_price,
            name: Average Sale Price, axisId: order_items.average_sale_price}], showLabels: true,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{id: user_order_facts.average_lifetime_orders, name: Average Lifetime
              Orders, axisId: user_order_facts.average_lifetime_orders}], showLabels: true,
        showValues: true, valueFormat: "#", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_fields: []
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 19
    col: 13
    width: 9
    height: 6
  - title: Units Sold by Category
    name: Units Sold by Category
    model: training_ecommerce
    explore: order_items
    type: looker_bar
    fields: [products.category, order_items.order_item_count]
    sorts: [order_items.order_item_count desc]
    limit: 10
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: order_items.order_item_count,
            id: order_items.order_item_count, name: Order Item Count}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 13
    col: 0
    width: 13
    height: 6
  - title: Sales in California
    name: Sales in California
    model: training_ecommerce
    explore: order_items
    type: looker_grid
    fields: [order_items.total_revenue, users.city]
    filters:
      users.state: California
    sorts: [order_items.total_revenue desc]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      order_items.total_revenue:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    truncate_column_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
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
    font_size: 12
    map: auto
    map_projection: ''
    quantize_colors: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 19
    col: 0
    width: 13
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.order_item_count]
    limit: 5000
    column_limit: 50
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
    single_value_title: Item Count
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
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 5
    col: 15
    width: 7
    height: 2
  - title: New Tile
    name: New Tile (3)
    model: training_ecommerce
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    limit: 5000
    column_limit: 50
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
    single_value_title: Order Count
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
    listen:
      Created Date: order_items.created_date
      Status: order_items.status
    row: 5
    col: 8
    width: 7
    height: 2
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
      type: button_group
      display: inline
      options: []
    model: training_ecommerce
    explore: order_items
    listens_to_filters: []
    field: order_items.status