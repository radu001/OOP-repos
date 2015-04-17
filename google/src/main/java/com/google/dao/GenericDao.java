package com.google.dao;

import java.io.Serializable;
import java.util.List;

import com.google.exception.DaoException;

public interface GenericDao<T, PK extends Serializable>{


    /** ������� ����� ������, ��������������� ������� object */
    public void insert(T object)  throws DaoException;

    /** ���������� ������ ��������������� ������ � ��������� ������ key ��� null */
    public T getByPK(int key) throws DaoException;

    /** ��������� ��������� ������� group � ���� ������ */
    public void update(T object) throws DaoException;

    /** ������� ������ �� ������� �� ���� ������ */
    public void delete(T object) throws DaoException;

    /** ���������� ������ �������� ��������������� ���� ������� � ���� ������ */
    public List<T> getAll() throws DaoException;
    
    /** ���������� ����� �������*/
    Long getCount() throws DaoException;
}
