---
- dashboard: meta_campaign_performance_overview
  title: Meta Campaign Performance Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Asqs7xuGqbq1Tg3eP2ABrV
  elements:

######################################################################################################
#### SECTION OVERALL CAMPAIGN PERFORMANCE
  - name: section_CampaignPerformance_line_right
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 19
    width: 5
    height: 2

  - name: section_CampaignPerformance_line_left
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 5
    height: 2

  - name: section_CampaignPerformance_title
    type: text
    title_text: "<h2><strong>Overall Campaign Performance"
    subtitle_text: " What is the overall campaign performance?"
    body_text: ''
    row: 0
    col: 5
    width: 14
    height: 2

## Single Value Visualizations - First Row
  - title: Total Cost
    name: Total Cost
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.sum_of_spend]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    single_value_title: Total Cost
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'The total cost of media across the campaigns shown.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 2
    col: 0
    width: 5
    height: 2

  - title: Total Clicks
    name: Total Clicks
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.sum_of_link_clicks]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    single_value_title: Total Clicks
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Total number of clicks on the ad.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 2
    col: 5
    width: 5
    height: 2

  - title: VTR
    name: VTR
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.vtr]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    single_value_title: VTR
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Percentage of users who watched an entire video ad in relation to the total number of impressions.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 2
    col: 10
    width: 5
    height: 2

  - title: Total Reach
    name: Total Reach
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.sum_of_reach]
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Reach
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'The estimated number of unique users who saw the ad at least once.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 2
    col: 15
    width: 4
    height: 2

  - title: Post Engagement
    name: Post Engagement
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.sum_of_post_engagements]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    single_value_title: Post Engagement
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Total number of actions people take on the ad which includes video views, shares, reactions, comments, likes and link clicks'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 2
    col: 19
    width: 5
    height: 2

## Single Value Visualizations - Second Row

  - title: CPM
    name: CPM
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.cpm]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    single_value_title: CPM
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'The average cost for 1,000 impressions.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 4
    col: 0
    width: 5
    height: 2

  - title: Total Impressions
    name: Total Impressions
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.sum_of_impressions]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    enable_conditional_formatting: false
    single_value_title: Total Impressions
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Total number of times ads were on-screen.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 4
    col: 5
    width: 5
    height: 2

  - title: Total Video Views
    name: Total Video Views
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.sum_of_video_views]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    enable_conditional_formatting: false
    single_value_title: Total Video Views
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Total measurable video views based on the second a video starts to play.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 4
    col: 10
    width: 5
    height: 2

  - title: Engagement Rate
    name: Engagement Rate
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.engagement_rate]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    enable_conditional_formatting: false
    single_value_title: Engagement Rate
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Percentage of users who engaged with the ad in relation to total reach.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 4
    col: 15
    width: 4
    height: 2

  - title: Frequency
    name: Frequency
    explore: campaigninsightsdailyagg
    type: single_value
    fields: [campaigninsightsdailyagg.frequency]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    enable_conditional_formatting: false
    single_value_title: Frequency
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'The number of times a unique user saw the ad.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 4
    col: 19
    width: 5
    height: 2

######################################################################################################
#### SECTION WHAT CAMPAIGNS HAVE RUN

  - name: section_CampaignsRun_line_left
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 0
    width: 5
    height: 2

  - name: section_CampaignsRun_title
    type: text
    title_text: "<h3><strong>What campaigns have run?"
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 5
    width: 14
    height: 2

  - name: section_CampaignsRun_line_right
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 19
    width: 5
    height: 2

  - title: Campaign Timeline
    name: Campaign Timeline
    explore: campaigninsightsdailyagg
    type: looker_timeline
    fields: [campaigninsightsdailyagg.campaign_name, campaigninsightsdailyagg.campaign_start_date,
      campaigninsightsdailyagg.campaign_stop_date]
    sorts: [campaigninsightsdailyagg.campaign_start_date]
    limit: 500
    column_limit: 50
    groupBars: true
    labelSize: 9pt
    showLegend: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    valueFormat: dd-mmm-yy
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'Active Campaigns based on date range including start and end dates.'
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 8
    col: 0
    width: 24
    height: 10

