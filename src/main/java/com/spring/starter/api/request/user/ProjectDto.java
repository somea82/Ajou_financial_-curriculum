package com.spring.starter.api.request.user;

import lombok.*;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@NoArgsConstructor
public class ProjectDto {

    @NotNull
    private String name;

    @NotNull
    private String maker;

    @NotNull
    private Long studentId;

    @NotNull
    private String description;

    @NotNull
    private String jobs;

    @NotNull
    private String thumbnailLink;
}
