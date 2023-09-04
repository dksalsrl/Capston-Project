package com.mydiary.my_diary_server.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.stereotype.Service;

import java.time.LocalDate;


@Getter
@Setter
@AllArgsConstructor
public class DiaryDTO {
    private String title;
    private String content;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;
}
