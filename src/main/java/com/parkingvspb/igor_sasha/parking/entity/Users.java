package com.parkingvspb.igor_sasha.parking.entity;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class Users {

    @Id
    @Column(name = "username")
    @NotEmpty
    @Size(min = 4, message = "Имя должно быть минимум 4 символа, а также уникальным")
    private String name;

    @Column(name = "password")
    @NotEmpty
    @Size(min = 6, message = "Пароль должен быть не меньше 6 символов")
    private String password;

    @Transient
    @NotEmpty
    @Size(min = 6, message = "Пароль должен быть не меньше 6 символов")
    private String password2;

    @Column(name = "enabled")
    private int enabled;

    public Users() {
        this.enabled = 1;
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

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
}
