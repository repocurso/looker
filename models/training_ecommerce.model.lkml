# =======================================
#  Looker Labs Model
# =======================================

connection: "bigquery_public_data_looker"

# include all the views
include: "/views/*.view"
include: "/z_tests/*.lkml"
include: "/**/*.dashboard"

datagroup: training_ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: training_ecommerce_default_datagroup

label: "E-Commerce Training"

# ---------------------------------------
#  Explore: Order Items
# ---------------------------------------

explore: order_items {
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

# ---------------------------------------
#  Explore: Events
# ---------------------------------------

explore: events {
  join: event_session_facts {
    type: left_outer
    sql_on: ${events.session_id} = ${event_session_facts.session_id} ;;
    relationship: many_to_one
  }
  join: event_session_funnel {
    type: left_outer
    sql_on: ${events.session_id} = ${event_session_funnel.session_id} ;;
    relationship: many_to_one
  }
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

# =======================================
#  Simple Employees Model
# =======================================

connection: "bigquery_public_data_looker"
include: "/views/simple/*.view.lkml"

explore: emp {
  label: "Simple Employees Model"
  join: dept {
    type: left_outer
    relationship: many_to_one
    sql_on: ${emp.deptno} = ${dept.deptno} ;;
  }
  join: salgrade {
    type: left_outer
    relationship: many_to_one
    sql_on: ${emp.sal} >= ${salgrade.losal} AND ${emp.sal} <= ${salgrade.hisal} ;;
  }
  join: manager {
    from: emp
    type: left_outer
    relationship: many_to_one
    sql_on: ${emp.mgr} = ${manager.empno} ;;
    fields: [empno,ename,mgr]
    view_label: ""
  }
}

# =======================================
#  Complex Human Resources Model 
# =======================================

# ---------------------------------------
#  Configuración
# ---------------------------------------

connection: "bigquery_public_data_looker"

include: "/views/complex/*.view.lkml"

datagroup: departments_refresh {
  interval_trigger: "60 minutes"
}

datagroup: jobs_datagroup {
  sql_trigger: SELECT CURRENT_DATE() ;;
  max_cache_age: "24 hours"
}

# ---------------------------------------
#  Explore: Human Resources
# ---------------------------------------

explore: employees {
  label: "Human Resources"

  #sql_always_where: ${regions.region_name} = 'Europe' ;;
  sql_always_where:
    ${regions.region_name} = 'Europe'
    AND
    {% condition locations.city_filter %}
       ${locations.city}
    {% endcondition %} ;;

    sql_always_having: ${employees.average_salary} >= 7000 ;;

    always_filter: {
      filters: [jobs.job_title: "Sales Manager"]
    }

    conditionally_filter: {
      filters: [locations.postal_code: "80925"]
      unless: [locations.city, locations.city_filter]
    }

    join: departments {
      type: left_outer
      relationship: many_to_one
      sql_on: ${employees.department_id} = ${departments.department_id} ;;
    }

    join: jobs {
      type: left_outer
      relationship: many_to_one
      sql_on: ${employees.job_id} = ${jobs.job_id} ;;
    }

    join: locations {
      type: left_outer
      relationship: many_to_one
      sql_on: ${departments.location_id} = ${locations.location_id} ;;
    }

    join: countries {
      type: left_outer
      relationship: many_to_one
      sql_on: ${locations.country_id} = ${countries.country_id} ;;
    }

    join: regions {
      type: left_outer
      relationship: many_to_one
      sql_on: ${countries.region_id} = ${regions.region_id} ;;
    }

    join: employee_manager {
      from: employees
      type: left_outer
      relationship: many_to_one
      sql_on: ${employees.manager_id} = ${employee_manager.employee_id} ;;
      fields: [employee_id,first_name,last_name,manager_id]
      view_label: ""
    }

    join: department_manager {
      from: employees
      type: left_outer
      relationship: many_to_one
      sql_on: ${departments.manager_id} = ${department_manager.employee_id} ;;
      view_label: ""
    }
  }

# ---------------------------------------
#  Explore: Employee Job History
# ---------------------------------------

  explore: job_history {
    label: "Employee Job History"

    join: employees {
      type: left_outer
      relationship: many_to_one
      sql_on: ${job_history.employee_id} = ${employees.employee_id} ;;
    }

    join: departments {
      type: left_outer
      relationship: many_to_one
      sql_on: ${job_history.department_id} = ${departments.department_id} ;;
    }

    join: jobs {
      type: left_outer
      relationship: many_to_one
      sql_on: ${job_history.job_id} = ${jobs.job_id} ;;
    }

    join: employee_manager {
      from: employees
      type: left_outer
      relationship: many_to_one
      sql_on: ${employees.manager_id} = ${employee_manager.employee_id} ;;
      fields: [employee_id,first_name,last_name,manager_id]
      view_label: ""
    }

    join: department_manager {
      from: employees
      type: left_outer
      relationship: many_to_one
      sql_on: ${departments.manager_id} = ${department_manager.employee_id} ;;
      view_label: ""
    }
  }
