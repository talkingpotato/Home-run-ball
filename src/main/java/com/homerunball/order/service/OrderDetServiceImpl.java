package com.homerunball.order.service;

import com.homerunball.order.dao.OrderDetDao;
import com.homerunball.order.domain.OrderDetDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;

@Service
public class OrderDetServiceImpl implements OrderDetService {
    @Autowired
    OrderDetDao orderdetDao;

    @Override
    public int getcount() throws Exception{
        return orderdetDao.count();
    }

    @Override
    public int delete(int od_det_seqnum, BigInteger od_id, int c_id) throws Exception{
        return orderdetDao.delete(od_det_seqnum,od_id,c_id);
    }

    @Override
    public List<OrderDetDto> select(int c_id) throws Exception {
        return  orderdetDao.select(c_id);
    }

    @Override
    public int insert(OrderDetDto ord_det) throws Exception{
        return orderdetDao.insert(ord_det);
    }

    @Override
    public List<OrderDetDto> getList() throws Exception{
        return orderdetDao.selectAll();
    }

    @Override
    public int update(OrderDetDto ord_det) throws Exception{
        return orderdetDao.update(ord_det);
    }
}
