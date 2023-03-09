
package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import rateit.entities.Company;
import rateit.entities.Customer;

public class Company_database {
    Connection con;

    public Company_database(Connection con) {
        this.con = con;
    }
    
    public boolean RegisterCompany(Company cmp){
    boolean f= false;
    
    try{
        String query = "insert into company(COMPANY_NAME,COMPANY_MAIL,COMPANY_PHONE,COMPANY_URL,COMPANY_PASSWORD) values(?,?,?,?,?)";
        
        PreparedStatement stmt = this.con.prepareStatement(query);
        stmt.setString(1,cmp.getCOMPANY_NAME());
        stmt.setString(2, cmp.getCOMPANY_MAIL());
        stmt.setLong(3,cmp.getCOMPANY_PHONE());
        stmt.setString(4,cmp.getCOMPANY_URL());
        stmt.setString(5,cmp.getCOMPANY_PASSWORD());
    
         int i=stmt.executeUpdate();
         if(i > 0){
        f=true;
         }
    }
    catch(Exception e){e.printStackTrace();}
        
    
    return f;
    }
    
        public Company getCompanyByEmail(String email, String password) {
        Company cmp = null;
        try {
            String query = "select * from company where COMPANY_MAIL=? and COMPANY_PASSWORD =?";

            PreparedStatement stmt = this.con.prepareStatement(query);

            stmt.setString(1, email);
            stmt.setString(2, password);

            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                cmp = new Company();

                cmp.setCOMPANY_ID(set.getInt("COMPANY_ID"));
                cmp.setCOMPANY_LOGIN(set.getString("COMPANY_LOGIN"));
                cmp.setCOMPANY_PASSWORD(set.getString("COMPANY_PASSWORD"));
                cmp.setCOMPANY_NAME(set.getString("COMPANY_NAME"));
                cmp.setCOMPANY_MAIL(set.getString("COMPANY_MAIL"));
                cmp.setCATEGORY(set.getString("CATEGORY"));
                cmp.setRANK(set.getInt("RANK"));
                cmp.setPOLL(set.getInt("POLLS"));
                cmp.setACP_COUNT(set.getInt("ACP_COUNT"));
                cmp.setSCP_COUNT(set.getInt("SCP_COUNT"));
                cmp.setJOIN_DATE(set.getTimestamp("JOIN_DATE"));
                cmp.setCURRENT_POLL_STATUS(set.getBoolean("CURRENT_POLL_STATUS"));
                cmp.setCURRENT_POLL_STATUS(set.getBoolean("CURRENT_POLL_STATUS"));
                cmp.setCOMPANY_URL(set.getString("COMPANY_URL"));
                cmp.setCOMPANY_PHONE(set.getLong("COMPANY_PHONE"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cmp;

    }

    
}
