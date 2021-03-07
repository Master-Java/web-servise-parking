package com.parkingvspb.igor_sasha.parking.entity;

import javax.persistence.*;

@Entity
@Table(name = "cars")
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "number")
    private String number;

    @Column(name = "isRent")
    private boolean isRent;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "owner")
    private Users user;

    @Column(name = "dateForRented")
    private String dateForRented;

    @Column(name = "brand")
    private String brand;

    @Column(name = "power")
    private int power;

    @Column(name = "category")
    private String category;

    @Column(name = "yearOfIssue")
    private String yearOfIssue;

    @Column(name = "environmental")
    private String environmental;

    public Car() {
        isRent = false;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public boolean isRent() {
        return isRent;
    }

    public void setRent(boolean rent) {
        isRent = rent;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public String getDateForRented() {
        return dateForRented;
    }

    public void setDateForRented(String dateForRented) {
        this.dateForRented = dateForRented;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getYearOfIssue() {
        return yearOfIssue;
    }

    public void setYearOfIssue(String yearOfIssue) {
        this.yearOfIssue = yearOfIssue;
    }

    public String getEnvironmental() {
        return environmental;
    }

    public void setEnvironmental(String environmental) {
        this.environmental = environmental;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", number='" + number + '\'' +
                ", isRent=" + isRent +
                ", user=" + user +
                ", dateForRented='" + dateForRented + '\'' +
                ", brand='" + brand + '\'' +
                ", power=" + power +
                ", category='" + category + '\'' +
                ", yearOfIssue='" + yearOfIssue + '\'' +
                ", environmental='" + environmental + '\'' +
                '}';
    }
}
