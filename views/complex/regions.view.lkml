# ---------------------------------------
# view : regions
# ---------------------------------------

view: regions {
  derived_table: {
    sql:
        SELECT 10 AS region_id,
               'Europe' AS region_name
        UNION ALL
        SELECT 20, 'Americas'   UNION ALL
        SELECT 30, 'Asia'       UNION ALL
        SELECT 40, 'Oceania'    UNION ALL
        SELECT 50, 'Africa'
        ;;
  }

  dimension: region_id {
    primary_key:  yes
    type: number
    sql: ${TABLE}.region_id ;;
  }

  dimension: region_name {
    label: "Region"
    type: string
    sql: ${TABLE}.region_name ;;
  }

  measure: region_count {
    type: count
    label: "Number of Regions"
  }
}
