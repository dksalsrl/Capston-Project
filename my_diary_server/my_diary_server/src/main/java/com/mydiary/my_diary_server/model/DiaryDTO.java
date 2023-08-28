package com.mydiary.my_diary_server.model;

import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DiaryDTO {
    private String title;
    private String content;
    private LocalDate date;
}
