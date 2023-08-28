package com.mydiary.my_diary_server.model;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class UserDTO {
    private String username;
    private String email;
}
