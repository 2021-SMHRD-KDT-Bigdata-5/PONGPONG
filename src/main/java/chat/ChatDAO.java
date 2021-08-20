package chat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ChatDAO {

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {
		// 원래 이것도 파일로 빼서 함
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String pass = "hr";

			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar파일 또는 driver경로 확인");
			e.printStackTrace();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<Chat> getChatList(String nowTime) {
		
		ArrayList<Chat> chatList = null;

		try {
			connection();
			String sql = "SELECT * FROM CHATTING WHERE chatTime >? ORDER BY chatTime";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nowTime);
			rs = psmt.executeQuery();
			chatList = new ArrayList<Chat>();
			while (rs.next()) {
				Chat chat = new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "%gt;").replaceAll("\n","<br>"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11,13));
				String timeType = "오전";
				if(Integer.parseInt(rs.getString("chatTime").substring(11,13)) >=12){
					timeType="오후";
					chatTime -=12;
				}
				chat.setChatTime(rs.getString("chatTime").substring(0,11) +" "+ timeType + " " +chatTime + ":" + rs.getString("chatTime").substring(14,16) +" ");
				chatList.add(chat);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}

	public ArrayList<Chat> getChatListByRecent(int number) {
		
		ArrayList<Chat> chatList = null;

		try {
			connection();
			String sql = "SELECT * FROM CHATTING WHERE chatid > (select max(chatid) - ? from chatting) order by chattime";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, number);
			rs = psmt.executeQuery();
			chatList = new ArrayList<Chat>();
			while (rs.next()) {
				Chat chat = new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "%gt;").replaceAll("\n","<br>"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11,13));
				String timeType = "오전";
				if(Integer.parseInt(rs.getString("chatTime").substring(11,13)) >=12){
					timeType="오후";
					chatTime -=12;
				}
				chat.setChatTime(rs.getString("chatTime").substring(0,11) +" "+ timeType + " " +chatTime + ":" + rs.getString("chatTime").substring(14,16) +" ");
				chatList.add(chat);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	
	public ArrayList<Chat> getChatListByRecent(String chatID) {
		
		ArrayList<Chat> chatList = null;

		try {
			connection();
			String sql = "SELECT * FROM CHATTING WHERE chatid > ? order by chattime";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Integer.parseInt(chatID));
			rs = psmt.executeQuery();
			chatList = new ArrayList<Chat>();
			while (rs.next()) {
				Chat chat = new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "%gt;").replaceAll("\n","<br>"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11,13));
				String timeType = "오전";
				if(Integer.parseInt(rs.getString("chatTime").substring(11,13)) >=12){
					timeType="오후";
					chatTime -=12;
				}
				chat.setChatTime(rs.getString("chatTime").substring(0,11) +" "+ timeType + " " +chatTime + ":" + rs.getString("chatTime").substring(14,16) +" ");
				chatList.add(chat);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	
	
	public int submit(String chatName, String chatContent) {

		String sql = "INSERT INTO CHATTING VALUES(chatid_seq.nextval,?,?,systimestamp)";
		try {
			connection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, chatName);
			psmt.setString(2, chatContent);

			return psmt.executeUpdate();


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (psmt != null) psmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}



}


