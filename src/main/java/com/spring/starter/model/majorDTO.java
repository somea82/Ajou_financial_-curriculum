package com.spring.starter.model;

public class majorDTO {
    private int id;
    private String small_category;
    private String carrer_path_id;
    private String core_color;
    private String support_color;


    public String getName()
    {
        return small_category;
    }

    public void setName(String name)
    {
        this.small_category = name;
    }

    public String getMajor_id() {return carrer_path_id;}

    public void setMajor_id(String major_id)
    {
        this.carrer_path_id = major_id;
    }
    public void setJob_id(String job_id)
    {
        this.carrer_path_id = job_id;
    }
    public String getCore_color()
    {
        return core_color;
    }
    public void setCore_color(String core_color)
    {
        this.core_color = core_color;
    }
    public String getSupport_color()
    {
        return support_color;
    }
    public void setSupport_color(String support_color)
    {
        this.support_color = support_color;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
}