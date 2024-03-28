#########################################################################################################
# Purpose: Contains additional measures and calculations from CampaignInsightsDailyAgg table.
#
#########################################################################################################

include: "/views/base/adsetinsightsdailyagg__platform_details.view"

view: +adsetinsightsdailyagg__platform_details {

  ######### PRIMARY KEY #########
  dimension: adsetinsightsdailyagg__platform_details_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${adsetinsightsdailyagg.adset_id} AS STRING), CAST(${adsetinsightsdailyagg.date} AS STRING), CAST(${platform} AS STRING)) ;;
  }

  dimension: platform_proper {
    type: string
    sql: INITCAP(${adsetinsightsdailyagg__platform_details.platform}) ;;
  }

  measure: sum_of_post_engagements_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Post engagements are the total number of actions that people take involving your ads."
    sql: ${post_engagements} ;;
  }

  measure: sum_of_reach_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The number of people who saw your ads at least once."
    sql: ${reach} ;;
  }

  measure: sum_of_spend_adset {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "The estimated total amount of money you've spent on your campaign, ad set or ad during its schedule. This metric is estimated."
    sql: ${spend} ;;
  }

  measure: engagement_rate_adset{
    type: number
    description: "The total engagement divided by total reach."
    sql: SAFE_DIVIDE(${sum_of_post_engagements_adset}, ${sum_of_reach_adset}) ;;
    value_format_name: percent_2
  }

  measure: cpe_adset{
    type: number
    label: "CPE Adset"
    description: "Compares the cost to the total amount of engagements on a Facebook post that include: likes and reactions. comments. shares."
    sql: SAFE_DIVIDE(${sum_of_spend_adset}, ${sum_of_post_engagements_adset}) ;;
    value_format_name: percent_2
  }

  measure: sum_of_post_engagements_facebook {
    type: number
    description: "Total number of actions that people take involving your ads on Facebook platform."
    sql: SUM(IF(${platform_proper}='Facebook',${post_engagements},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_post_engagements_instagram {
    type: number
    description: "Total number of actions that people take involving your ads on Instagram platform."
    sql: SUM(IF(${platform_proper}='Instagram',${post_engagements},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  measure: sum_of_post_engagements_audience_network {
    type: number
    description: "Total number of actions that people take involving your ads on Audience Network platform."
    sql: SUM(IF(${platform_proper}='Audience_Network',${post_engagements},NULL)) ;;
    value_format_name: "positive_m_or_k"
  }

  dimension: platform_adset_audience {
    type: string
    sql: CONCAT(REPLACE(${adsetinsightsdailyagg__platform_details.platform_proper},'_',' '),' - ',${adsetinsightsdailyagg__targeting_audiences.adset_audience}) ;;
  }

}
