package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDAO {
	private Connection conn = null;
	private ResultSet rs = null;

	public BbsDAO() {
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "pong";
			String pass = "pong";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public String getDate() {
		String SQL = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public int getNext() {
		String SQL = "select id from from bbs order by id desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int write(String bbsTitle, String userName, String bbsContents) {
		String SQL = "INSERT INTO bbs VALUES (?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle());
			pstmt.setString(3, userName());
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContents());
			pstmt.setInt(6, 1);
			rs = pstmt.executeQuery();
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}

	public ArrayList<Bbs> getList(int pageNumber) {
		String SQL = "select * from bbs where bbsid < ? and available = 1 order by bbsid desc limit 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserName(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContents(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean nextPage(int pageNumber) {
		String SQL = "select * from bbs where bbsid < ? and available = 1 order by bbsid desc limit 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Bbs getBbs(int bbsID) {
		String SQL = "select * form bbs where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserName(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContents(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				return bbs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int update(int bbsID, String bbsTitle, String bbsContents) {
		String SQL = "update bbs set bbsTitle = ?, bbsContents = ?, where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContents);
			pstmt.setInt(3, bbsID);
			rs = pstmt.executeQuery();
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}

	public int delete(int bbsID) {
		String SQL = "update bbs set bbsAvailable = 0 where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
}