######################################################################################################
#### SECTION WHAT IS THE CUMULATIVE CAMPAIGN SPEND?
  - name: section_CumulativeSpend_line_left
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 18
    col: 0
    width: 5
    height: 2

  - name: section_CumulativeSpend_title
    type: text
    title_text: "<h3><strong>What is the cumulative campaign spend?"
    subtitle_text: ''
    body_text: ''
    row: 18
    col: 5
    width: 14
    height: 2

  - name: section_CumulativeSpend_line_right
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 18
    col: 19
    width: 5
    height: 2

  - title: Monthly Campaign Spend
    name: Monthly Campaign Spend
    explore: campaigninsightsdailyagg
    type: looker_line
    fields: [campaigninsightsdailyagg.date_month, campaigninsightsdailyagg.cumulative_sum_of_spend]
    fill_fields: [campaigninsightsdailyagg.date_month]
    sorts: [campaigninsightsdailyagg.date_month]
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Cumulative Campaign Spend, orientation: left, series: [{axisId: cumulative_sum_of_spend,
            id: cumulative_sum_of_spend, name: cumulative_sum_of_spend}], showLabels: true, showValues: true,
        maxValue: !!null '', minValue: !!null '', valueFormat: '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 0, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 20
    col: 0
    width: 24
    height: 10

