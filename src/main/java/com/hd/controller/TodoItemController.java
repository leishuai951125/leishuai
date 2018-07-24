package com.hd.controller;

import com.hd.pojo.TodoItem;
import com.hd.pojo.User;
import com.hd.service.TodoItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by leishuai on 2018/7/21.
 */
@Controller
@RequestMapping("todoItem")
public class TodoItemController {
    @Autowired
    TodoItemService todoItemService;
    @RequestMapping("showAll")
    public String showAll(Model model,HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("user");
        List<TodoItem> todoItems=todoItemService.getAllTodoItemByUser(user.getUser_id());
//        List<TodoItem> todoItems=todoItemService.getAllTodoItemByUser(Interger user_id);
        model.addAttribute("todoItems",todoItems);
        for(TodoItem t:todoItems)
            System.out.println("********"+t.getTodo_item_title());
        return "todo_list";
//        return  "../../index";
    }
    @RequestMapping("deleteItem")
    public String deleteItem(Model model, Integer id){
        todoItemService.deleteItemById(id);
//        System.out.println("id="+id+"*************");
        return "redirect:/todoItem/showAll";
    }
    @RequestMapping("toEditJsp")
    public String toJsp(Model model, HttpServletRequest request,Integer id) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            TodoItem todoItem=todoItemService.getTodoItemById(id);
            model.addAttribute("todoItem",todoItem);
            return "add_or_edit";
        }
        return "forward:/index.jsp";
    }
    @RequestMapping("addOrEdit")
    public String addOrEdit(String action,TodoItem todoItem) {
        if(action.trim().equals("add"))
            todoItemService.addTodoItem(todoItem);
        else if(action.trim().equals("edit")){
            todoItemService.updateTodoItem(todoItem);
            System.out.println(todoItem.toString()+"888888888888");
        }

//        User user = (User) request.getSession().getAttribute("user");
//        if (user != null) {
//            TodoItem todoItem=todoItemService.getTodoItemById(id);
//            model.addAttribute("todoItem",todoItem);
//            return "add_or_edit";
//        }
//        return "forward:showAll";
        return "redirect:showAll";
    }
}
