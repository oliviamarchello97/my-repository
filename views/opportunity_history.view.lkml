view: opportunity_history {
  sql_table_name: public.opportunity_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."close_date" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."expected_revenue" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."forecast_category" ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}."opportunity_id" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."probability" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."stage" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
