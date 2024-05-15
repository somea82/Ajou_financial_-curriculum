package com.spring.starter.model;

public class videoDTO {
    private int id;
    private String job_name;
    private String video_title;
    private String thumbnail_url;
    private String video_link;
    private String jobs_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJob_name() {
        return job_name;
    }
    public void setJob_name(String job_name) {
        this.job_name = job_name;
    }
    public String getVideo_title() {
        return video_title;
    }
    public void setVideo_title(String video_title) {
        this.video_title = video_title;
    }
    public String getThumbnail_url() {
        return thumbnail_url;
    }
    public void setThumbnail_url(String thumbnail_url) {
        this.thumbnail_url = thumbnail_url;
    }
    public String getVideo_link() {
        return video_link;
    }
    public void setVideo_link(String video_link) {
        this.video_link = video_link;
    }

    public String getJobs_id() {
        return jobs_id;
    }

    public void setJobs_id(String jobs_id) {
        this.jobs_id = jobs_id;
    }
}
