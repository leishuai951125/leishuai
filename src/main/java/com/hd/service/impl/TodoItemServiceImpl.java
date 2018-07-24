package com.hd.service.impl;

import com.hd.dao.TodoItemMapper;
import com.hd.pojo.TodoItem;
import com.hd.service.TodoItemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by leishuai on 2018/7/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@Service
public class TodoItemServiceImpl implements TodoItemService{
    @Autowired
    TodoItemMapper todoItemMapper;
    @Override
    public List<TodoItem> getAllTodoItem() {
        return todoItemMapper.getAllTodoItem();
    }

    @Test
    public void getAllTodoItemTest()
    {
        List<TodoItem> list=getAllTodoItem();
        for(TodoItem it:list)
            System.out.println(it);
    }
    @Override
    public List<TodoItem> getAllTodoItemByUser(Integer user_id) {
        return todoItemMapper.getAllTodoItemByUser(user_id);
    }

    @Override
    public void deleteItemById(Integer todo_item_id) {
        todoItemMapper.deleteTodoItemById(todo_item_id);
    }

    @Override
    public TodoItem getTodoItemById(Integer id) {
        return todoItemMapper.getTodoItemById(id);
    }

    @Override
    public void addTodoItem(TodoItem todoItem) {
        todoItemMapper.addTodoItem(todoItem);
    }

    @Override
    public void updateTodoItem(TodoItem todoItem) {
        todoItemMapper.updateTodoItem(todoItem);
    }

}
