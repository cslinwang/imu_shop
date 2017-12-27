package com.imu.shop.service;

import com.imu.shop.pojo.Comment;
import com.imu.shop.pojo.CommentExample;
import com.imu.shop.service.CommentService;
import com.imu.shop.dao.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WangLin on 2017/11/27.
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired(required = false)
    private CommentMapper commentMapper;

    @Override
    public void insertSelective(Comment comment) {
        commentMapper.insertSelective(comment);
    }

    @Override
    public List<Comment> selectByExample(CommentExample commentExample) {
        return commentMapper.selectByExample(commentExample);
    }

}
