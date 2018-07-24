package com.hd.service;
import com.hd.pojo.TodoItem;

import java.util.List;

/**
 * Created by leishuai on 2018/7/21.
 */

public interface TodoItemService {
    List<TodoItem> getAllTodoItem();
    List<TodoItem> getAllTodoItemByUser(Integer user_id);
    void deleteItemById(Integer id);
    TodoItem getTodoItemById(Integer id);
    void addTodoItem(TodoItem todoItem);
    void updateTodoItem(TodoItem todoItem);
}
