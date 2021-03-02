package com.parkingvspb.igor_sasha.parking.entity;

import javax.persistence.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "details")
public class UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "patronymic")
    private String patronymic;

    @Column(name = "age")
    private int age;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "city")
    private String city;

    @Column(name = "country")
    private String country;

    @Column(name = "data_reg")
    private String registrationDate;

    @OneToOne(mappedBy = "userDetails", cascade = CascadeType.ALL)
    private Users user;

    public UserDetails() {
        this.name = "";
        this.surname = "";
        this.patronymic = "";
        this.age = 0;
        this.phone = "";
        this.email = "";
        this.city = "";
        this.country = "";
        DateFormat df = new SimpleDateFormat("dd-MMMM-yyy");
        this.registrationDate = df.format(new Date());
    }

    public int getId() {
        return id;
    }

    public String getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public void copyAttribute(UserDetails userDetails) {
        if (!userDetails.getName().equals("")&&!userDetails.getName().equals(this.name)){
            this.name = userDetails.getName();
        }
        if (!userDetails.getSurname().equals("")&&!userDetails.getSurname().equals(this.surname)) {
            this.surname = userDetails.getSurname();
        }
        if (!userDetails.getPatronymic().equals("")&&!userDetails.getPatronymic().equals(this.patronymic)) {
            this.patronymic = userDetails.getPatronymic();
        }
        if (!userDetails.getCity().equals("")&&!userDetails.getCity().equals(this.city)) {
            this.city = userDetails.getCity();
        }
        if (!userDetails.getCountry().equals("")&&!userDetails.getCountry().equals(this.country)) {
            this.country = userDetails.getCountry();
        }
        if (!userDetails.getEmail().equals("")&&!userDetails.getEmail().equals(this.email)) {
            this.email = userDetails.getEmail();
        }
        if (!userDetails.getPhone().equals("")&&!userDetails.getPhone().equals(this.phone)) {
            this.phone = userDetails.getPhone();
        }
        this.age=userDetails.getAge();
    }

    @Override
    public String toString() {
        return "UserDetails{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", patronymic='" + patronymic + '\'' +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", registrationDate='" + registrationDate + '\'' +
                '}';
    }
}
