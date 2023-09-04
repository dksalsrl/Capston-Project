package com.mydiary.my_diary_server.repository;

import com.mydiary.my_diary_server.model.Diary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiaryRepository extends JpaRepository<Diary, Long>{

}
