package mypkg.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingList_Dao extends SuperDao{

	public int InsertData(BookingList bean) {
		System.out.println(bean.toString());
		String sql = "insert into bookinglist(b_code, seat_list)";
		sql += " values(?, ?)";

		PreparedStatement pstmt = null;
		int cnt = -99999;
		try {
			if (conn == null) {
				super.conn = super.getConnection();
			}
			conn.setAutoCommit(false);
			pstmt = super.conn.prepareStatement(sql);
			// 개발자가 수정할 곳 2 : ? 수정할 것
			pstmt.setString(1, bean.getB_code());
			pstmt.setString(2, bean.getSeat_list());

			cnt = pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			SQLException err = (SQLException) e;
			// getErrorCode() : 오라클 오류 상수가 리턴
			// 예 : not null 이면 1400
			cnt = -err.getErrorCode();
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt;
	}
	
	public int UpdateData(BookingList bean) {
		System.out.println(bean.toString());
		String sql = " update bookinglist set ";
		sql += " seat_list=?";
		sql += " where b_code = ? ";
		PreparedStatement pstmt = null;
		int cnt = -99999;
		try {
			if (conn == null) {
				super.conn = super.getConnection();
			}
			conn.setAutoCommit(false);
			pstmt = super.conn.prepareStatement(sql);
			// 개발자가 수정할 곳 2 : ? 수정할 것
			pstmt.setString(2, bean.getB_code());
			pstmt.setString(1, bean.getSeat_list());


			cnt = pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			SQLException err = (SQLException) e;
			cnt = -err.getErrorCode();
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt;
	}

	public int DeleteData(String pmkey) {
		String sql = "delete from bookinglist where b_code = ? ";
		PreparedStatement pstmt = null;
		int cnt = -99999;
		try {
			if (conn == null) {
				super.conn = super.getConnection();
			}
			conn.setAutoCommit(false);
			pstmt = super.conn.prepareStatement(sql);
			pstmt.setString(1, pmkey);
			cnt = pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			SQLException err = (SQLException) e;
			cnt = -err.getErrorCode();
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt;
	}

	public List<BookingList> SelectDataList() {
		// 모든 데이터를 조회한다.
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from bookinglist order by b_code ";
		List<BookingList> lists = new ArrayList<BookingList>();
		try {
			if (conn == null) {
				super.conn = super.getConnection();
			}
			pstmt = super.conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BookingList bean = new BookingList();
				bean.setB_code(rs.getString("b_code"));
				bean.setSeat_list(rs.getString("seat_list"));
				lists.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return lists;
	}
}
