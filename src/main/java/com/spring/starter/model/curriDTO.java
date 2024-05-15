package com.spring.starter.model;

public class curriDTO {
    private int id;
    private String carrer_path_id;
    private String small_category;
    private String category;

    public int getPage_id(){
        return this.id;
    }
    public void setPage_id(int id){
        this.id = id;
    }
    public String getCarrer_path_id(){
        return this.carrer_path_id;
    }
    public void setCarrer_path_id(String carrer_path_id){
        this.carrer_path_id = carrer_path_id;
    }
    public String getName(){
        return this.small_category;
    }
    public void setName(String small_category){
        this.small_category = small_category;
    }
    public String getCategory()
    {
        return this.category;
    }
    public void setCategory(String category){
        this.category = category;
    }
}