######################################################################################################
#### SECTION HOW MANY IMPRESSIONS DID I BUY
  - name: section_ImpressionsBuy_line_left
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 0
    width: 7
    height: 2

  - name: section_ImpressionsBuy_title
    type: text
    title_text: "<h3><strong>How many impressions did I buy?"
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 7
    width: 10
    height: 2

  - name: section_ImpressionsBuy_line_right
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 17
    width: 7
    height: 2

  - title: Impressions by Campaign
    name: Impressions by Campaign
    explore: campaigninsightsdailyagg
    type: looker_column
    fields: [campaigninsightsdailyagg.campaign_name, campaigninsightsdailyagg.sum_of_impressions,
      campaigninsightsdailyagg.cpm, campaigninsightsdailyagg.link_ctr]
    filters:
      campaigninsightsdailyagg.sum_of_impressions: ">0"
    sorts: [campaigninsightsdailyagg.campaign_name]
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
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaigninsightsdailyagg.sum_of_total_impressions,
            id: campaigninsightsdailyagg.sum_of_total_impressions, name: Total Impressions}],
        showLabels: true, showValues: true, maxValue: 28000000, unpinAxis: false,
        tickDensity: default, type: linear}, {label: CPM, orientation: right, series: [
          {axisId: campaigninsightsdailyagg.cpm, id: campaigninsightsdailyagg.cpm,
            name: Cost Per Mille}], showLabels: true, showValues: true, maxValue: 10,
        unpinAxis: false, tickDensity: default, type: linear}, {label: CTR, orientation: right,
        series: [{axisId: campaigninsightsdailyagg.link_ctr, id: campaigninsightsdailyagg.link_ctr,
            name: Click Through Rate}], showLabels: true, showValues: true, maxValue: !!null '',
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_types:
      campaigninsightsdailyagg.cpm: line
      campaigninsightsdailyagg.link_ctr: line
    series_colors:
      campaigninsightsdailyagg.cpm: "#1A73E8"
      campaigninsightsdailyagg.sum_of_impressions: "#d1e2f5"
    series_labels:
      campaigninsightsdailyagg.cpm: Cost Per Mille
      campaigninsightsdailyagg.link_ctr: Click Through Rate
      campaigninsightsdailyagg.sum_of_impressions: Total Impressions
    series_point_styles:
      campaigninsightsdailyagg.link_ctr: triangle
    defaults_version: 1
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 32
    col: 0
    width: 24
    height: 11

  - title: Campaign Impressions by Platform & Placement
    name: Campaign Impressions by Platform & Placement
    explore: campaigninsightsdailyagg
    type: looker_column
    fields: [campaigninsightsdailyagg__placement_details.sum_of_impressions_facebook,campaigninsightsdailyagg__placement_details.sum_of_impressions_instagram,
      campaigninsightsdailyagg__placement_details.sum_of_impressions_audience_network,
      campaigninsightsdailyagg__placement_details.cpm_placement, campaigninsightsdailyagg__placement_details.link_ctr_placement,
      campaigninsightsdailyagg__placement_details.platformplacementgroup, campaigninsightsdailyagg__placement_details.platform]
    filters: {}
    sorts: [campaigninsightsdailyagg__placement_details.platformplacementgroup]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaigninsightsdailyagg__placement_details.sum_of_impressions_facebook, id: campaigninsightsdailyagg__placement_details.sum_of_impressions_facebook,
                name: TotalImp Facebook}, {axisId: campaigninsightsdailyagg__placement_details.sum_of_impressions_instagram, id: campaigninsightsdailyagg__placement_details.sum_of_impressions_instagram,
                name: TotalImp Instagram}, {axisId: campaigninsightsdailyagg__placement_details.sum_of_impressions_audience_network, id: campaigninsightsdailyagg__placement_details.sum_of_impressions_audience_network,
                name: TotalImp Audience}], showLabels: true, showValues: true, unpinAxis: false,
            tickDensity: default, type: linear}, {label: '', orientation: right, series: [
              {axisId: campaigninsightsdailyagg__placement_details.cpm_placement, id: campaigninsightsdailyagg__placement_details.cpm_placement,
                name: Cost Per Mille}], showLabels: true, showValues: true, unpinAxis: false,
            tickDensity: default, type: linear}, {label: !!null '', orientation: right,
            series: [{axisId: campaigninsightsdailyagg__placement_details.link_ctr_placement,
                id: campaigninsightsdailyagg__placement_details.link_ctr_placement, name: Click
                  Through Rate}], showLabels: true, showValues: true, unpinAxis: false,
            tickDensity: default, type: linear}]
    x_axis_label: Platform & Placement Name
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      campaigninsightsdailyagg__placement_details.cpm_placement: line
      campaigninsightsdailyagg__placement_details.link_ctr_placement: line
    series_colors:
      campaigninsightsdailyagg__placement_details.cpm_placement: "#1A73E8"
      campaigninsightsdailyagg__placement_details.sum_of_impressions_facebook: "#deffd7"
      campaigninsightsdailyagg__placement_details.sum_of_impressions_instagram: "#d3edfc"
      campaigninsightsdailyagg__placement_details.sum_of_impressions_audience_network: "#fff9a3"
      campaigninsightsdailyagg__placement_details.link_ctr_placement: "#E52592"
    series_labels:
      campaigninsightsdailyagg__placement_details.cpm_placement: CPM
      campaigninsightsdailyagg__placement_details.link_ctr_placement: CTR
      campaigninsightsdailyagg__placement_details.sum_of_impressions_facebook: Facebook - Total Impression
      campaigninsightsdailyagg__placement_details.sum_of_impressions_instagram: Instagram - Total Impression
      campaigninsightsdailyagg__placement_details.sum_of_impressions_audience_network: Audience  Network - Total Impression
    series_point_styles:
      campaigninsightsdailyagg__placement_details.link_ctr_placement: triangle
    x_axis_label_rotation: -60
    show_dropoff: false
    advanced_vis_config: |-
      {
        chart: {},
        series: [ {
          name: 'Facebook - Total Impression'
        }, {
          name: 'Instagram - Total Impression'
        }, {
          name: 'Audience  Network - Total Impression'
        }, {
          name: 'Cost Per Mille'
        }, {
          name: 'Click Through Rate'
        }
        ]
      }
    defaults_version: 1
    hidden_fields: [campaigninsightsdailyagg__placement_details.sum_of_impressions_placement,
      campaigninsightsdailyagg__placement_details.platform]
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 43
    col: 0
    width: 24
    height: 11

