package com.imu.shop.service;

import com.imu.shop.dao.ChatMapper;
import com.imu.shop.pojo.Chat;
import com.imu.shop.pojo.ChatExample;
import com.imu.shop.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WangLin on 2017/11/26.
 */
@Service("chatService")
public class ChatServiceImpl implements ChatService {

    @Autowired(required = false)
    ChatMapper chatMapper;

    @Override
    public void insertChatSelective(Chat chat) {
        chatMapper.insertSelective(chat);
    }

    @Override
    public List<Chat> selectChatByExample(ChatExample chatExample) {
        return chatMapper.selectByExample(chatExample);
    }
}
