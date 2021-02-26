package com.parkingvspb.igor_sasha.parking.entity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class Users {

    @Id
    @Column(name = "username")
    @Size(min = 3, message = "Имя должно быть минимум 3 символа, а также уникальным")
    private String name;

    @Size(min = 6, message = "Пароль должен юыть не меньше 6 символов")
    @Column(name = "password")
    private String password;

    @Column(name = "enabled")
    private int enabled;

    public Users() {
    }

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

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
}
