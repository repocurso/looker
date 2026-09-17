# ---------------------------------------
# view : dept
# ---------------------------------------

view: dept {
  derived_table: {
    sql:
      SELECT 10 AS deptno, 
             'ACCOUNTING' AS dname, 
             'NEW YORK' AS loc
      UNION ALL
      SELECT 20, 'RESEARCH', 'DALLAS' UNION ALL
      SELECT 30, 'SALES', 'CHICAGO'   UNION ALL
      SELECT 40, 'OPERATIONS', 'BOSTON'
    ;;
  }

  dimension: deptno { primary_key: yes 
             label: "Department Number" type: number sql: ${TABLE}.deptno ;; }
  dimension: dname { label: "Department Name" type: string sql: ${TABLE}.dname ;; }
  dimension: loc { label: "Location" type: string sql: ${TABLE}.loc ;; }
  measure: department_count { type: count }
}
