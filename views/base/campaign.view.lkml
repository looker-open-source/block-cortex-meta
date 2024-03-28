view: campaign {
  sql_table_name: `@{GCP_PROJECT_ID}.@{REPORTING_DATASET}.Campaign` ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}
