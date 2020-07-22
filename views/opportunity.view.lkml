view: opportunity {
  sql_table_name: public.opportunity ;;
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

  dimension: bdr_owner {
    type: string
    sql: ${TABLE}."bdr_owner" ;;
  }

  dimension_group: closedate {
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
    sql: ${TABLE}."closedate" ;;
  }

  dimension_group: createddate {
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
    sql: ${TABLE}."createddate" ;;
  }

  dimension: expectedrevenue {
    type: number
    sql: ${TABLE}."expectedrevenue" ;;
  }

  dimension: leadsource {
    type: string
    sql: ${TABLE}."leadsource" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: stagename {
    type: string
    sql: ${TABLE}."stagename" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, stagename]
  }
}
