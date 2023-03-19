package dbclasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
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
            stmt.setInt(1, id);
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

    public boolean removePoll(int Poll_id) {
        boolean f = false;
        try {
            String query = "delete from poll where POLL_ID=?";
            PreparedStatement stmt = this.con.prepareStatement(query);

            stmt.setInt(1, Poll_id);
            stmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public boolean addPoll(Poll p) {
        boolean b = false;
        try {
            String query = "insert into poll(POLL_ID,START_DATE,COMPANY1,COMPANY2,CATEGORY) values(?,?,?,?,?)";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1, p.getPOLL_ID());
            Date date = new Date();
            stmt.setTimestamp(2, new Timestamp(date.getTime()));
            stmt.setInt(3, p.getCOMPANY1());
            stmt.setInt(4, p.getCOMPANY2());
            stmt.setString(5, p.getCATEGORY());
//    stmt.setTimestamp(5, p.getEND_DATE());
            stmt.executeUpdate();
            b = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return b;
    }

    public ArrayList<Poll> getPollOfCompany(int cmp_id) {
        ArrayList<Poll> list = null;

        try {
            String query = "select * from poll where COMPANY1=? or COMPANY2=?";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1, cmp_id);
            stmt.setInt(2, cmp_id);
            ResultSet set = stmt.executeQuery();
            if (set.isBeforeFirst()) {
                list = new ArrayList<>();

            }
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
}
