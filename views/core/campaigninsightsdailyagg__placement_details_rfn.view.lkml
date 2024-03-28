#########################################################################################################
# Purpose: Contains additional measures and calculations from CampaignInsightsDailyAgg table, Placement Details nested records.
#
#########################################################################################################

include: "/views/base/campaigninsightsdailyagg__placement_details.view"

view: +campaigninsightsdailyagg__placement_details {

  ######### PRIMARY KEY #########
  dimension: campaigninsightsdailyagg__placement_details_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${campaigninsightsdailyagg.campaign_id} AS STRING), CAST(${campaigninsightsdailyagg.report_date} AS STRING), CAST(${placement} AS STRING)) ;;
  }

  measure: sum_of_impressions_placement {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your ads were on screen."
    sql: ${impressions} ;;
  }

  measure: sum_of_spend_placement {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The estimated total amount of money you've spent on your campaign, ad set or ad during its schedule. This metric is estimated."
    sql: ${spend} ;;
  }

  measure: sum_of_link_clicks_placement {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of clicks on links within the ad that led to advertiser-specified destinations, on or off Meta technologies."
    sql: ${link_clicks} ;;
  }

  measure: sum_of_video_views_placement {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your video plays for at least 3 seconds."
    sql: ${video_views} ;;
  }

  measure: sum_of_video_p95_watched_actions_video_views_placement {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your video was played at 95% of its length, including plays that skipped to this point."
    sql: ${video_p95_watched_actions_video_views} ;;
  }

  measure: cpm_placement {
    type: number
    label: "CPM Placement"
    value_format_name: usd
    description: "The average cost for 1,000 impressions."
    sql: SAFE_DIVIDE(${sum_of_spend_placement}, ${sum_of_impressions_placement} / 1000) ;;
  }

  measure: link_ctr_placement {
    type: number
    label: "Link CTR Placement"
    description: "The number of clicks that your ad receives divided by the number of times your ad is shown."
    sql: SAFE_DIVIDE(${sum_of_link_clicks_placement}, ${sum_of_impressions_placement}) ;;
    value_format_name: percent_2
  }

  measure: vtr_placement {
    type: number
    label: "VTR Placement"
    description: "The video p95 watched actions divided by impressions."
    sql: SAFE_DIVIDE(${sum_of_video_p95_watched_actions_video_views_placement}, ${sum_of_impressions_placement}) ;;
    value_format_name: percent_2
  }

  measure: cpcv_placement {
    type: number
    label: "CPCV Placement"
    value_format_name: usd
    description: "Pay for a video ad once the user watches a video in its entirety."
    sql: SAFE_DIVIDE(${sum_of_spend_placement}, ${sum_of_video_p95_watched_actions_video_views_placement}) ;;
  }

  dimension: platformplacementgroup {
    type: string
    label: "Platform Placement Group"
    sql: CASE
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'feed' THEN 'Facebook Feed'
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'facebook_reels' THEN 'Facebook Reels'
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'facebook_stories' THEN 'Facebook Stories'
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'instream_video' THEN 'Ads on Facebook Reels'
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'search' THEN 'Facebook Search Results'
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'marketplace' THEN 'Facebook Marketplace'
      WHEN ${TABLE}.publisher_platform = 'facebook' AND ${TABLE}.platform_position = 'instream_video' THEN 'Facebook in-stream video'
      WHEN ${TABLE}.publisher_platform = 'instagram' AND ${TABLE}.platform_position = 'feed' THEN 'Instagram Feed'
      WHEN ${TABLE}.publisher_platform = 'instagram' AND ${TABLE}.platform_position = 'instagram_explore' THEN 'Instagram Explore'
      WHEN ${TABLE}.publisher_platform = 'instagram' AND ${TABLE}.platform_position = 'instagram_explore_grid_home' THEN 'Instagram Explore Home'
      WHEN ${TABLE}.publisher_platform = 'instagram' AND ${TABLE}.platform_position = 'instagram_profile_feed' THEN 'Instagram Profile Feed'
      WHEN ${TABLE}.publisher_platform = 'instagram' AND ${TABLE}.platform_position = 'instagram_reels' THEN 'Instagram Reels'
      WHEN ${TABLE}.publisher_platform = 'instagram' AND ${TABLE}.platform_position = 'instagram_stories' THEN 'Instagram Stories'
      WHEN ${TABLE}.publisher_platform = 'audience_network' AND ${TABLE}.platform_position = 'an_classic' THEN 'Audience Network Classic'
      WHEN ${TABLE}.publisher_platform = 'audience_network' AND ${TABLE}.platform_position = 'rewarded_video' THEN 'Audience Network Rewarded Video'
      ELSE NULL
      END ;;
    order_by_field:platform
  }

  measure: sum_of_video_views_facebook {
    type: number
    description: "The number of times your video plays for at least 3 seconds on Facebook platform."
    sql: SUM(IF(${platform} = "facebook",${video_views},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_video_views_instagram {
    type: number
    description: "The number of times your video plays for at least 3 seconds on Instagram platform."
    sql: SUM(IF(${platform} = "instagram",${video_views},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_video_views_audience_network {
    type: number
    description: "The number of times your video plays for at least 3 seconds on Instagram platform."
    sql: SUM(IF(${platform} = "audience_network",${video_views},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_impressions_facebook {
    type: number
    description: "The number of times your ads were on screen on Facebook platform."
    sql: SUM(IF(${platform} = "facebook",${impressions},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_impressions_instagram {
    type: number
    description: "The number of times your ads were on screen on Instagram platform."
    sql: SUM(IF(${platform} = "instagram",${impressions},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_impressions_audience_network {
    type: number
    description: "The number of times your ads were on screen on Audience Network platform."
    sql: SUM(IF(${platform} = "audience_network",${impressions},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

}
