package com.spring.starter.model;

public class cilDTO {
    private int row_id;
    private int col_id;
    private String subject;
    private String name;
    private String is_mandatory;
    /*public cilDAO() {
        super();
    }*/
    /*public cilDAO(int row_id, int col_id, String subject, String name, String is_mandatory) {
        super();
        this.row_id = row_id;
        this.col_id = col_id;
        this.subject = subject;
        this.name = name;
        this.is_mandatory = is_mandatory;

    }*/
    public String getIs_mandatory() {
        return is_mandatory;
    }

    public void setIs_mandatory(String is_mandatory) {
        this.is_mandatory = is_mandatory;
    }

    public String getSubject()
    {
        return subject;
    }

    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public int getRow_id()
    {
        return row_id;
    }

    public void setRow_id(int row_id)
    {
        this.row_id = row_id;
    }

    public int getCol_id()
    {
        return col_id;
    }

    public void setCol_id(int col_id)
    {
        this.col_id = col_id;
    }
}