package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import rateit.entities.Customer;

public class Customer_database {

    Connection con;

    public Customer_database(Connection con) {
        this.con = con;
    }

    public boolean saveCustomer(Customer customer) {
        boolean f = false;

        try {
            String query = "insert into customer_info(USER_NAME,EMAIL,PASSWORD) values(?,?,?)";

            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, customer.getUSER_NAME());
            stmt.setString(2, customer.getEMAIL());
            stmt.setString(3, customer.getPASSWORD());

            stmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public Customer getCustomerByEmail(String email, String password) {
        Customer customer = null;
        try {
            String query = "select * from customer_info where EMAIL=? and PASSWORD =?";

            PreparedStatement stmt = this.con.prepareStatement(query);

            stmt.setString(1, email);
            stmt.setString(2, password);

            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                customer = new Customer();

                customer.setUSER_ID(set.getInt("USER_ID"));
                customer.setUSER_NAME(set.getString("USER_NAME"));
                customer.setEMAIL(set.getString("EMAIL"));
                customer.setPASSWORD(set.getString("PASSWORD"));
                customer.setLOGIN_STATUS(set.getBoolean("LOGIN_STATUS"));
                customer.setATTENDED_POLL(set.getInt("ATTENDED_POLL"));
                customer.setREMAINDER(set.getInt("REMAINDER"));
                customer.setJOIN_DATE(set.getTimestamp("JOIN_DATE"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return customer;

    }

    public Customer getCustomerByEmail(String email) {
        Customer customer = null;
        try {
            String query = "select * from customer_info where EMAIL=?";

            PreparedStatement stmt = this.con.prepareStatement(query);

            stmt.setString(1, email);

            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                customer = new Customer();

                customer.setUSER_ID(set.getInt("USER_ID"));
                customer.setUSER_NAME(set.getString("USER_NAME"));
                customer.setEMAIL(set.getString("EMAIL"));
                customer.setPASSWORD(set.getString("PASSWORD"));
                customer.setLOGIN_STATUS(set.getBoolean("LOGIN_STATUS"));
                customer.setATTENDED_POLL(set.getInt("ATTENDED_POLL"));
                customer.setREMAINDER(set.getInt("REMAINDER"));
                customer.setJOIN_DATE(set.getTimestamp("JOIN_DATE"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return customer;

    }

    public boolean UpdatePassword(String email, String password) {
        boolean f = false;

        try {
            PreparedStatement stmt = this.con.prepareStatement("update customer_info set PASSWORD=? where EMAIL=?");

            stmt.setString(1, password);
            stmt.setString(2, email);

            if (stmt.executeUpdate() == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public boolean UpdateProfile(Customer customer) {
        boolean f = false;
        try {
            String query = "update customer_info set USER_NAME=?, USER_PROFILE=?";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, customer.getUSER_NAME());

            if (stmt.executeUpdate() > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;

    }

}
