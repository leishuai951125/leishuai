package com.hd.pojo;

import javax.persistence.criteria.CriteriaBuilder;
import java.sql.Timestamp;

/**
 * Created by leishuai on 2018/7/21.
 */
public class TodoItem {
    private Integer todo_item_id;
    private Integer user_id;
    private String todo_item_title;
    private String todo_item_content;
    private String priority; //优先级：LOW/MEDIUM/HIGH
    private Timestamp creation_date;
    private Timestamp last_update_date;
    private String comments;

    @Override
    public String toString() {
        return "TodoItem{" +
                "todo_item_id=" + todo_item_id +
                ", user_id=" + user_id +
                ", todo_item_title='" + todo_item_title + '\'' +
                ", todo_item_content='" + todo_item_content + '\'' +
                ", priority='" + priority + '\'' +
                ", creation_date=" + creation_date +
                ", last_update_date=" + last_update_date +
                ", comments='" + comments + '\'' +
                '}';
    }

    public Integer getTodo_item_id() {
        return todo_item_id;
    }

    public void setTodo_item_id(Integer todo_item_id) {
        this.todo_item_id = todo_item_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getTodo_item_title() {
        return todo_item_title;
    }

    public void setTodo_item_title(String todo_item_title) {
        this.todo_item_title = todo_item_title;
    }

    public String getTodo_item_content() {
        return todo_item_content;
    }

    public void setTodo_item_content(String todo_item_content) {
        this.todo_item_content = todo_item_content;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public Timestamp getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(Timestamp creation_date) {
        this.creation_date = creation_date;
    }

    public Timestamp getLast_update_date() {
        return last_update_date;
    }

    public void setLast_update_date(Timestamp last_update_date) {
        this.last_update_date = last_update_date;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
