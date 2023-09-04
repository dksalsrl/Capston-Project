import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  static const String _kakaoTokenKey = 'kakao_access_token';

  // Kakao 토큰 저장
  static Future<void> saveKakaoToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kakaoTokenKey, token);
  }

  // Kakao 토큰 불러오기
  static Future<String?> getKakaoToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_kakaoTokenKey);
  }

  // Kakao 토큰 삭제
  static Future<void> removeKakaoToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kakaoTokenKey);
  }
}