package com.tyut.shop.service.impl;

import com.tyut.shop.dao.CommentMapper;
import com.tyut.shop.pojo.Comment;
import com.tyut.shop.pojo.CommentExample;
import com.tyut.shop.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/27.
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired(required = false)
    private CommentMapper commentMapper;

    @Override
    public void insertSelective(Comment comment){
        commentMapper.insertSelective(comment);
    }

    @Override
    public List<Comment> selectByExample(CommentExample commentExample) {
        return commentMapper.selectByExample(commentExample);
    }

}
