package com.mydiary.my_diary_server.model;

import lombok.*;

import java.time.LocalDate;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class DiaryResponseDTO {
    private Long id;
    private String title;
    private String content;
    private LocalDate date;
}
