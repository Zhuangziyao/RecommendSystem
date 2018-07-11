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
	private String url = "jdbc:mysql://127.0.0.1:3306/recommend"; // 指定连接数据库的URL
	private String user = "root"; // 指定连接数据库的用户名
	private String passWord = "122814"; // 指定连接数据库的密码
	
	private String[][] recordsData;  // 存放结果集中的数据
	private String[] nameColumns;    // 存放列标题
	
	public void Connect() {
		try {
			// 加载数据库驱动
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(url, user, passWord);// 创建数据库连接
			if (conn != null) { // 如果Connection实例不为空
				 // 提示信息
			}
		} catch (Exception ex) {
			System.out.println("ERROR: " + ex.getMessage());
		}
	}

	public ResultSet queryInDB(String sql) {
		try {
			// 创建statement对象
			sta = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_UPDATABLE);

			// 把SELECT语句传给DBMS,执行查询操作
			rs = sta.executeQuery(sql);

			// 创建结果集元数据
			ResultSetMetaData metaData = rs.getMetaData();

			// 得到结果集的行数
			rs.last();
			int row = rs.getRow();

			// 得到结果集的列数
			int colCount = metaData.getColumnCount();
			
			// 得到列标题
			nameColumns = new String[colCount];
			for (int col = 1; col <= colCount; col++) {
				nameColumns[col - 1] = metaData.getColumnName(col);
			}

			// 创建二维数组来存放结果集（resultSet）中的数据
			recordsData = new String[row][metaData.getColumnCount()];

			// System.out.println("结果集中的所有数据为：");
			rs.beforeFirst();
			while (rs.next()) {
				// 根据字段名称获得各个字段的值
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