######################################################################################################
#### SECTION HOW DID MY VIDEO ADS PERFORM
  - name: section_VideoAds_line_left
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 54
    col: 0
    width: 7
    height: 2
  - name: section_VideoAds_title
    type: text
    title_text: "<h3><strong>How did my Video Ads perform?"
    subtitle_text: ''
    body_text: ''
    row: 54
    col: 7
    width: 10
    height: 2
  - name: section_VideoAds_line_right
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 54
    col: 17
    width: 7
    height: 2

  - title: Campaign Video Views by Platform & Placement
    name: Campaign Video Views by Platform & Placement
    explore: campaigninsightsdailyagg
    type: looker_column
    fields: [campaigninsightsdailyagg__placement_details.platformplacementgroup, campaigninsightsdailyagg__placement_details.platform,
      campaigninsightsdailyagg__placement_details.sum_of_video_views_facebook, campaigninsightsdailyagg__placement_details.sum_of_video_views_instagram,
      campaigninsightsdailyagg__placement_details.sum_of_video_views_audience_network, campaigninsightsdailyagg__placement_details.cpcv_placement,
      campaigninsightsdailyagg__placement_details.vtr_placement]
    sorts: [campaigninsightsdailyagg__placement_details.platformplacementgroup]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaigninsightsdailyagg__placement_details.sum_of_video_views_facebook,
                id: campaigninsightsdailyagg__placement_details.sum_of_video_views_facebook, name: Facebook - Total Video Views}, {axisId: campaigninsightsdailyagg__placement_details.sum_of_video_views_instagram,
                id: campaigninsightsdailyagg__placement_details.sum_of_video_views_instagram, name: Instagram - Total Video Views}, {
                axisId: campaigninsightsdailyagg__placement_details.sum_of_video_views_audience_network, id: campaigninsightsdailyagg__placement_details.sum_of_video_views_audience_network, name: Audience
                  Network - Total Video Views}], showLabels: true, showValues: true, unpinAxis: false,
            tickDensity: default, type: linear}, {label: !!null '', orientation: right,
            series: [{axisId: campaigninsightsdailyagg__placement_details.vtr_placement,
                id: campaigninsightsdailyagg__placement_details.vtr_placement, name: VTR}],
            showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
            type: linear}, {label: !!null '', orientation: right, series: [{axisId: campaigninsightsdailyagg__placement_details.cpcv_placement,
                id: campaigninsightsdailyagg__placement_details.cpcv_placement, name: CPCV}],
            showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
            type: linear}]
    x_axis_label: Platform & Placement Name
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      campaigninsightsdailyagg__placement_details.cpcv_placement: line
      campaigninsightsdailyagg__placement_details.vtr_placement: line
    series_colors:
      campaigninsightsdailyagg__placement_details.sum_of_video_views_facebook: "#deffd7"
      campaigninsightsdailyagg__placement_details.sum_of_video_views_instagram: "#d3edfc"
      campaigninsightsdailyagg__placement_details.sum_of_video_views_audience_network: "#fff9a3"
      campaigninsightsdailyagg__placement_details.vtr_placement: "#079c98"
      campaigninsightsdailyagg__placement_details.cpcv_placement: "#E8710A"
    series_labels:
      campaigninsightsdailyagg__placement_details.sum_of_video_views_facebook: Facebook - Total Video Views
      campaigninsightsdailyagg__placement_details.sum_of_video_views_instagram: Instagram - Total Video Views
      campaigninsightsdailyagg__placement_details.sum_of_video_views_audience_network: Audience Network - Total Video Views
      campaigninsightsdailyagg__placement_details.cpcv_placement: CPCV
      campaigninsightsdailyagg__placement_details.vtr_placement: VTR
    series_point_styles:
      campaigninsightsdailyagg__placement_details.vtr_placement: triangle
    advanced_vis_config: |-
      {
        chart: {},
        series: [ {
          name: 'Facebook - Total Video Views'
          }, {
          name: 'Instagram - Total Video Views'
          }, {
          name: 'Audience  Network - Video Views'
          }, {
          name: 'Cost Per Completed View'
          }, {
          name: 'View Through Rate'
          }
        ]
      }
    x_axis_label_rotation: -60
    show_dropoff: false
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [campaigninsightsdailyagg__placement_details.platform]
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 56
    col: 0
    width: 24
    height: 11

  - title: Video Views by Campaign
    name: Video Views by Campaign
    explore: campaigninsightsdailyagg
    type: looker_column
    fields: [campaigninsightsdailyagg.campaign_name, campaigninsightsdailyagg.sum_of_video_views,
      campaigninsightsdailyagg.vtr, campaigninsightsdailyagg.cpcv]
    filters:
      campaigninsightsdailyagg.sum_of_video_views: ">0"
    sorts: [campaigninsightsdailyagg.campaign_name]
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
    # trellis: ''
    # stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaigninsightsdailyagg.sum_of_total_video_view,
            id: campaigninsightsdailyagg.sum_of_total_video_view, name: Total Video
              View}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: CPCV, orientation: right, series: [{axisId: campaigninsightsdailyagg.cpcv,
            id: campaigninsightsdailyagg.cpcv, name: Cost Per Completed View}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: VTR, orientation: right, series: [{axisId: campaigninsightsdailyagg.vtr,
            id: campaigninsightsdailyagg.vtr, name: Video Through Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      campaigninsightsdailyagg.vtr: line
      campaigninsightsdailyagg.cpcv: line
    series_colors:
      campaigninsightsdailyagg.sum_of_total_video_view: "#fcdec8"
      campaigninsightsdailyagg.cpcv: "#E8710A"
      campaigninsightsdailyagg.vtr: "#079c98"
      campaigninsightsdailyagg.sum_of_video_views: "#fcdec8"
    series_labels:
      campaigninsightsdailyagg.sum_of_total_video_view: Total Video View
      campaigninsightsdailyagg.vtr: Video Through Rate
      campaigninsightsdailyagg.cpcv: Cost Per Completed View
    series_point_styles:
      campaigninsightsdailyagg.cpcv: triangle
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
          name: 'Total Video Views'
        }, {
          name: 'View Through Rate'
        }, {
          name: 'Cost Per Completed View'
        }]
      }
    defaults_version: 1
    hidden_points_if_no: [total_yesno]
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 67
    col: 0
    width: 24
    height: 12

