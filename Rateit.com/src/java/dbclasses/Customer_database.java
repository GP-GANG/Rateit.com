package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

    public boolean validateCustomerByEmail(String email) {
        boolean f = false;

        try {
            String query = "select EMAIL from rateitdb.customer_info where EMAIL=?";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, email);

            if(stmt.executeUpdate() != 0){

            f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
}
