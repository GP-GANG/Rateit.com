
package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import rateit.entities.Review;


public class Review_database {
    Connection con;

    public Review_database(Connection con) {
        this.con = con;
    }
    
    public boolean submitReview(Review review){
    boolean b =false ;
    
    try{
    String query = "insert into review(POLL_ID,COMPANY_ID,USER_ID,SERVICE,RATE,COMMENT) values(?,?,?,?,?,?)";
    
    PreparedStatement stmt = this.con.prepareStatement(query);
    stmt.setInt(1,review.getPOLL_ID());
    stmt.setInt(2,review.getCOMPANY_ID());
    stmt.setInt(3,review.getUSER_ID());
    stmt.setString(4,review.getSERVICES());
    stmt.setFloat(5,review.getRATE());
    stmt.setString(6,review.getCOMMENT());
    
    stmt.executeUpdate();
    b=true;
    }
    catch(Exception e){e.printStackTrace();}
    
    
    
    return b;
    }
    
    
    
}
