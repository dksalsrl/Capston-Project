import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://your-api-url.com'; // 실제 API URL로 대체

  Future<Map<String, dynamic>> fetchDiaries() async {
    final response = await http.get(Uri.parse('$baseUrl/diaries'));

    if (response.statusCode == 200) {
      return Map<String, dynamic>.from(json.decode(response.body));
    } else {
      throw Exception('Failed to load diaries');
    }
  }

  Future<void> postDiary(Map<String, dynamic> diaryData) async {
    final response = await http.post(
      Uri.parse('$baseUrl/diaries'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(diaryData),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to post diary');
    }
  }
}
