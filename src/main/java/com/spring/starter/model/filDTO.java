package com.spring.starter.model;

public class filDTO {
    private int row_id;
    private int col_id;
    private String code;
    private String name;
    private String is_mandatory;
    public String getIs_mandatory() {
        return is_mandatory;
    }

    public void setIs_mandatory(String is_mandatory) {
        this.is_mandatory = is_mandatory;
    }

    public String getCode()
    {
        return code;
    }

    public void setCode(String code)
    {
        this.code = code;
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