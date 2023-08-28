class Diary {
  final String id;  // 일기의 고유 ID
  final String title;  // 일기의 제목
  final String content;  // 일기의 내용
  final DateTime date;  // 일기 작성 날짜
  final String imagePath;  // 이미지 첨부 경로 (옵션)

  Diary({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    this.imagePath = '',  // 기본값으로 빈 문자열 설정
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'date': date.toIso8601String(),
      'imagePath': imagePath,
    };
  }

  factory Diary.fromJson(Map<String, dynamic> json) {
    return Diary(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      date: DateTime.parse(json['date']),
      imagePath: json['imagePath'],
    );
  }

  Diary update({
    String? title,
    String? content,
    String? imagePath,
  }) {
    return Diary(
      id: id,
      title: title ?? this.title,
      content: content ?? this.content,
      date: date,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  bool isSameDate(DateTime otherDate) {
    return date.year == otherDate.year &&
        date.month == otherDate.month &&
        date.day == otherDate.day;
  }



// 추가적인 메서드를 정의할 수 있습니다.
}
