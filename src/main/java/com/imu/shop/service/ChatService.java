package com.imu.shop.service;

import com.imu.shop.pojo.ChatExample;
import com.imu.shop.pojo.Chat;

import java.util.List;

/**
 * Created by WangLin on 2017/11/26.
 */
public interface ChatService {
    public void insertChatSelective(Chat chat);

    public List<Chat> selectChatByExample(ChatExample chatExample);
}
