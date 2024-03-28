view: campaigninsightsdailyagg {
  sql_table_name: `@{GCP_PROJECT_ID}.@{REPORTING_DATASET}.CampaignInsightsDailyAgg` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.report_date ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_id {
    type: number
    hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaign_status ;;
  }
  dimension: report_date {
    type: date
    hidden: yes
    sql: ${TABLE}.report_date ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: video_views {
    type: number
    sql: ${TABLE}.video_views ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
  dimension: post_engagements{
    type: number
    sql: ${TABLE}.post_engagements ;;
  }
  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }
  dimension: campaign_start_date {
    type: date
    sql: ${TABLE}.campaign_start_time ;;
  }
  dimension: campaign_stop_date {
    type: date
    sql: ${TABLE}.campaign_stop_time ;;
  }
  dimension: placement_details {
    hidden: yes
    sql: ${TABLE}.placement_details ;;
  }
  dimension: post_shares {
    type: number
    sql: ${TABLE}.post_shares ;;
  }
  dimension: post_reactions {
    type: number
    sql: ${TABLE}.post_reactions ;;
  }
  dimension: post_saves {
    type: number
    sql: ${TABLE}.post_saves ;;
  }
  dimension: post_comments {
    type: number
    sql: ${TABLE}.post_comments ;;
  }
  dimension: page_likes {
    type: number
    sql: ${TABLE}.page_likes ;;
  }
  dimension: video_p95_watched_actions_video_views {
    type: number
    sql: ${TABLE}.video_p95_watched_actions_video_views ;;
  }
  dimension: link_clicks {
    type: number
    sql: ${TABLE}.link_clicks ;;
  }
  #dimension: placement {
   # type: string
   # sql: ${TABLE}.placement_details.placement ;;
  #}
}
