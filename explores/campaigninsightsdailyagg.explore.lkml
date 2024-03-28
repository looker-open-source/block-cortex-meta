#include: "/views/core/campaigninsightsdailyagg_rfn.view"
# include: "/views/**/*.view.lkml"
include: "/views/core/campaigninsights*.view"

#explore: campaigninsightsdailyagg {
#  label: "Campaign Insights"
 # join: adsetinsightsdailyagg {
 #   type: left_outer
 #   relationship: many_to_one
 #   sql_on: ${campaigninsightsdailyagg.campaign_id} = ${adsetinsightsdailyagg.campaign_id} and ${campaigninsightsdailyagg.report_date} = ${adsetinsightsdailyagg.report_date} and ${campaigninsightsdailyagg.account_id} = ${adsetinsightsdailyagg.account_id};;
 # }
#}

explore: campaigninsightsdailyagg {
  label: "Campaign Insights"
  join: campaigninsightsdailyagg__placement_details {
    view_label: "Campaign Insights Daily Agg: Placement Details"
    sql: LEFT JOIN UNNEST(${campaigninsightsdailyagg.placement_details}) AS campaigninsightsdailyagg__placement_details ;;
    relationship: one_to_many
  }
  # join: campaign {
  #   view_label: "Campaign"
  #   type: left_outer
  #   sql_on: ${campaigninsightsdailyagg.campaign_name} = ${campaign.name} ;;
  #   relationship: many_to_one
  # }
}

# explore: adsetinsightsdailyagg {
#   label: "Adset Insights"
#   join: adsetinsightsdailyagg__targeting_audiences {
#     view_label: "Adset Insights Daily Agg: Targeting Audiences"
#     type: left_outer
#     sql_on: ${adsetinsightsdailyagg__targeting_audiences.adset_id} = ${adsetinsightsdailyagg.adset_id} ;;
#     relationship: one_to_many
#   }
#   join: adsetinsightsdailyagg__placement_details {
#     view_label: "Adset Insights Daily Agg: Placement Details"
#     sql: LEFT JOIN UNNEST(${adsetinsightsdailyagg.placement_details}) AS adsetinsightsdailyagg__placement_details WITH OFFSET AS adsetinsightsdailyagg__placement_details_offset ;;
#     relationship: one_to_many
#   }
#   join: adsetinsightsdailyagg__platform_details {
#     view_label: "Adset Insights Daily Agg: Platform Details"
#     sql: LEFT JOIN UNNEST(${adsetinsightsdailyagg.platform_details}) AS adsetinsightsdailyagg__platform_details ;;
#     relationship: one_to_many
#   }
# }

# explore: campaign {
#   }
