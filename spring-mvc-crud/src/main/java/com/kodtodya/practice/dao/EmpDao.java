package com.kodtodya.practice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kodtodya.practice.bean.Emp;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EmpDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public void createTable() {
        String sql = "CREATE TABLE IF NOT EXISTS emp (" +
                "id INT AUTO_INCREMENT PRIMARY KEY, " +
                "name VARCHAR(255) NOT NULL, " +
                "salary DECIMAL(10, 2) NOT NULL, " +
                "designation VARCHAR(255) NOT NULL," +
                "department VARCHAR(255))";
        template.execute(sql);

        String dataQueries = """
                                INSERT INTO emp (name, salary, designation, department) VALUES ('avadhut', 10000.0, 'soft engg', 'IT');
                                INSERT INTO emp (name, salary, designation, department) VALUES ('test user', 7000.0, 'driver', 'Logistics');
                                INSERT INTO emp (name, salary, designation, department) VALUES ('second test user', 33000.0, 'mechanic', 'Maintenance');
                                INSERT INTO emp (name, salary, designation, department) VALUES ('last user', 87643.0, 'painter', 'Art');
                   """;
        template.update(dataQueries);
    }

    public int save(Emp p) {
        String sql = "insert into emp(name,salary,designation,department) values('"
                + p.getName() + "'," + p.getSalary() + ",'"
                + p.getDesignation() + "','" + p.getDepartment() + "')";
        return template.update(sql);
    }

    public int update(Emp p) {
        String sql = "update emp set name='" + p.getName() + "', salary="
                + p.getSalary() + ", designation='" + p.getDesignation()
                + "', department='" + p.getDepartment()
                + "' where id=" + p.getId();
        return template.update(sql);
    }

    public int delete(int id) {
        String sql = "delete from emp where id=" + id;
        return template.update(sql);
    }

    public Emp getEmpById(int id) {
        String sql = "select * from emp where id=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Emp>(Emp.class));
    }

    public List<Emp> getEmployees() {
        return template.query("select * from emp", new RowMapper<Emp>() {
            public Emp mapRow(ResultSet rs, int row) throws SQLException {
                Emp e = new Emp();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setSalary(rs.getFloat(3));
                e.setDesignation(rs.getString(4));
                e.setDepartment(rs.getString(5));
                return e;
            }
        });
    }
}  