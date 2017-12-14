package com.tyut.shop.service;

import com.tyut.shop.pojo.Chat;
import com.tyut.shop.pojo.ChatExample;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/26.
 */
public interface ChatService {
    public void insertChatSelective(Chat chat);

    public List<Chat> selectChatByExample(ChatExample chatExample);
}
