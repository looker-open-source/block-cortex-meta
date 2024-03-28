view: adsetinsightsdailyagg__placement_details {

  dimension: video_views {
    type: number
    sql: ${TABLE}.video_views ;;
  }
  dimension: video_p95_watched_actions_video_views {
    type: number
    sql: ${TABLE}.video_p95_watched_actions_video_views ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
  dimension: platform {
    type: string
    sql: publisher_platform ;;
  }
  dimension: offset {
    type: number
    hidden: yes
    sql: adsetinsightsdailyagg__placement_details_offset ;;
  }
}
