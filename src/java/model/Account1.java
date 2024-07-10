/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tuanj
 */
public class Account1 {
    private String user_name;
    private String password;
    private String email;
    private int role_id;

    public Account1() {
    }

    public Account1(String user_name, String password, String email, int role_id) {
        this.user_name = user_name;
        this.password = password;
        this.email = email;
        this.role_id = role_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Account{" + "user_name=" + user_name + ", password=" + password + ", email=" + email + ", role_id=" + role_id + '}';
    }
    
}
