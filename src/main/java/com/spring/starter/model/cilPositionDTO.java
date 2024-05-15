package com.spring.starter.model;

public class cilPositionDTO {

    private int id;
    private String code;

    private int row_id;

    private int col_id;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return code;
    }
    public void setSubject(String code) {
        this.code = code;
    }

    public int getRow_id() {
        return row_id;
    }
    public void setRow_id(int row_id) {
        this.row_id = row_id;
    }
    public int getCol_id() {
        return col_id;
    }
    public void setCol_id(int col_id) {
        this.col_id = col_id;
    }

}
