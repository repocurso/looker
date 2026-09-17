# ---------------------------------------
# view : job_history
# ---------------------------------------

view: job_history {
  derived_table: {
    sql:
        SELECT 102 AS employee_id,
               DATE '2011-01-13' AS start_date,
               DATE '2016-07-24' AS end_date,
               'IT_PROG' AS job_id,
               60 AS department_id
        UNION ALL
        SELECT 101, DATE '2007-09-21', DATE '2011-10-27', 'AC_ACCOUNT', 110 UNION ALL
        SELECT 101, DATE '2011-10-28', DATE '2015-03-15', 'AC_MGR', 110     UNION ALL
        SELECT 201, DATE '2014-02-17', DATE '2017-12-19', 'MK_REP', 20      UNION ALL
        SELECT 114, DATE '2016-03-24', DATE '2017-12-31', 'ST_CLERK', 50    UNION ALL
        SELECT 122, DATE '2017-01-01', DATE '2017-12-31', 'ST_CLERK', 50    UNION ALL
        SELECT 200, DATE '2005-09-17', DATE '2011-06-17', 'AD_ASST', 90     UNION ALL
        SELECT 176, DATE '2016-03-24', DATE '2016-12-31', 'SA_REP', 80      UNION ALL
        SELECT 176, DATE '2017-01-01', DATE '2017-12-31', 'SA_MAN', 80      UNION ALL
        SELECT 200, DATE '2012-07-01', DATE '2016-12-31', 'AC_ACCOUNT', 90
        ;;

    # datagroup_trigger: jobs_datagroup
  }

  dimension: history_id {
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${TABLE}.employee_id AS STRING), "-", CAST(${TABLE}.start_date AS STRING)) ;;
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.employee_id ;;
  }

  dimension: start_date {
    type: date
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: end_date {
    type: date
    datatype: date
    sql: ${TABLE}.end_date ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.department_id ;;
  }

  measure: history_count {
    type: count
    label: "Job History Records"
  }

  measure: employees_with_history {
    type: count_distinct
    sql: ${employee_id} ;;
    label: "Employees with Job History"
  }
}
