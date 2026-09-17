# ---------------------------------------
# view : emp
# ---------------------------------------

view: emp {
  derived_table: {
    sql:
      SELECT 7369 AS empno, 
             'SMITH' AS ename, 
             'CLERK' AS job, 
             7902 AS mgr, 
             DATE '1980-12-17' AS hiredate, 
             800 AS sal, 
             CAST(NULL AS NUMERIC) AS comm, 
             20 AS deptno
      UNION ALL
      SELECT 7499, 'ALLEN', 'SALESMAN', 7698, DATE '1981-02-20', 1600, 300, 30
      UNION ALL
      SELECT 7521, 'WARD', 'SALESMAN', 7698, DATE '1981-02-22', 1250, 500, 30
      UNION ALL
      SELECT 7566, 'JONES', 'MANAGER', 7839, DATE '1981-04-02', 2975, CAST(NULL AS NUMERIC), 20
      UNION ALL
      SELECT 7654, 'MARTIN', 'SALESMAN', 7698, DATE '1981-09-28', 1250, 1400, 30
      UNION ALL
      SELECT 7698, 'BLAKE', 'MANAGER', 7839, DATE '1981-05-01', 2850, CAST(NULL AS NUMERIC), 30
      UNION ALL
      SELECT 7782, 'CLARK', 'MANAGER', 7839, DATE '1981-06-09', 2450, CAST(NULL AS NUMERIC), 10
      UNION ALL
      SELECT 7788, 'SCOTT', 'ANALYST', 7566, DATE '1987-04-19', 3000, CAST(NULL AS NUMERIC), 20
      UNION ALL
      SELECT 7839, 'KING', 'PRESIDENT', CAST(NULL AS INT64), DATE '1981-11-17', 5000, CAST(NULL AS NUMERIC), 10
      UNION ALL
      SELECT 7844, 'TURNER', 'SALESMAN', 7698, DATE '1981-09-08', 1500, 0, 30
      UNION ALL
      SELECT 7876, 'ADAMS', 'CLERK', 7788, DATE '1987-05-23', 1100, CAST(NULL AS NUMERIC), 20
      UNION ALL
      SELECT 7900, 'JAMES', 'CLERK', 7698, DATE '1981-12-03', 950, CAST(NULL AS NUMERIC), 30
      UNION ALL
      SELECT 7902, 'FORD', 'ANALYST', 7566, DATE '1981-12-03', 3000, CAST(NULL AS NUMERIC), 20
      UNION ALL
      SELECT 7934, 'MILLER', 'CLERK', 7782, DATE '1982-01-23', 1300, CAST(NULL AS NUMERIC), 10
    ;;
  }  

  dimension: empno { primary_key: yes 
             label: "Employee Number" type: number sql: ${TABLE}.empno ;; value_format: "0"}
  dimension: ename { label: "Employee Name" type: string sql: ${TABLE}.ename ;; }
  dimension: job { type: string sql: ${TABLE}.job ;; }
  dimension: mgr { label: "Manager ID" type: number sql: ${TABLE}.mgr ;; value_format: "0"}
  dimension_group: hire { type: time timeframes: [raw, date, month, quarter, year] sql: ${TABLE}.hiredate ;; }
  dimension: sal { label: "Salary" type: number sql: ${TABLE}.sal ;; value_format_name: decimal_2 }
  dimension: comm { label: "Commission" type: number sql: ${TABLE}.comm ;; value_format_name: decimal_2 }
  dimension: deptno { label: "Department Number" type: number sql: ${TABLE}.deptno ;; }

  dimension: manager_name {
    label: "Manager Name"
    type: string
    sql: ${manager.ename} ;;
  }

  measure: employee_count { type: count }
  measure: total_salary { type: sum sql: ${sal} ;; value_format_name: decimal_2 }
  measure: average_salary { type: average sql: ${sal} ;; value_format_name: decimal_2 }
  measure: maximum_salary { type: max sql: ${sal} ;; value_format_name: decimal_2 }
  measure: minimum_salary { type: min sql: ${sal} ;; value_format_name: decimal_2 }
  measure: total_commission { type: sum sql: ${comm} ;; value_format_name: decimal_2 }
}
