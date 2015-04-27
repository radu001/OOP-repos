package com.google.dao;

import com.google.entity.Admin;

public interface AdminDao {

	public void updatePassword(String password);

	public void updateEmail(String email);

	public Admin getAdmin();

}
