view: revenue {
  sql_table_name: public.revenue ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."account_id" ;;
  }

  dimension: amount_usd {
    type: number
    sql: ${TABLE}."amount_usd" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}."charge_id" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."company_id" ;;
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

  dimension: invoice_amount {
    type: number
    sql: ${TABLE}."invoice_amount" ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}."invoice_id" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."parent_id" ;;
  }

  dimension: reward_amount {
    type: number
    sql: ${TABLE}."reward_amount" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
