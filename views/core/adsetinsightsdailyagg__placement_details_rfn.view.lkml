#########################################################################################################
# Purpose: Contains additional measures and calculations from CampaignInsightsDailyAgg table.
#
#########################################################################################################

include: "/views/base/adsetinsightsdailyagg__placement_details.view"

view: +adsetinsightsdailyagg__placement_details {

  ######### PRIMARY KEY #########
  dimension: adsetinsightsdailyagg__placement_details_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${adsetinsightsdailyagg.adset_id} AS STRING), CAST(${adsetinsightsdailyagg.date} AS STRING), CAST(${offset} AS STRING)) ;;
  }

  dimension: platform_proper {
    type: string
    sql: INITCAP(${adsetinsightsdailyagg__placement_details.platform}) ;;
  }

 measure: sum_of_video_views_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your video plays for at least 3 seconds."
    sql: ${video_views} ;;
  }

  measure: sum_of_video_p95_watched_actions_video_views_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your video was played at 95% of its length, including plays that skipped to this point."
    sql: ${video_p95_watched_actions_video_views} ;;
  }

  measure: sum_of_impressions_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your ads were on screen."
    sql: ${impressions} ;;
  }

  measure: sum_of_spend_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The estimated total amount of money you've spent on your campaign, ad set or ad during its schedule. This metric is estimated."
    sql: ${spend} ;;
  }

 measure: cpcv_adset{
    type: number
    label: "CPCV Adset"
    value_format_name: usd
    description: "Pay for a video ad once the user watches a video in its entirety."
    sql: SAFE_DIVIDE(${sum_of_spend_adset}, ${sum_of_video_p95_watched_actions_video_views_adset}) ;;
  }

  measure: vtr_adset{
    type: number
    label: "VTR Adset"
    description: "The video p95 watched actions divided by impressions."
    sql: SAFE_DIVIDE(${sum_of_video_p95_watched_actions_video_views_adset}, ${sum_of_impressions_adset}) ;;
    value_format_name: percent_2
  }

  measure: sum_of_video_views_facebook {
    type: number
    description: "The number of times your video plays for at least 3 seconds on Facebook platform."
    sql: SUM(IF(${platform_proper} = "Facebook",${video_views}, NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_video_views_instagram {
    type: number
    description: "The number of times your video plays for at least 3 seconds on Instagram platform."
    sql: SUM(IF(${platform_proper} = "Instagram",${video_views}, NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_video_views_audience_network {
    type: number
    description: "The number of times your video plays for at least 3 seconds on Audience Network platform."
    sql: SUM(IF(${platform_proper} = "Audience_Network",${video_views}, NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  dimension: platform_adset_audience {
    type: string
    sql: CONCAT(REPLACE(${adsetinsightsdailyagg__placement_details.platform_proper},'_',' '),' - ',${adsetinsightsdailyagg__targeting_audiences.adset_audience}) ;;
  }

}
