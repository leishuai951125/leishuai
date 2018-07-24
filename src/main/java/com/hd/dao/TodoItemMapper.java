package com.hd.dao;

import com.hd.pojo.TodoItem;
//import com.hd.pojo.User;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

/**
 * Created by leishuai on 2018/7/21.
 */
public interface TodoItemMapper {
//    List<User> getAllUser();
//    User getUserByName(String user_name);
//    //    User getUserById(Integer user_id);
//    void deleteUserByName(String user_name);
//    void addUser(User user);
//    void updateUser(User user);
    List<TodoItem> getAllTodoItem();
    List<TodoItem> getAllTodoItemByUser(Integer user_id);
    TodoItem getTodoItemById(Integer todo_item_id);
    void deleteTodoItemById(Integer todo_item_id);
    void addTodoItem(TodoItem todoItem);
    void updateTodoItem(TodoItem todoItem);
}
