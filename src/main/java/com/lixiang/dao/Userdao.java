package com.lixiang.dao;

import java.util.List;

import com.lixiang.model.User;

public interface Userdao {
	public User findUserById(String id);
	public List<User> finAll();
	public void deleteUserById(String id);
	public void saveUser(User user) ;
	public void updateUser(User user);
	public List<User> findByUsername(String name);
	public List<User> findByphone(String phone);
	public List<User> findmenu(String menu);
	public List<User> findopenernum(String openernum);
}
