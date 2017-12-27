package com.imu.shop.service;

import com.imu.shop.pojo.Comment;
import com.imu.shop.pojo.CommentExample;

import java.util.List;

/**
 * Created by WangLin on 2017/11/27.
 */
public interface CommentService {
    public void insertSelective(Comment comment);

    public List<Comment> selectByExample(CommentExample commentExample);
}
