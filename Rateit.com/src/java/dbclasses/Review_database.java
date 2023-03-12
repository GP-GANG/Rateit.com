package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import rateit.entities.Company;
import rateit.entities.Review;

public class Review_database {

    Connection con;

    public Review_database(Connection con) {
        this.con = con;
    }

    public boolean submitReview(Review review) {
        boolean b = false;

        try {
            String query = "insert into review(POLL_ID,COMPANY_ID,USER_ID,SERVICE,RATE,COMMENT) values(?,?,?,?,?,?)";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1, review.getPOLL_ID());
            stmt.setInt(2, review.getCOMPANY_ID());
            stmt.setInt(3, review.getUSER_ID());
            stmt.setString(4, review.getSERVICES());
            stmt.setFloat(5, review.getRATE());
            stmt.setString(6, review.getCOMMENT());

            stmt.executeUpdate();
            b = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return b;
    }

    public boolean getReviewByUser_id(int user_id,int poll_id) {
        boolean f = false;
        try {
            String query = "select * from review where USER_ID=? and POLL_ID=?";

            PreparedStatement stmt = this.con.prepareStatement(query);

            stmt.setInt(1, user_id);
            stmt.setInt(2, poll_id);
            ResultSet set = stmt.executeQuery();
            if (set.next()) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

}
