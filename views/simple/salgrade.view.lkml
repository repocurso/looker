# ---------------------------------------
# view : salgrade
# ---------------------------------------

view: salgrade {
  derived_table: {
    sql:
      SELECT 1 AS grade, 
             700 AS losal, 
             1200 AS hisal
      UNION ALL
      SELECT 2, 1201, 1400  UNION ALL
      SELECT 3, 1401, 2000  UNION ALL
      SELECT 4, 2001, 3000  UNION ALL
      SELECT 5, 3001, 9999
    ;;
  }
  dimension: grade { primary_key: yes 
             type: number sql: ${TABLE}.grade ;; }
  dimension: losal { label: "Minimum Salary" type: number sql: ${TABLE}.losal ;; }
  dimension: hisal { label: "Maximum Salary" type: number sql: ${TABLE}.hisal ;; }
  measure: salary_grade_count { type: count }
}
