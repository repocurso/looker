# ---------------------------------------
# view : countries
# ---------------------------------------

view: countries {
  derived_table: {
    sql:
        SELECT 'IT' AS country_id,
               'Italy' AS country_name,
               10 AS region_id
        UNION ALL
        SELECT 'JP', 'Japan', 30  UNION ALL
        SELECT 'US', 'United States of America', 20 UNION ALL
        SELECT 'CA', 'Canada', 20 UNION ALL
        SELECT 'CN', 'China', 30  UNION ALL
        SELECT 'IN', 'India', 30  UNION ALL
        SELECT 'AU', 'Australia', 40 UNION ALL
        SELECT 'ZW', 'Zimbabwe', 50  UNION ALL
        SELECT 'SG', 'Singapore', 30 UNION ALL
        SELECT 'GB', 'United Kingdom of Great Britain and Northern Ireland', 10 UNION ALL
        SELECT 'FR', 'France', 10    UNION ALL
        SELECT 'DE', 'Germany', 10   UNION ALL
        SELECT 'ZM', 'Zambia', 50    UNION ALL
        SELECT 'EG', 'Egypt', 50     UNION ALL
        SELECT 'BR', 'Brazil', 20    UNION ALL
        SELECT 'CH', 'Switzerland', 10 UNION ALL
        SELECT 'NL', 'Netherlands', 10 UNION ALL
        SELECT 'MX', 'Mexico', 20    UNION ALL
        SELECT 'KW', 'Kuwait', 30    UNION ALL
        SELECT 'IL', 'Israel', 30    UNION ALL
        SELECT 'DK', 'Denmark', 10   UNION ALL
        SELECT 'ML', 'Malaysia', 30  UNION ALL
        SELECT 'NG', 'Nigeria', 50   UNION ALL
        SELECT 'AR', 'Argentina', 20 UNION ALL
        SELECT 'BE', 'Belgium', 10
        ;;

    # persist_for: "24 hours"
  }

  dimension: country_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    label: "Country"
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  measure: country_count {
    label: "Number of Countries"
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [country_id, country_name]
  }
}
