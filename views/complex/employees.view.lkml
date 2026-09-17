# ---------------------------------------
# view : employees
# ---------------------------------------

view: employees {
  derived_table: {
    sql:
        SELECT 100 AS employee_id,
               'Steven' AS first_name,
              'King' AS last_name,
              'SKING' AS email,
              '1.515.555.0100' AS phone_number,
              DATE '2013-06-17' AS hire_date,
              'AD_PRES' AS job_id,
              24000 AS salary,
              CAST(NULL AS FLOAT64) AS commission_pct,
              CAST(NULL AS INT64) AS manager_id,
              90 AS department_id
        UNION ALL
        SELECT 101, 'Neena', 'Yang', 'NYANG', '1.515.555.0101', DATE '2015-09-21', 'AD_VP', 17000, CAST(NULL AS FLOAT64), 100, 90                   UNION ALL
        SELECT 102, 'Lex', 'Garcia', 'LGARCIA', '1.515.555.0102', DATE '2011-01-13', 'AD_VP', 17000, CAST(NULL AS FLOAT64), 100, 90                 UNION ALL
        SELECT 103, 'Alexander', 'James', 'AJAMES', '1.590.555.0103', DATE '2016-01-03', 'IT_PROG', 9000, CAST(NULL AS FLOAT64), 102, 60            UNION ALL
        SELECT 104, 'Bruce', 'Miller', 'BMILLER', '1.590.555.0104', DATE '2017-05-21', 'IT_PROG', 6000, CAST(NULL AS FLOAT64), 103, 60              UNION ALL
        SELECT 105, 'David', 'Williams', 'DWILLIAMS', '1.590.555.0105', DATE '2015-06-25', 'IT_PROG', 4800, CAST(NULL AS FLOAT64), 103, 60          UNION ALL
        SELECT 106, 'Valli', 'Jackson', 'VJACKSON', '1.590.555.0106', DATE '2016-02-05', 'IT_PROG', 4800, CAST(NULL AS FLOAT64), 103, 60            UNION ALL
        SELECT 107, 'Diana', 'Nguyen', 'DNGUYEN', '1.590.555.0107', DATE '2017-02-07', 'IT_PROG', 4200, CAST(NULL AS FLOAT64), 103, 60              UNION ALL
        SELECT 108, 'Nancy', 'Gruenberg', 'NGRUENBE', '1.515.555.0108', DATE '2012-08-17', 'FI_MGR', 12008, CAST(NULL AS FLOAT64), 101, 100         UNION ALL
        SELECT 109, 'Daniel', 'Faviet', 'DFAVIET', '1.515.555.0109', DATE '2012-08-16', 'FI_ACCOUNT', 9000, CAST(NULL AS FLOAT64), 108, 100         UNION ALL
        SELECT 110, 'John', 'Chen', 'JCHEN', '1.515.555.0110', DATE '2015-09-28', 'FI_ACCOUNT', 8200, CAST(NULL AS FLOAT64), 108, 100               UNION ALL
        SELECT 111, 'Ismael', 'Sciarra', 'ISCIARRA', '1.515.555.0111', DATE '2015-09-30', 'FI_ACCOUNT', 7700, CAST(NULL AS FLOAT64), 108, 100       UNION ALL
        SELECT 112, 'Jose Manuel', 'Urman', 'JMURMAN', '1.515.555.0112', DATE '2016-03-07', 'FI_ACCOUNT', 7800, CAST(NULL AS FLOAT64), 108, 100     UNION ALL
        SELECT 113, 'Luis', 'Popp', 'LPOPP', '1.515.555.0113', DATE '2017-12-07', 'FI_ACCOUNT', 6900, CAST(NULL AS FLOAT64), 108, 100               UNION ALL
        SELECT 114, 'Den', 'Li', 'DLI', '1.515.555.0114', DATE '2012-12-07', 'PU_MAN', 11000, CAST(NULL AS FLOAT64), 100, 30                        UNION ALL
        SELECT 115, 'Alexander', 'Khoo', 'AKHOO', '1.515.555.0115', DATE '2013-05-18', 'PU_CLERK', 3100, CAST(NULL AS FLOAT64), 114, 30             UNION ALL
        SELECT 116, 'Shelli', 'Baida', 'SBAIDA', '1.515.555.0116', DATE '2015-12-24', 'PU_CLERK', 2900, CAST(NULL AS FLOAT64), 114, 30              UNION ALL
        SELECT 117, 'Sigal', 'Tobias', 'STOBIAS', '1.515.555.0117', DATE '2015-07-24', 'PU_CLERK', 2800, CAST(NULL AS FLOAT64), 114, 30             UNION ALL
        SELECT 118, 'Guy', 'Himuro', 'GHIMURO', '1.515.555.0118', DATE '2016-11-15', 'PU_CLERK', 2600, CAST(NULL AS FLOAT64), 114, 30               UNION ALL
        SELECT 119, 'Karen', 'Colmenares', 'KCOLMENA', '1.515.555.0119', DATE '2017-08-10', 'PU_CLERK', 2500, CAST(NULL AS FLOAT64), 114, 30        UNION ALL
        SELECT 120, 'Matthew', 'Weiss', 'MWEISS', '1.650.555.0120', DATE '2014-07-18', 'ST_MAN', 8000, CAST(NULL AS FLOAT64), 100, 50               UNION ALL
        SELECT 121, 'Adam', 'Fripp', 'AFRIPP', '1.650.555.0121', DATE '2015-04-10', 'ST_MAN', 8200, CAST(NULL AS FLOAT64), 100, 50                  UNION ALL
        SELECT 122, 'Payam', 'Kaufling', 'PKAUFLIN', '1.650.555.0122', DATE '2013-05-01', 'ST_MAN', 7900, CAST(NULL AS FLOAT64), 100, 50            UNION ALL
        SELECT 123, 'Shanta', 'Vollman', 'SVOLLMAN', '1.650.555.0123', DATE '2015-10-10', 'ST_MAN', 6500, CAST(NULL AS FLOAT64), 100, 50            UNION ALL
        SELECT 124, 'Kevin', 'Mourgos', 'KMOURGOS', '1.650.555.0124', DATE '2017-11-16', 'ST_MAN', 5800, CAST(NULL AS FLOAT64), 100, 50             UNION ALL
        SELECT 125, 'Julia', 'Nayer', 'JNAYER', '1.650.555.0125', DATE '2015-07-16', 'ST_CLERK', 3200, CAST(NULL AS FLOAT64), 120, 50               UNION ALL
        SELECT 126, 'Irene', 'Mikkilineni', 'IMIKKILI', '1.650.555.0126', DATE '2016-09-28', 'ST_CLERK', 2700, CAST(NULL AS FLOAT64), 120, 50       UNION ALL
        SELECT 127, 'James', 'Landry', 'JLANDRY', '1.650.555.0127', DATE '2017-01-14', 'ST_CLERK', 2400, CAST(NULL AS FLOAT64), 120, 50             UNION ALL
        SELECT 128, 'Steven', 'Markle', 'SMARKLE', '1.650.555.0128', DATE '2018-03-08', 'ST_CLERK', 2200, CAST(NULL AS FLOAT64), 120, 50            UNION ALL
        SELECT 129, 'Laura', 'Bissot', 'LBISSOT', '1.650.555.0129', DATE '2015-08-20', 'ST_CLERK', 3300, CAST(NULL AS FLOAT64), 121, 50             UNION ALL
        SELECT 130, 'Mozhe', 'Atkinson', 'MATKINSO', '1.650.555.0130', DATE '2015-10-30', 'ST_CLERK', 2800, CAST(NULL AS FLOAT64), 121, 50          UNION ALL
        SELECT 131, 'James', 'Marlow', 'JAMRLOW', '1.650.555.0131', DATE '2015-02-16', 'ST_CLERK', 2500, CAST(NULL AS FLOAT64), 121, 50             UNION ALL
        SELECT 132, 'TJ', 'Olson', 'TJOLSON', '1.650.555.0132', DATE '2017-04-10', 'ST_CLERK', 2100, CAST(NULL AS FLOAT64), 121, 50                 UNION ALL
        SELECT 133, 'Jason', 'Mallin', 'JMALLIN', '1.650.555.0133', DATE '2014-06-14', 'ST_CLERK', 3300, CAST(NULL AS FLOAT64), 122, 50             UNION ALL
        SELECT 134, 'Michael', 'Rogers', 'MROGERS', '1.650.555.0134', DATE '2016-08-26', 'ST_CLERK', 2900, CAST(NULL AS FLOAT64), 122, 50           UNION ALL
        SELECT 135, 'Ki', 'Gee', 'KGEE', '1.650.555.0135', DATE '2017-12-12', 'ST_CLERK', 2400, CAST(NULL AS FLOAT64), 122, 50                      UNION ALL
        SELECT 136, 'Hazel', 'Philtanker', 'HPHILTAN', '1.650.555.0136', DATE '2018-02-06', 'ST_CLERK', 2200, CAST(NULL AS FLOAT64), 122, 50        UNION ALL
        SELECT 137, 'Renske', 'Ladwig', 'RLADWIG', '1.650.555.0137', DATE '2013-07-14', 'ST_CLERK', 3600, CAST(NULL AS FLOAT64), 123, 50            UNION ALL
        SELECT 138, 'Stephen', 'Stiles', 'SSTILES', '1.650.555.0138', DATE '2015-10-26', 'ST_CLERK', 3200, CAST(NULL AS FLOAT64), 123, 50           UNION ALL
        SELECT 139, 'John', 'Seo', 'JSEO', '1.650.555.0139', DATE '2016-02-12', 'ST_CLERK', 2700, CAST(NULL AS FLOAT64), 123, 50                    UNION ALL
        SELECT 140, 'Joshua', 'Patel', 'JPATEL', '1.650.555.0140', DATE '2016-04-06', 'ST_CLERK', 2500, CAST(NULL AS FLOAT64), 123, 50              UNION ALL
        SELECT 141, 'Trenna', 'Rajs', 'TRAJS', '1.650.555.0141', DATE '2013-10-17', 'ST_CLERK', 3500, CAST(NULL AS FLOAT64), 124, 50                UNION ALL
        SELECT 142, 'Curtis', 'Davies', 'CDAVIES', '1.650.555.0142', DATE '2015-01-29', 'ST_CLERK', 3100, CAST(NULL AS FLOAT64), 124, 50            UNION ALL
        SELECT 143, 'Randall', 'Matos', 'RMATOS', '1.650.555.0143', DATE '2016-03-15', 'ST_CLERK', 2600, CAST(NULL AS FLOAT64), 124, 50             UNION ALL
        SELECT 144, 'Peter', 'Vargas', 'PVARGAS', '1.650.555.0144', DATE '2016-07-09', 'ST_CLERK', 2500, CAST(NULL AS FLOAT64), 124, 50             UNION ALL
        SELECT 145, 'John', 'Singh', 'JSINGH', '44.1632.960000', DATE '2014-10-01', 'SA_MAN', 14000, 0.4, 100, 80                                   UNION ALL
        SELECT 146, 'Karen', 'Partners', 'KPARTNER', '44.1632.960001', DATE '2015-01-05', 'SA_MAN', 13500, 0.3, 100, 80                             UNION ALL
        SELECT 147, 'Alberto', 'Errazuriz', 'AERRAZUR', '44.1632.960002', DATE '2015-03-10', 'SA_MAN', 12000, 0.3, 100, 80                          UNION ALL
        SELECT 148, 'Gerald', 'Cambrault', 'GCAMBRAU', '44.1632.960003', DATE '2017-10-15', 'SA_MAN', 11000, 0.3, 100, 80                           UNION ALL
        SELECT 149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '44.1632.960004', DATE '2018-01-29', 'SA_MAN', 10500, 0.2, 100, 80                              UNION ALL
        SELECT 150, 'Sean', 'Tucker', 'STUCKER', '44.1632.960005', DATE '2015-01-30', 'SA_REP', 10000, 0.3, 145, 80                                 UNION ALL
        SELECT 151, 'David', 'Bernstein', 'DBERNSTE', '44.1632.960006', DATE '2015-03-24', 'SA_REP', 9500, 0.25, 145, 80                            UNION ALL
        SELECT 152, 'Peter', 'Hall', 'PHALL', '44.1632.960007', DATE '2015-08-20', 'SA_REP', 9000, 0.25, 145, 80                                    UNION ALL
        SELECT 153, 'Christopher', 'Olsen', 'COLSEN', '44.1632.960008', DATE '2016-03-30', 'SA_REP', 8000, 0.2, 145, 80                             UNION ALL
        SELECT 154, 'Nanette', 'Cambrault', 'NCAMBRAU', '44.1632.960009', DATE '2016-12-09', 'SA_REP', 7500, 0.2, 145, 80                           UNION ALL
        SELECT 155, 'Oliver', 'Tuvault', 'OTUVAULT', '44.1632.960010', DATE '2017-11-23', 'SA_REP', 7000, 0.15, 145, 80                             UNION ALL
        SELECT 156, 'Janette', 'King', 'JKING', '44.1632.960011', DATE '2014-01-30', 'SA_REP', 10000, 0.35, 146, 80                                 UNION ALL
        SELECT 157, 'Patrick', 'Sully', 'PSULLY', '44.1632.960012', DATE '2014-03-04', 'SA_REP', 9500, 0.35, 146, 80                                UNION ALL
        SELECT 158, 'Allan', 'McEwen', 'AMCEWEN', '44.1632.960013', DATE '2014-08-01', 'SA_REP', 9000, 0.35, 146, 80                                UNION ALL
        SELECT 159, 'Lindsey', 'Smith', 'LSMITH', '44.1632.960014', DATE '2015-03-10', 'SA_REP', 8000, 0.3, 146, 80                                 UNION ALL
        SELECT 160, 'Louise', 'Doran', 'LDORAN', '44.1632.960015', DATE '2015-12-15', 'SA_REP', 7500, 0.3, 146, 80                                  UNION ALL
        SELECT 161, 'Sarath', 'Sewall', 'SSEWALL', '44.1632.960016', DATE '2016-11-03', 'SA_REP', 7000, 0.25, 146, 80                               UNION ALL
        SELECT 162, 'Clara', 'Vishney', 'CVISHNEY', '44.1632.960017', DATE '2015-11-11', 'SA_REP', 10500, 0.25, 147, 80                             UNION ALL
        SELECT 163, 'Danielle', 'Greene', 'DGREENE', '44.1632.960018', DATE '2017-03-19', 'SA_REP', 9500, 0.15, 147, 80                             UNION ALL
        SELECT 164, 'Mattea', 'Marvins', 'MMARVINS', '44.1632.960019', DATE '2018-01-24', 'SA_REP', 7200, 0.10, 147, 80                             UNION ALL
        SELECT 165, 'David', 'Lee', 'DLEE', '44.1632.960020', DATE '2018-02-23', 'SA_REP', 6800, 0.1, 147, 80                                       UNION ALL
        SELECT 166, 'Sundar', 'Ande', 'SANDE', '44.1632.960021', DATE '2018-03-24', 'SA_REP', 6400, 0.10, 147, 80                                   UNION ALL
        SELECT 167, 'Amit', 'Banda', 'ABANDA', '44.1632.960022', DATE '2018-04-21', 'SA_REP', 6200, 0.10, 147, 80                                   UNION ALL
        SELECT 168, 'Lisa', 'Ozer', 'LOZER', '44.1632.960023', DATE '2015-03-11', 'SA_REP', 11500, 0.25, 148, 80                                    UNION ALL
        SELECT 169, 'Harrison', 'Bloom', 'HBLOOM', '44.1632.960024', DATE '2016-03-23', 'SA_REP', 10000, 0.20, 148, 80                              UNION ALL
        SELECT 170, 'Tayler', 'Fox', 'TFOX', '44.1632.960025', DATE '2016-01-24', 'SA_REP', 9600, 0.20, 148, 80                                     UNION ALL
        SELECT 171, 'William', 'Smith', 'WSMITH', '44.1632.960026', DATE '2017-02-23', 'SA_REP', 7400, 0.15, 148, 80                                UNION ALL
        SELECT 172, 'Elizabeth', 'Bates', 'EBATES', '44.1632.960027', DATE '2017-03-24', 'SA_REP', 7300, 0.15, 148, 80                              UNION ALL
        SELECT 173, 'Sundita', 'Kumar', 'SKUMAR', '44.1632.960028', DATE '2018-04-21', 'SA_REP', 6100, 0.10, 148, 80                                UNION ALL
        SELECT 174, 'Ellen', 'Abel', 'EABEL', '44.1632.960029', DATE '2014-05-11', 'SA_REP', 11000, 0.30, 149, 80                                   UNION ALL
        SELECT 175, 'Alyssa', 'Hutton', 'AHUTTON', '44.1632.960030', DATE '2015-03-19', 'SA_REP', 8800, 0.25, 149, 80                               UNION ALL
        SELECT 176, 'Jonathon', 'Taylor', 'JTAYLOR', '44.1632.960031', DATE '2016-03-24', 'SA_REP', 8600, 0.20, 149, 80                             UNION ALL
        SELECT 177, 'Jack', 'Livingston', 'JLIVINGS', '44.1632.960032', DATE '2016-04-23', 'SA_REP', 8400, 0.20, 149, 80                            UNION ALL
        SELECT 178, 'Kimberely', 'Grant', 'KGRANT', '44.1632.960033', DATE '2017-05-24', 'SA_REP', 7000, 0.15, 149, CAST(NULL AS INT64)             UNION ALL
        SELECT 179, 'Charles', 'Johnson', 'CJOHNSON', '44.1632.960034', DATE '2018-01-04', 'SA_REP', 6200, 0.10, 149, 80                            UNION ALL
        SELECT 180, 'Winston', 'Taylor', 'WTAYLOR', '1.650.555.0145', DATE '2016-01-24', 'SH_CLERK', 3200, CAST(NULL AS FLOAT64), 120, 50           UNION ALL
        SELECT 181, 'Jean', 'Fleaur', 'JFLEAUR', '1.650.555.0146', DATE '2016-02-23', 'SH_CLERK', 3100, CAST(NULL AS FLOAT64), 120, 50              UNION ALL
        SELECT 182, 'Martha', 'Sullivan', 'MSULLIVA', '1.650.555.0147', DATE '2017-06-21', 'SH_CLERK', 2500, CAST(NULL AS FLOAT64), 120, 50         UNION ALL
        SELECT 183, 'Girard', 'Geoni', 'GGEONI', '1.650.555.0148', DATE '2018-02-03', 'SH_CLERK', 2800, CAST(NULL AS FLOAT64), 120, 50              UNION ALL
        SELECT 184, 'Nandita', 'Sarchand', 'NSARCHAN', '1.650.555.0149', DATE '2014-01-27', 'SH_CLERK', 4200, CAST(NULL AS FLOAT64), 121, 50        UNION ALL
        SELECT 185, 'Alexis', 'Bull', 'ABULL', '1.650.555.0150', DATE '2015-02-20', 'SH_CLERK', 4100, CAST(NULL AS FLOAT64), 121, 50                UNION ALL
        SELECT 186, 'Julia', 'Dellinger', 'JDELLING', '1.650.555.0151', DATE '2016-06-24', 'SH_CLERK', 3400, CAST(NULL AS FLOAT64), 121, 50         UNION ALL
        SELECT 187, 'Anthony', 'Cabrio', 'ACABRIO', '1.650.555.0152', DATE '2017-02-07', 'SH_CLERK', 3000, CAST(NULL AS FLOAT64), 121, 50           UNION ALL
        SELECT 188, 'Kelly', 'Chung', 'KCHUNG', '1.650.555.0153', DATE '2015-06-14', 'SH_CLERK', 3800, CAST(NULL AS FLOAT64), 122, 50               UNION ALL
        SELECT 189, 'Jennifer', 'Dilly', 'JDILLY', '1.650.555.0154', DATE '2015-08-13', 'SH_CLERK', 3600, CAST(NULL AS FLOAT64), 122, 50            UNION ALL
        SELECT 190, 'Timothy', 'Venzl', 'TVENZL', '1.650.555.0155', DATE '2016-07-11', 'SH_CLERK', 2900, CAST(NULL AS FLOAT64), 122, 50             UNION ALL
        SELECT 191, 'Randall', 'Perkins', 'RPERKINS', '1.650.555.0156', DATE '2017-12-19', 'SH_CLERK', 2500, CAST(NULL AS FLOAT64), 122, 50         UNION ALL
        SELECT 192, 'Sarah', 'Bell', 'SBELL', '1.650.555.0157', DATE '2014-02-04', 'SH_CLERK', 4000, CAST(NULL AS FLOAT64), 123, 50                 UNION ALL
        SELECT 193, 'Britney', 'Everett', 'BEVERETT', '1.650.555.0158', DATE '2015-03-03', 'SH_CLERK', 3900, CAST(NULL AS FLOAT64), 123, 50         UNION ALL
        SELECT 194, 'Samuel', 'McLeod', 'SMCLEOD', '1.650.555.0159', DATE '2016-07-01', 'SH_CLERK', 3200, CAST(NULL AS FLOAT64), 123, 50            UNION ALL
        SELECT 195, 'Vance', 'Jones', 'VJONES', '1.650.555.0160', DATE '2017-03-17', 'SH_CLERK', 2800, CAST(NULL AS FLOAT64), 123, 50               UNION ALL
        SELECT 196, 'Alana', 'Walsh', 'AWALSH', '1.650.555.0161', DATE '2016-04-24', 'SH_CLERK', 3100, CAST(NULL AS FLOAT64), 124, 50               UNION ALL
        SELECT 197, 'Kevin', 'Feeney', 'KFEENEY', '1.650.555.0162', DATE '2016-05-23', 'SH_CLERK', 3000, CAST(NULL AS FLOAT64), 124, 50             UNION ALL
        SELECT 198, 'Donald', 'OConnell', 'DOCONNEL', '1.650.555.0163', DATE '2017-06-21', 'SH_CLERK', 2600, CAST(NULL AS FLOAT64), 124, 50         UNION ALL
        SELECT 199, 'Douglas', 'Grant', 'DGRANT', '1.650.555.0164', DATE '2018-01-13', 'SH_CLERK', 2600, CAST(NULL AS FLOAT64), 124, 50             UNION ALL
        SELECT 200, 'Jennifer', 'Whalen', 'JWHALEN', '1.515.555.0165', DATE '2013-09-17', 'AD_ASST', 4400, CAST(NULL AS FLOAT64), 101, 10           UNION ALL
        SELECT 201, 'Michael', 'Martinez', 'MMARTINE', '1.515.555.0166', DATE '2014-02-17', 'MK_MAN', 13000, CAST(NULL AS FLOAT64), 100, 20         UNION ALL
        SELECT 202, 'Pat', 'Davis', 'PDAVIS', '1.603.555.0167', DATE '2015-08-17', 'MK_REP', 6000, CAST(NULL AS FLOAT64), 201, 20                   UNION ALL
        SELECT 203, 'Susan', 'Jacobs', 'SJACOBS', '1.515.555.0168', DATE '2012-06-07', 'HR_REP', 6500, CAST(NULL AS FLOAT64), 101, 40               UNION ALL
        SELECT 204, 'Hermann', 'Brown', 'HBROWN', '1.515.555.0169', DATE '2012-06-07', 'PR_REP', 10000, CAST(NULL AS FLOAT64), 101, 70              UNION ALL
        SELECT 205, 'Shelley', 'Higgins', 'SHIGGINS', '1.515.555.0170', DATE '2012-06-07', 'AC_MGR', 12008, CAST(NULL AS FLOAT64), 101, 110         UNION ALL
        SELECT 206, 'William', 'Gietz', 'WGIETZ', '1.515.555.0171', DATE '2012-06-07', 'AC_ACCOUNT', 8300, CAST(NULL AS FLOAT64), 205, 110
        ;;

    # sql_trigger_value: SELECT CURRENT_DATE() ;;
  }

  dimension: employee_id {
    primary_key:  yes
    type: number
    value_format: "0"
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension_group: hire {
    type: time
    datatype: date
    timeframes:  [raw, date, month, quarter, year]
    sql: ${TABLE}.hire_date ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: salary {
    type: number
    value_format: "#,##0"
    sql: ${TABLE}.salary ;;
  }

  dimension: commission_pct {
    label: "Commission"
    type: number
    sql: ${TABLE}.commission_pct ;;
  }

  dimension: manager_id {
    type: number
    value_format: "0"
    sql: ${TABLE}.manager_id ;;
  }

  dimension: manager_name {
    label: "Manager Name"
    type: string
    sql: CONCAT(${employee_manager.first_name}," ",${employee_manager.last_name}) ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.department_id ;;
  }

  measure: employee_count {
    label: "Number of Employees"
    type: count
    drill_fields: [employee_id, first_name, last_name]
    value_format: "0"
  }

  measure: total_salary {
    type: sum
    sql: ${salary} ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      employee_id,
      first_name,
      last_name,
      salary
    ]
  }

  measure: average_salary {
    type: average
    sql: ${salary} ;;
    value_format: "#,##0.00"
  }

  measure: maximum_salary {
    type: max
    sql: ${salary} ;;
    value_format: "#,##0"
  }

  measure: minimum_salary {
    type: min
    sql: ${salary} ;;
    value_format: "#,##0"
  }

  measure: average_commission {
    type: average
    sql: ${commission_pct} ;;
    value_format: "0.0%"
  }
}
