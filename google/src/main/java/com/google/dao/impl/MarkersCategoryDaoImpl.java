package com.google.dao.impl;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.google.dao.GenericDao;
import com.google.dao.util.JdbcConnectionPool;
import com.google.entity.MarkersCategory;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class MarkersCategoryDaoImpl implements
		GenericDao<MarkersCategory, Serializable> {

	private static JdbcConnectionPool connectionPool;

	public MarkersCategoryDaoImpl() {
		connectionPool = new JdbcConnectionPool();
	}

	public int insert(MarkersCategory object) {
		int result = 0;
		Connection connection = connectionPool.getConnectionFromPool();
		try {

			PreparedStatement preparedStatement = null;
			String insertSQL = "INSERT INTO category"
					+ "(name,description, publicMap) VALUES" + "(?,?,?)";
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, object.getName());
			preparedStatement.setString(2, object.getDescription());
			preparedStatement.setByte(3, (byte) (object.isPublicMap() ? 1 : 0));

			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			System.out
					.print(" SQLException in method MarkersCategoryDaoImpl.insert : "
							+ e.getMessage());

		} catch (Exception e) {
			System.out
					.print(" Exception  in method MarkersCategoryDaoImpl.insert "
							+ e.getMessage());

		} finally {

			connectionPool.returnConnectionToPool(connection);
			
		}
		return result;

	}

	public MarkersCategory getByPK(int key) {
		Connection connection = connectionPool.getConnectionFromPool();
		MarkersCategory category = null;
		try {
			String query = " select * from category where idCategory = ?";
			PreparedStatement stmt = connection.prepareStatement(query);
			stmt.setInt(1, key);
			ResultSet rs = stmt.executeQuery();
			// Extact result from ResultSet rs
			while (rs.next()) {
				category = new MarkersCategory(rs.getInt("idCategory"),
						rs.getString("name"), rs.getString("description"),
						(rs.getByte("publicMap") != 0));
			}
			// close ResultSet rs
			rs.close();

		} catch (SQLException e) {
			System.out
					.print(" SQLException in method MarkersCategoryDaoImpl.getByPK : "
							+ e.getMessage());

		} catch (Exception e) {
			System.out
					.print(" Exception  in method MarkersCategoryDaoImpl.getByPK "
							+ e.getMessage());

		} finally {
			connectionPool.returnConnectionToPool(connection);
		}
		return category;
	}

	public void update(MarkersCategory object) {
		Connection connection = connectionPool.getConnectionFromPool();
		PreparedStatement preparedStatement = null;
		try {
			String query = "update category set name = ?,description = ?, publicMap = ? where idCategory = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, object.getName());
			preparedStatement.setString(2, object.getDescription());
			preparedStatement.setByte(3, (byte) (object.isPublicMap() ? 1 : 0));
			preparedStatement.setInt(4, object.getId());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			System.out
					.print(" SQLException in method MarkersCategoryDaoImpl.update : "
							+ e.getMessage());

		} catch (Exception e) {
			System.out
					.print(" Exception  in method MarkersCategoryDaoImpl.update "
							+ e.getMessage());

		} finally {
			connectionPool.returnConnectionToPool(connection);
		}

	}

	public void delete(MarkersCategory object) {
		Connection connection = connectionPool.getConnectionFromPool();
		try {
			PreparedStatement preparedStatement = null;
			String deleteSQL = "DELETE FROM category" + " WHERE idCategory = ?";
			preparedStatement = connection.prepareStatement(deleteSQL);
			preparedStatement.setInt(1, object.getId());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			System.out
					.print(" SQLException in method MarkersCategoryDaoImpl.delete : "
							+ e.getMessage());

		} catch (Exception e) {
			System.out
					.print(" Exception  in method MarkersCategoryDaoImpl.delete "
							+ e.getMessage());

		} finally {
			connectionPool.returnConnectionToPool(connection);
		}
	}

	public List<MarkersCategory> getAll() {
		Connection connection = connectionPool.getConnectionFromPool();
		MarkersCategory category = null;
		List<MarkersCategory> categories = new ArrayList<MarkersCategory>();
		try {
			String query = " select * from category;";
			Statement stmt = (Statement) connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			// Extact result from ResultSet rs
			while (rs.next()) {
				category = new MarkersCategory(rs.getInt("idCategory"),
						rs.getString("name"), rs.getString("description"),
						(rs.getByte("publicMap") != 0));
				categories.add(category);
			}
			// close ResultSet rs
			rs.close();

		} catch (SQLException e) {
			System.out
					.print(" SQLException in method MarkersCategoryDaoImpl.getAll : "
							+ e.getMessage());

		} catch (Exception e) {
			System.out
					.print(" Exception  in method MarkersCategoryDaoImpl.getAll "
							+ e.getMessage());

		} finally {
			connectionPool.returnConnectionToPool(connection);
		}
		return categories;
	}

	public Long getCount() {
		Connection connection = connectionPool.getConnectionFromPool();
		Long count = null;
		try {
			String query = " select count(*) from category";
			Statement stmt = (Statement) connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			// Extact result from ResultSet rs
			while (rs.next()) {
				count = rs.getLong("count(*)");
			}
			// close ResultSet rs
			rs.close();

		} catch (SQLException e) {
			System.out
					.print(" SQLException in method MarkersCategoryDaoImpl.getCount : "
							+ e.getMessage());

		} catch (Exception e) {
			System.out
					.print(" Exception  in method MarkersCategoryDaoImpl.getCount "
							+ e.getMessage());

		} finally {
			connectionPool.returnConnectionToPool(connection);
		}
		return count;
	}

}
