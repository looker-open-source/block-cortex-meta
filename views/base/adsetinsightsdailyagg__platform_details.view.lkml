view: adsetinsightsdailyagg__platform_details {

  dimension: post_engagements {
    type: number
    sql: ${TABLE}.post_engagements ;;
  }
  dimension: platform {
    type: string
    sql: publisher_platform ;;
  }
  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
}
