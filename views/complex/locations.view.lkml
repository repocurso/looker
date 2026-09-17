# ---------------------------------------
# view : locations
# ---------------------------------------

view: locations {
  derived_table: {
    sql:
        SELECT 1000 AS location_id,
               '1297 Via Cola di Rie' AS street_address,
               '00989' AS postal_code,
               'Roma' AS city,
               CAST(NULL AS STRING) AS state_province,
               'IT' AS country_id
        UNION ALL
        SELECT 1100, '93091 Calle della Testa', '10934', 'Venice', CAST(NULL AS STRING), 'IT'         UNION ALL
        SELECT 1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'                    UNION ALL
        SELECT 1300, '9450 Kamiya-cho', '6823', 'Hiroshima', CAST(NULL AS STRING), 'JP'               UNION ALL
        SELECT 1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'                       UNION ALL
        SELECT 1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'        UNION ALL
        SELECT 1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'                 UNION ALL
        SELECT 1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'                        UNION ALL
        SELECT 1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'                         UNION ALL
        SELECT 1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'                        UNION ALL
        SELECT 2000, '40-5-12 Laogianggen', '190518', 'Beijing', CAST(NULL AS STRING), 'CN'           UNION ALL
        SELECT 2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'                    UNION ALL
        SELECT 2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'               UNION ALL
        SELECT 2300, '198 Clementi North', '540198', 'Singapore', CAST(NULL AS STRING), 'SG'          UNION ALL
        SELECT 2400, '8204 Arthur St', CAST(NULL AS STRING), 'London', CAST(NULL AS STRING), 'GB'     UNION ALL
        SELECT 2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'GB'  UNION ALL
        SELECT 2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'GB'              UNION ALL
        SELECT 2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'                      UNION ALL
        SELECT 2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'             UNION ALL
        SELECT 2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'                      UNION ALL
        SELECT 3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'                                  UNION ALL
        SELECT 3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'                UNION ALL
        SELECT 3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX'
        ;;
  }

  filter: city_filter {
    label: "City Filter"
    type: string
  }

  dimension: location_id {
    primary_key:  yes
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state_province {
    type: string
    sql: ${TABLE}.state_province ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  measure: location_count {
    type: count
    label: "Number of Locations"
  }
}
