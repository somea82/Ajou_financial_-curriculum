package com.spring.starter.model;

public class mentorDTO {
    private int id;
    public String name;
    public String industry_name;
    public String area;
    public String email;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getIndustry_name() {
        return industry_name;
    }

    public String getArea() {
        return area;
    }

    public String getEmail() {
        return email;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setIndustry_name(String industry_name) {
        this.industry_name = industry_name;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
