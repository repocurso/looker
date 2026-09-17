# ---------------------------------------
# view : jobs
# ---------------------------------------

view: jobs {
  derived_table: {
    sql:
        SELECT 'AD_PRES' AS job_id,
               'President' AS job_title,
               20080 AS min_salary,
               40000 AS max_salary
        UNION ALL
        SELECT 'AD_VP', 'Administration Vice President', 15000, 30000    UNION ALL
        SELECT 'AD_ASST', 'Administration Assistant', 3000, 6000         UNION ALL
        SELECT 'FI_MGR', 'Finance Manager', 8200, 16000                  UNION ALL
        SELECT 'FI_ACCOUNT', 'Accountant', 4200, 9000                    UNION ALL
        SELECT 'AC_MGR', 'Accounting Manager', 8200, 16000               UNION ALL
        SELECT 'AC_ACCOUNT', 'Public Accountant', 4200, 9000             UNION ALL
        SELECT 'SA_MAN', 'Sales Manager', 10000, 20080                   UNION ALL
        SELECT 'SA_REP', 'Sales Representative', 6000, 12008             UNION ALL
        SELECT 'PU_MAN', 'Purchasing Manager', 8000, 15000               UNION ALL
        SELECT 'PU_CLERK', 'Purchasing Clerk', 2500, 5500                UNION ALL
        SELECT 'ST_MAN', 'Stock Manager', 5500, 8500                     UNION ALL
        SELECT 'ST_CLERK', 'Stock Clerk', 2008, 5000                     UNION ALL
        SELECT 'SH_CLERK', 'Shipping Clerk', 2500, 5500                  UNION ALL
        SELECT 'IT_PROG', 'Programmer', 4000, 10000                      UNION ALL
        SELECT 'MK_MAN', 'Marketing Manager', 9000, 15000                UNION ALL
        SELECT 'MK_REP', 'Marketing Representative', 4000, 9000          UNION ALL
        SELECT 'HR_REP', 'Human Resources Representative', 4000, 9000    UNION ALL
        SELECT 'PR_REP', 'Public Relations Representative', 4500, 10500
        ;;

    # datagroup_trigger: jobs_datagroup
  }

  dimension: job_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  dimension: min_salary {
    type: number
    label: "Minimum Salary"
    sql: ${TABLE}.min_salary ;;
    value_format: "#,##0"
  }

  dimension: max_salary {
    type: number
    label: "Maximum Salary"
    sql: ${TABLE}.max_salary ;;
    value_format: "#,##0"
  }

  measure: job_count {
    type: count
    label: "Number of Job Types"
    drill_fields: [detail*]
  }

  set: detail {
    fields: [job_id, job_title, min_salary, max_salary]
  }
}
