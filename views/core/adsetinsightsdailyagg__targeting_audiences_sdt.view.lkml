#########################################################################################################
# Purpose: Contains additional measures and calculations from CampaignInsightsDailyAgg table.
#
#########################################################################################################

include: "/views/base/adsetinsightsdailyagg__targeting_audiences.view"
# The name of this view in Looker is "Adset Insights"
view: +adsetinsightsdailyagg__targeting_audiences {
  derived_table: {
    sql: SELECT DISTINCT
             adset_id,
             STRING_AGG(DISTINCT targeting_audiences.name, ' + ') AS adset_audience
         FROM `@{GCP_PROJECT_ID}.@{REPORTING_DATASET}.AdsetInsightsDailyAgg`
         LEFT JOIN UNNEST(targeting_audiences) AS targeting_audiences
         GROUP BY
             adset_id
         ;;

  }

  ######### PRIMARY KEY #########
  dimension: adsetinsightsdailyagg__targeting_audiences_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(${TABLE}.adset_id) ;;
  }
  dimension: adset_id {
    type: number
    description: "The unique ID of the ad set you're viewing in reporting."
    hidden: yes
    sql: ${TABLE}.adset_id ;;
  }
  dimension: adset_audience {
    type: string
    description: "Names of the audiences or interests."
    sql: ${TABLE}.adset_audience ;;
  }
}
