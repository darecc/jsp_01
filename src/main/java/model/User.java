package model;

public class User {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private String password;
    public User() {
    }
    public User(String name, String pass) {
        this.name = name;
        this.password = pass;
    }
}
