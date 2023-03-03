
package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import rateit.entities.Company;

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
    
}
