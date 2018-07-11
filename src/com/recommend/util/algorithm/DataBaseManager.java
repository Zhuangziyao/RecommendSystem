package com.recommend.util.algorithm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseManager {
	
	private Connection conn;
	private Statement sta;
	private ResultSet rs;

	private String dbDriver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/recommend"; // ָ���������ݿ��URL
	private String user = "root"; // ָ���������ݿ���û���
	private String passWord = "122814"; // ָ���������ݿ������
	
	private String[][] recordsData;  // ��Ž�����е�����
	private String[] nameColumns;    // ����б���
	
	public void Connect() {
		try {
			// �������ݿ�����
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(url, user, passWord);// �������ݿ�����
			if (conn != null) { // ���Connectionʵ����Ϊ��
				 // ��ʾ��Ϣ
			}
		} catch (Exception ex) {
			System.out.println("ERROR: " + ex.getMessage());
		}
	}

	public ResultSet queryInDB(String sql) {
		try {
			// ����statement����
			sta = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_UPDATABLE);

			// ��SELECT��䴫��DBMS,ִ�в�ѯ����
			rs = sta.executeQuery(sql);

			// ���������Ԫ����
			ResultSetMetaData metaData = rs.getMetaData();

			// �õ������������
			rs.last();
			int row = rs.getRow();

			// �õ������������
			int colCount = metaData.getColumnCount();
			
			// �õ��б���
			nameColumns = new String[colCount];
			for (int col = 1; col <= colCount; col++) {
				nameColumns[col - 1] = metaData.getColumnName(col);
			}

			// ������ά��������Ž������resultSet���е�����
			recordsData = new String[row][metaData.getColumnCount()];

			// System.out.println("������е���������Ϊ��");
			rs.beforeFirst();
			while (rs.next()) {
				// �����ֶ����ƻ�ø����ֶε�ֵ
				for (int col = 1; col <= metaData.getColumnCount(); col++) {
					recordsData[rs.getRow()-1][col - 1] = rs.getString(col);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs;
	}

	public void closeConnection() {
		try {
			if (conn != null) {
				if (sta != null) {
					if (rs != null) {
						rs.close();
					}
					conn.close();
				}
			}
		} catch (SQLException e) {
			System.out.println("Error: " + e.getMessage());
		}
	}

	public String[][] getRecordsData() {
		return recordsData;
	}

	public String[] getNameColumns() {
		return nameColumns;
	}
}
