#########################################################################################################
# Purpose: Contains additional measures and calculations from CampaignInsightsDailyAgg table.
#
#########################################################################################################

include: "/views/base/campaigninsightsdailyagg.view"
# The name of this view in Looker is "Campaign Insights"
view: +campaigninsightsdailyagg {
  view_label: "Campaign Insights Daily Agg"

  ######### PRIMARY KEY #########
  dimension: campaigninsightsdailyagg_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(${campaign_id}, ${report_date}) ;;
  }

  filter: date_filter {
    type: date
  }

  measure: sum_of_impressions {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your ads were on screen."
    sql: ${impressions} ;;
  }

  measure: sum_of_video_views {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your video plays for at least 3 seconds."
    sql: ${video_views} ;;
  }

  measure: sum_of_spend {
    type: sum
    value_format_name: "positive_usd_m_or_k"
    description: "The estimated total amount of money you've spent on your campaign, ad set or ad during its schedule. This metric is estimated."
    sql: ${spend} ;;
  }

  measure: sum_of_post_engagements {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Post engagements are the total number of actions that people take involving your ads."
    sql: ${post_engagements} ;;
  }

  measure: sum_of_clicks {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of clicks on links within the ad that led to advertiser-specified destinations, on or off Meta technologies."
    sql: ${link_clicks} ;;
  }

  measure: sum_of_reach {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of people who saw your ads at least once."
    sql: ${reach} ;;
  }

  measure: sum_of_post_shares {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of shares of your ads. People can share your ads or posts on their own or friends' Timelines, in groups and on their own Pages."
    sql: ${post_shares} ;;
  }

  measure: sum_of_post_reactions {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of reactions on your ads."
    sql: ${post_reactions} ;;
  }

  measure: sum_of_post_saves {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Post saves counts the number of times your ad was saved by people who want to revisit it at a later time."
    sql: ${post_saves} ;;
  }

  measure: sum_of_post_comments {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of comments on your ads."
    sql: ${post_comments} ;;
  }

  measure: sum_of_page_likes {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of likes of your Facebook Page, attributed to your ads."
    sql: ${page_likes} ;;
  }

  measure: sum_of_video_p95_watched_actions_video_views {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of times your video was played at 95% of its length, including plays that skipped to this point."
    sql: ${video_p95_watched_actions_video_views} ;;
  }

  measure: sum_of_link_clicks {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of clicks on links within the ad that led to advertiser-specified destinations, on or off Meta technologies."
    sql: ${link_clicks} ;;
  }

  measure: cpm {
    label: "CPM"
    type: number
    value_format_name: usd
    description: "The average cost for 1,000 impressions."
    sql: SAFE_DIVIDE(${sum_of_spend}, ${sum_of_impressions} / 1000) ;;
  }

  measure: engagement_rate {
    type: number
    description: "The total engagement divided by total reach."
    sql: SAFE_DIVIDE(${sum_of_post_engagements}, ${sum_of_reach}) ;;
    value_format_name: percent_2
  }

  measure: link_ctr {
    type: number
    label: "Link CTR"
    description: "The number of clicks that your ad receives divided by the number of times your ad is shown."
    sql: SAFE_DIVIDE(${sum_of_link_clicks}, ${sum_of_impressions}) ;;
    value_format_name: percent_2
  }

  measure: cpe {
    type: number
    label: "CPE"
    description: "Compares the cost to the total amount of engagements on a Facebook post that include: likes and reactions. comments. shares."
    sql: SAFE_DIVIDE(${sum_of_spend}, ${sum_of_post_engagements}) ;;
    value_format_name: percent_2
  }

  measure: cpcv {
    type: number
    label: "CPCV"
    value_format_name: usd
    description: "Pay for a video ad once the user watches a video in its entirety."
    sql: SAFE_DIVIDE(${sum_of_spend}, ${sum_of_video_p95_watched_actions_video_views}) ;;
  }

  measure: frequency {
    type: number
    description: "The average number of times each person saw your ad. This metric is estimated."
    sql: SAFE_DIVIDE(${sum_of_impressions}, ${sum_of_reach}) ;;
    value_format_name: decimal_2
  }

  measure: vtr {
    type: number
    label: "VTR"
    description: "The video p95 watched actions divided by impressions."
    sql: SAFE_DIVIDE(${sum_of_video_p95_watched_actions_video_views}, ${sum_of_impressions}) ;;
    value_format_name: percent_2
  }

  measure: cumulative_sum_of_spend {
    type: running_total
    description: "The cumulative estimated total amount of money you've spent on your campaign, ad set or ad during its schedule. This metric is estimated."
    sql: ${sum_of_spend} ;;
    value_format_name: "positive_usd_m_or_k"
  }

}
