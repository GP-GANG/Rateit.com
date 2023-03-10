package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import rateit.entities.Poll;

public class Poll_database {

    Connection con;

    public Poll_database(Connection con) {
        this.con = con;
    }

    public ArrayList<Poll> getAllPoll() {
        ArrayList<Poll> list = new ArrayList<>();
        try {
            String query = "select * from poll";

            PreparedStatement stmt = this.con.prepareStatement(query);

            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                Poll p = new Poll();

                p.setPOLL_NO(set.getInt("POLL_NO"));
                p.setPOLL_ID(set.getInt("POLL_ID"));
                p.setSTART_DATE(set.getTimestamp("START_DATE"));
                p.setCOMPANY2(set.getInt("COMPANY2"));
                p.setCOMPANY1(set.getInt("COMPANY1"));
                p.setCATEGORY(set.getString("CATEGORY"));
                p.setEND_DATE(set.getTimestamp("END_DATE"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }

    public Poll getPoll(int id) {
        Poll p = null;

        try {
            String query = "select * from poll where POLL_ID=?";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1,id);
            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                p = new Poll();
                p.setPOLL_NO(set.getInt("POLL_NO"));
                p.setPOLL_ID(set.getInt("POLL_ID"));
                p.setSTART_DATE(set.getTimestamp("START_DATE"));
                p.setCOMPANY2(set.getInt("COMPANY2"));
                p.setCOMPANY1(set.getInt("COMPANY1"));
                p.setCATEGORY(set.getString("CATEGORY"));
                p.setEND_DATE(set.getTimestamp("END_DATE"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }
}
