package com.mydiary.my_diary_server.model;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
    private String username;
    private String email;
}
