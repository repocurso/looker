# ---------------------------------------
# view : departments
# ---------------------------------------

view: departments {
  derived_table: {
    sql:
        SELECT 10 AS department_id,
               'Administration' AS department_name,
               200 AS manager_id,
               1700 AS location_id
        UNION ALL
        SELECT 20, 'Marketing', 201, 1800                             UNION ALL
        SELECT 30, 'Purchasing', 114, 1700                            UNION ALL
        SELECT 40, 'Human Resources', 203, 2400                       UNION ALL
        SELECT 50, 'Shipping', 121, 1500                              UNION ALL
        SELECT 60, 'IT', 103, 1400                                    UNION ALL
        SELECT 70, 'Public Relations', 204, 2700                      UNION ALL
        SELECT 80, 'Sales', 145, 2500                                 UNION ALL
        SELECT 90, 'Executive', 100, 1700                             UNION ALL
        SELECT 100, 'Finance', 108, 1700                              UNION ALL
        SELECT 110, 'Accounting', 205, 1700                           UNION ALL
        SELECT 120, 'Treasury', CAST(NULL AS INT64), 1700             UNION ALL
        SELECT 130, 'Corporate Tax', CAST(NULL AS INT64), 1700        UNION ALL
        SELECT 140, 'Control And Credit', CAST(NULL AS INT64), 1700   UNION ALL
        SELECT 150, 'Shareholder Services', CAST(NULL AS INT64), 1700 UNION ALL
        SELECT 160, 'Benefits', CAST(NULL AS INT64), 1700             UNION ALL
        SELECT 170, 'Manufacturing', CAST(NULL AS INT64), 1700        UNION ALL
        SELECT 180, 'Construction', CAST(NULL AS INT64), 1700         UNION ALL
        SELECT 190, 'Contracting', CAST(NULL AS INT64), 1700          UNION ALL
        SELECT 200, 'Operations', CAST(NULL AS INT64), 1700           UNION ALL
        SELECT 210, 'IT Support', CAST(NULL AS INT64), 1700           UNION ALL
        SELECT 220, 'NOC', CAST(NULL AS INT64), 1700                  UNION ALL
        SELECT 230, 'IT Helpdesk', CAST(NULL AS INT64), 1700          UNION ALL
        SELECT 240, 'Government Sales', CAST(NULL AS INT64), 1700     UNION ALL
        SELECT 250, 'Retail Sales', CAST(NULL AS INT64), 1700         UNION ALL
        SELECT 260, 'Recruiting', CAST(NULL AS INT64), 1700           UNION ALL
        SELECT 270, 'Payroll', CAST(NULL AS INT64), 1700
        ;;

    # datagroup_trigger: departments_refresh
  }

  dimension: department_id {
    primary_key:  yes
    type: number
    sql: ${TABLE}.department_id ;;
  }

  dimension: department_name {
    label: "Department"
    type: string
    sql: ${TABLE}.department_name ;;
  }

  dimension: manager_id {
    type: number
    sql: ${TABLE}.manager_id ;;
  }

  dimension: manager_name {
    label: "Department Manager"
    type: string
    sql: concat(${department_manager.first_name}," ",${department_manager.last_name}) ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  measure: department_count {
    label: "Number of Departments"
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [department_id, department_name]
  }
}
