package dbclasses;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.rowset.serial.SerialBlob;

public class Report_database {

    Connection con;

    public Report_database(Connection con) {
        this.con = con;
    }

    public Blob getCompanyReport(int COMPANY_ID, int POLL_ID) {
        Blob blob = null;

        try {
            String query = "select * from report where COMPANY_ID=? AND POLL_ID=?";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setInt(1, COMPANY_ID);
            stmt.setInt(2, POLL_ID);
            ResultSet set = stmt.executeQuery();
            if (set.next()) {
                blob = set.getBlob("report");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return blob;
    }

    public boolean UploadReport(InputStream is, int COMPANY_ID, int POLL_ID) {
        boolean f = false;
        try {
            String query = "insert into report(POLL_ID,report,COMPANY_ID) value(?,?,?)";
            byte[] b = new byte[is.available()];
            is.read(b);
            Blob blob = new SerialBlob(b);
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setBlob(2, blob);
            stmt.setInt(1, POLL_ID);
            stmt.setInt(3, COMPANY_ID);

            if (stmt.executeUpdate() > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

}