######################################################################################################
#### SECTION WHAT WAS ENGAGEMENT PERFORMANCE FOR MY CAMPAIGNS?
  - name: section_EngagementPerformance_line_left
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 79
    col: 0
    width: 7
    height: 2
  - name: section_EngagementPerformance_title
    type: text
    title_text: "<h3><strong>What was the engagement performance for my campaigns?"
    subtitle_text: ''
    body_text: ''
    row: 79
    col: 7
    width: 10
    height: 2
  - name: section_EngagementPerformance_line_right
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 79
    col: 17
    width: 7
    height: 2

  - title: Actions by Campaign
    name: Actions by Campaign
    explore: campaigninsightsdailyagg
    type: looker_column
    fields: [campaigninsightsdailyagg.campaign_name, campaigninsightsdailyagg.sum_of_page_likes,
      campaigninsightsdailyagg.sum_of_post_comments, campaigninsightsdailyagg.sum_of_post_reactions,
      campaigninsightsdailyagg.sum_of_post_saves, campaigninsightsdailyagg.sum_of_post_shares]
    filters: {
      campaigninsightsdailyagg.sum_of_page_likes: ">0"
    }
    sorts: [campaigninsightsdailyagg.campaign_name]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: campaigninsightsdailyagg.sum_of_page_likes,
            id: campaigninsightsdailyagg.sum_of_page_likes, name: Page Likes}, {axisId: campaigninsightsdailyagg.sum_of_post_comments,
            id: campaigninsightsdailyagg.sum_of_post_comments, name: Post Comments},
          {axisId: campaigninsightsdailyagg.sum_of_post_reactions, id: campaigninsightsdailyagg.sum_of_post_reactions,
            name: Post Reactions}, {axisId: campaigninsightsdailyagg.sum_of_post_saves,
            id: campaigninsightsdailyagg.sum_of_post_saves, name: Post Saves}, {axisId: campaigninsightsdailyagg.sum_of_post_shares,
            id: campaigninsightsdailyagg.sum_of_post_shares, name: Post Shares}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: Total Post Engagement, orientation: right, series: [
          {axisId: campaigninsightsdailyagg.sum_of_post_engagements, id: campaigninsightsdailyagg.sum_of_post_engagements,
            name: Total Post Engagement}], showLabels: true, showValues: true, maxValue: !!null '',
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 11, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.00, "K"
    series_colors:
      campaigninsightsdailyagg.sum_of_post_engagements: "#EA4335"
      campaigninsightsdailyagg.sum_of_post_shares: "#079c98"
      post_shares: "#6d9c98"
    series_labels:
      campaigninsightsdailyagg.sum_of_page_likes: Page Likes
      campaigninsightsdailyagg.sum_of_post_comments: Post Comments
      campaigninsightsdailyagg.sum_of_post_reactions: Post Reactions
      campaigninsightsdailyagg.sum_of_post_saves: Post Saves
      campaigninsightsdailyagg.sum_of_post_shares: Post Shares
    reference_lines: []
    defaults_version: 1
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 81
    col: 0
    width: 12
    height: 11

  - title: Engagement by Campaign
    name: Engagement by Campaign
    explore: campaigninsightsdailyagg
    type: looker_column
    fields: [campaigninsightsdailyagg.campaign_name, campaigninsightsdailyagg.sum_of_post_engagements,
      campaigninsightsdailyagg.cpe, campaigninsightsdailyagg.engagement_rate]
    filters:
      campaigninsightsdailyagg.sum_of_post_engagements: ">0"
    sorts: [campaigninsightsdailyagg.campaign_name]
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
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaigninsightsdailyagg.sum_of_post_engagement,
            id: campaigninsightsdailyagg.sum_of_post_engagement, name: Total Post
              Engagement}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: right, series: [
          {axisId: campaigninsightsdailyagg.engagement_rate, id: campaigninsightsdailyagg.engagement_rate,
            name: Engagement Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: CPE, orientation: right, series: [
          {axisId: campaigninsightsdailyagg.cpe, id: campaigninsightsdailyagg.cpe,
            name: Cost Per Engagement}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      campaigninsightsdailyagg.cpe: line
      campaigninsightsdailyagg.engagement_rate: line
    series_colors:
      campaigninsightsdailyagg.cpe: "#7CB342"
      campaigninsightsdailyagg.engagement_rate: "#9334E6"
      campaigninsightsdailyagg.sum_of_post_engagements: "#e2f2d7"
    series_labels:
      campaigninsightsdailyagg.cpe: Cost Per Engagement
      campaigninsightsdailyagg.sum_of_post_engagements: Total Post Engagement
    series_point_styles:
      campaigninsightsdailyagg.engagement_rate: triangle
    defaults_version: 1
    listen:
      Date: campaigninsightsdailyagg.date_date
      Campaign Name: campaigninsightsdailyagg.campaign_name
    row: 81
    col: 12
    width: 12
    height: 11

######################################################################################################
#### SECTION HOW DID MY TARGET AUDIENCE ENGAGE WITH MY CAMPAIGNS?

  - name: section_TargetAudience_title
    type: text
    title_text: "<h3><strong>How did my target audience engage with my campaigns?"
    subtitle_text: ''
    body_text: ''
    row: 92
    col: 7
    width: 10
    height: 2
  - name: section_TargetAudience_line_left
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 92
    col: 0
    width: 7
    height: 2
  - name: section_TargetAudience_line_right
    type: text
    title_text: '<p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body> '
    subtitle_text: ''
    body_text: ''
    row: 92
    col: 17
    width: 7
    height: 2

  - title: Impressions by Ad Set Audience Targeting
    name: Impressions by Ad Set Audience Targeting
    explore: adsetinsightsdailyagg
    type: looker_column
    fields: [adsetinsightsdailyagg.sum_of_impressions_adset, adsetinsightsdailyagg.cpm_adset,
      adsetinsightsdailyagg.link_ctr_adset, adsetinsightsdailyagg__targeting_audiences.adset_audience]
    filters:
      adsetinsightsdailyagg.sum_of_impressions_adset: ">0"
    sorts: [adsetinsightsdailyagg__targeting_audiences.adset_audience]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Adset Impressions, orientation: left, series: [{axisId: adsetinsightsdailyagg.sum_of_total_impressions_adset,
            id: adsetinsightsdailyagg.sum_of_total_impressions_adset, name: Sum of
              Total Impressions Adset}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: CPM, orientation: right, series: [
          {axisId: adsetinsightsdailyagg.cpm_adset, id: adsetinsightsdailyagg.cpm_adset,
            name: Cost Per Mille}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: CTR, orientation: right, series: [
          {axisId: adsetinsightsdailyagg.link_ctr_adset, id: adsetinsightsdailyagg.link_ctr_adset,
            name: Click Through Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      adsetinsightsdailyagg.cpm_adset: line
      adsetinsightsdailyagg.link_ctr_adset: line
    series_colors:
      adsetinsightsdailyagg.ctr_adset_average: "#1A73E8"
      adsetinsightsdailyagg.average_of_link_ctr: "#E52592"
      adsetinsightsdailyagg.sum_of_total_impressions_adset: "#cbe3ca"
      adsetinsightsdailyagg.cpm_adset: "#1A73E8"
      adsetinsightsdailyagg.sum_of_impressions_adset: "#d1e2f5"
    series_labels:
      adsetinsightsdailyagg.cpm_adset: Cost Per Mille
      adsetinsightsdailyagg.link_ctr_adset: Click Through Rate
      adsetinsightsdailyagg.sum_of_total_impressions_adset: Sum of Total Adset Impressions
      adsetinsightsdailyagg.sum_of_impressions_adset: Total Impressions
    series_point_styles:
      adsetinsightsdailyagg.link_ctr_adset: triangle
    defaults_version: 1
    listen:
      Date: adsetinsightsdailyagg.date
      Campaign Name: adsetinsightsdailyagg.campaign_name
    row: 94
    col: 0
    width: 24
    height: 13

  - title: Ad Set Audience Engagement by Platform
    name: Ad Set Audience Engagement by Platform
    explore: adsetinsightsdailyagg
    type: looker_column
    fields: [adsetinsightsdailyagg__platform_details.platform_proper, adsetinsightsdailyagg__targeting_audiences.adset_audience, adsetinsightsdailyagg__platform_details.platform_adset_audience,
      adsetinsightsdailyagg__platform_details.engagement_rate_adset, adsetinsightsdailyagg__platform_details.cpe_adset,
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_facebook, adsetinsightsdailyagg__platform_details.sum_of_post_engagements_instagram,
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_audience_network]
    filters:
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_adset: ">0"
      # adsetinsightsdailyagg.date: ''
    sorts: [adsetinsightsdailyagg__platform_details.platform_proper, adsetinsightsdailyagg__targeting_audiences.adset_audience]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Adset Engagement, orientation: left, series: [{axisId: adsetinsightsdailyagg__platform_details.sum_of_post_engagements_facebook,
            id: adsetinsightsdailyagg__platform_details.sum_of_post_engagements_facebook, name: Facebook - Post Engagement}, {axisId: adsetinsightsdailyagg__platform_details.sum_of_post_engagements_instagram,
            id: adsetinsightsdailyagg__platform_details.sum_of_post_engagements_instagram, name: Instagram - Post Engagement}, {axisId: adsetinsightsdailyagg__platform_details.sum_of_post_engagements_audience_network,
            id: adsetinsightsdailyagg__platform_details.sum_of_post_engagements_audience_network, name: Audience Network - Post Engagement}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: adsetinsightsdailyagg__platform_details.engagement_rate_adset,
            id: adsetinsightsdailyagg__platform_details.engagement_rate_adset, name: Engagement
              Rate}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: CPE, orientation: right, series: [{axisId: adsetinsightsdailyagg__platform_details.cpe_adset,
            id: adsetinsightsdailyagg__platform_details.cpe_adset, name: Cost Per
              Engagement}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      adsetinsightsdailyagg__platform_details.cpe_adset: line
      adsetinsightsdailyagg__platform_details.engagement_rate_adset: line
    series_colors:
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_facebook: "#deffd7"
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_instagram: "#d3edfc"
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_audience_network: "#fff9a3"
      adsetinsightsdailyagg__platform_details.engagement_rate_adset: "#9334E6"
      adsetinsightsdailyagg__platform_details.cpe_adset: "#7CB342"
    series_labels:
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_facebook: Facebook - Post Engagement
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_instagram: Instagram - Post Engagement
      adsetinsightsdailyagg__platform_details.cpe_adset: Cost Per Engagement
      adsetinsightsdailyagg__platform_details.engagement_rate_adset: Engagement Rate
      adsetinsightsdailyagg__platform_details.sum_of_post_engagements_audience_network: Audience Network - Post Engagement
    series_point_styles:
      adsetinsightsdailyagg__platform_details.engagement_rate_adset: triangle
    column_group_spacing_ratio: 0.2
    defaults_version: 1
    hidden_fields: [adsetinsightsdailyagg__targeting_audiences_sdt.adset_audience, adsetinsightsdailyagg__platform_details.platform_proper]
    listen:
      Date: adsetinsightsdailyagg.date
      Campaign Name: adsetinsightsdailyagg.campaign_name
    row: 107
    col: 0
    width: 24
    height: 11

  - title: Completed Videos by Ad Set Audience Targeting and Platform
    name: Completed Videos by Ad Set Audience Targeting and Platform
    explore: adsetinsightsdailyagg
    type: looker_column
    fields: [adsetinsightsdailyagg__placement_details.platform_proper, adsetinsightsdailyagg__placement_details.vtr_adset,
    adsetinsightsdailyagg__placement_details.cpcv_adset, adsetinsightsdailyagg__targeting_audiences.adset_audience,
    adsetinsightsdailyagg__placement_details.platform_adset_audience, adsetinsightsdailyagg__placement_details.sum_of_video_views_facebook,
    adsetinsightsdailyagg__placement_details.sum_of_video_views_instagram, adsetinsightsdailyagg__placement_details.sum_of_video_views_audience_network]
    filters:
      adsetinsightsdailyagg__placement_details.sum_of_video_views_adset: ">0"
    sorts: [adsetinsightsdailyagg__placement_details.platform_proper, adsetinsightsdailyagg__targeting_audiences_sdt.adset_audience,
      adsetinsightsdailyagg__targeting_audiences.adset_audience]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Video Views, orientation: left, series: [{axisId: adsetinsightsdailyagg__placement_details.sum_of_video_views_facebook,
            id: adsetinsightsdailyagg__placement_details.sum_of_video_views_facebook, name: Facebook - Video View}, {axisId: adsetinsightsdailyagg__placement_details.sum_of_video_views_instagram,
            id: adsetinsightsdailyagg__placement_details.sum_of_video_views_instagram, name: Instagram - Video View}, {axisId: adsetinsightsdailyagg__placement_details.sum_of_video_views_audience_network,
            id: adsetinsightsdailyagg__placement_details.sum_of_video_views_audience_network, name: TotalView AN}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}, {label: CPCV, orientation: right,
        series: [{axisId: adsetinsightsdailyagg__placement_details.cpcv_adset, id: adsetinsightsdailyagg__placement_details.cpcv_adset,
            name: Cpcv Adset}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: VTR, orientation: right, series: [
          {axisId: adsetinsightsdailyagg__placement_details.vtr_adset, id: adsetinsightsdailyagg__placement_details.vtr_adset,
            name: Vtr Adset}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      adsetinsightsdailyagg__placement_details.vtr_adset: line
      adsetinsightsdailyagg__placement_details.cpcv_adset: line
    series_colors:
      adsetinsightsdailyagg__placement_details.sum_of_video_views_facebook: "#deffd7"
      adsetinsightsdailyagg__placement_details.sum_of_video_views_instagram: "#d3edfc"
      adsetinsightsdailyagg__placement_details.sum_of_video_views_audience_network: "#fff9a3"
      adsetinsightsdailyagg__placement_details.vtr_adset: "#079c98"
      adsetinsightsdailyagg__placement_details.cpcv_adset: "#E8710A"
    series_labels:
      adsetinsightsdailyagg__placement_details.sum_of_video_views_facebook: Facebook - Video View
      adsetinsightsdailyagg__placement_details.sum_of_video_views_instagram: Instagram - Video View
      adsetinsightsdailyagg__placement_details.cpcv_adset: Cost Per Completed View
      adsetinsightsdailyagg__placement_details.vtr_adset: Video Through Rate
      adsetinsightsdailyagg__placement_details.sum_of_video_views_audience_network: Audience Network - Video View
    series_point_styles:
      adsetinsightsdailyagg__placement_details.cpcv_adset: triangle
    column_group_spacing_ratio: 0.2
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
          name: 'View Through Rate'
        }, {
          name: 'Cost Per Completed View'
        }, {
          name: 'Facebook - Video View'
        }, {
          name: 'Instagram - Video View'
        }, {
          name: 'Audience Network - Video View'
        }]
      }
    defaults_version: 1
    hidden_fields: [adsetinsightsdailyagg__placement_details.platform_proper,adsetinsightsdailyagg__targeting_audiences_sdt.adset_audience]
    listen:
      Date: adsetinsightsdailyagg.date
      Campaign Name: adsetinsightsdailyagg.campaign_name
    row: 118
    col: 0
    width: 24
    height: 12

  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    explore: campaigninsightsdailyagg
    listens_to_filters: []
    field: campaigninsightsdailyagg.date_date
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    explore: campaign
    listens_to_filters: [Date]
    field: campaign.name
