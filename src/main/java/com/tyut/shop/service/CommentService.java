package com.tyut.shop.service;

import com.tyut.shop.pojo.Comment;
import com.tyut.shop.pojo.CommentExample;

import java.util.List;

/**
 * Created by 蒋松冬 on 2017/7/27.
 */
public interface CommentService {
    public void insertSelective(Comment comment);

    public List<Comment> selectByExample(CommentExample commentExample);
}
