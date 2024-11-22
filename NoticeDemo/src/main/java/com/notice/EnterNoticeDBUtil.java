  package com.notice;

  import java.sql.Connection;
  import java.sql.DriverManager;
  import java.sql.ResultSet;
  import java.sql.Statement;
  import java.util.ArrayList;
  import java.util.List;

public class EnterNoticeDBUtil {
    private static Statement stmt = null;

    
 // Insert notice
    public static ArrayList<Notice> insertNotice1(String noticeID, String title, String postDate, String expiryDate, String notice, String author) {
        String url = "jdbc:mysql://localhost:3306/school";
        String user = "root";
        String psw = "pM20010407";

        ArrayList<Notice> notices = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, psw);
            Statement stmt = con.createStatement();
            String sql = "insert into notice_table values ('" + noticeID + "', '" + title + "','" + postDate + "','" + expiryDate + "','" + notice + "','" + author + "')";
            String sql2 = "select * from notice_table where noticeID = '" + noticeID + "'";
            
            
            int rs = stmt.executeUpdate(sql); // Execute the SQL statement
            
            if (rs > 0) {
               
                ResultSet rs2 = stmt.executeQuery(sql2); // Execute the SQL statement

                if (rs2.next()) {
                    String noticeID1 = rs2.getString(1);
                    String title1 = rs2.getString(2);
                    String postDate1 = rs2.getString(3);
                    String expiryDate1 = rs2.getString(4);
                    String notice1 = rs2.getString(5);
                    String author1 = rs2.getString(6);

                    Notice n = new Notice(noticeID1, title1, postDate1, expiryDate1, notice1, author1);
                    notices.add(n);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return notices;
    }


    // Update notice
    public static List<Notice> updateNotice(String noticeID, String title, String postDate, String expiryDate, String notice, String author) {
        String url = "jdbc:mysql://localhost:3306/school";
        String user = "root";
        String psw = "pM20010407";

        List<Notice> notices = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, psw);
            Statement stmt = con.createStatement();
            String sql = "update notice_table set title='" + notice + "', title='" + title + "', postDate='" + postDate + "',expiryDate='" + expiryDate + "', notice='" + notice + "', author='" + author + "' where noticeID ='" + noticeID + "'";
            String sql2 = "select * from notice_table where noticeID = '" + noticeID + "'";
            
            int rs = stmt.executeUpdate(sql); // Execute the SQL statement

            if (rs > 0) {
                
                ResultSet rs2 = stmt.executeQuery(sql2); // Execute the SQL statement

                if (rs2.next()) {
                    String noticeIDn = rs2.getString(1);
                    String titlen = rs2.getString(2);
                    String postDaten = rs2.getString(3);
                    String expiryDaten = rs2.getString(4);
                    String noticen = rs2.getString(5);
                    String authorn = rs2.getString(6);

                    Notice notice1 = new Notice(noticeIDn, titlen, postDaten, expiryDaten, noticen, authorn);
                    notices.add(notice1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return notices;
    }


    // Delete notice
    public static boolean deleteNotice(String noticeID) {
        String url = "jdbc:mysql://localhost:3306/school";
        String user = "root";
        String psw = "pM20010407";
        
        boolean isSuccess = false;
    	
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, psw);
            Statement stmt = con.createStatement();
            String sql = "delete from notice_table where noticeID = '"+noticeID+"'";
            
            int r = stmt.executeUpdate(sql); // Execute the SQL statement and get the number of affected rows
            
            if (r > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
    		
        } catch (Exception e) {
            e.printStackTrace();
        }
          
        return isSuccess;
    }
}