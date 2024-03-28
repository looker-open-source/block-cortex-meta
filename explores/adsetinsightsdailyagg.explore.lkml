include: "/views/core/adset*.view"

explore: adsetinsightsdailyagg {
  label: "Adset Insights"
  join: adsetinsightsdailyagg__targeting_audiences {
    view_label: "Adset Insights Daily Agg: Targeting Audiences"
    type: left_outer
    sql_on: ${adsetinsightsdailyagg__targeting_audiences.adset_id} = ${adsetinsightsdailyagg.adset_id} ;;
    relationship: one_to_many
  }
  join: adsetinsightsdailyagg__placement_details {
    view_label: "Adset Insights Daily Agg: Placement Details"
    sql: LEFT JOIN UNNEST(${adsetinsightsdailyagg.placement_details}) AS adsetinsightsdailyagg__placement_details WITH OFFSET AS adsetinsightsdailyagg__placement_details_offset ;;
    relationship: one_to_many
  }
  join: adsetinsightsdailyagg__platform_details {
    view_label: "Adset Insights Daily Agg: Platform Details"
    sql: LEFT JOIN UNNEST(${adsetinsightsdailyagg.platform_details}) AS adsetinsightsdailyagg__platform_details ;;
    relationship: one_to_many
  }
}
