package com.mydiary.my_diary_server.service;

import com.mydiary.my_diary_server.model.DiaryDTO;
import com.mydiary.my_diary_server.model.DiaryResponseDTO;
import org.springframework.data.crossstore.ChangeSetPersister;

public interface DiaryService {

    DiaryResponseDTO getDiary(Long number);

    DiaryResponseDTO saveDiary(DiaryDTO diaryDTO);

    DiaryResponseDTO changeDiary(Long number, DiaryDTO diaryDTO) throws ChangeSetPersister.NotFoundException;

    void deleteDiary(Long number) throws Exception;
}
