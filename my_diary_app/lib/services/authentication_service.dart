import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart' hide TokenManager;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_diary_app/utils/TokenManager.dart';


class KakaoLoginScreen extends StatefulWidget {
  @override
  _KakaoLoginScreenState createState() => _KakaoLoginScreenState();
}

class _KakaoLoginScreenState extends State<KakaoLoginScreen> {

  static const String _kakaoTokenKey = 'kakao_access_token';


  Future<void> _handleKakaoLogin() async {

    OAuthToken token;

    try {
      token = await UserApi.instance.loginWithKakaoTalk();
      print('카카오톡으로 로그인 성공 ${token.accessToken}');

      sendTokenToServer(token.accessToken); // 토큰을 문자열로 전달

      //Token을 shared_preference 를 활용해 저장
      await TokenManager.saveKakaoToken(token.accessToken);
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
    }

    /*
    서버에 정보 요청 시 토큰을 불러와서 헤더나 바디에 토큰에 대한 정보를
    넣는 예시 코드
     */
    // String? savedToken = await TokenManager.getKakaoToken();
    // if (savedToken != null) {
    //   // 토큰이 저장되어 있을 경우 요청 헤더에 추가
    //   final response = await http.post(
    //     url,
    //     headers: {
    //       'Content-Type': 'application/json',
    //       'Authorization': 'Bearer $savedToken', // 토큰을 요청 헤더에 추가
    //     },
    //     body: jsonEncode({'token': token}),
    //   );
    //
    //   // ...
    // } else {
    //   // 토큰이 없는 경우 처리
    // }
  }


  Future<void> sendTokenToServer(String token) async {
    final url = Uri.parse('http://LocalHost:8080/api/token'); // 서버의 엔드포인트 URL로 변경

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'token': token}),
    );

    if (response.statusCode == 200) {
      // 요청 성공, 서버에서의 추가 작업 처리
    } else {
      // 요청 실패 처리
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kakao Login Example'),
      ),
      body: InkWell(
        onTap: _handleKakaoLogin,
        child: Image.asset(
          'res/kakaoLogin.png',
          width: 200,
          height: 50,
        ),
      )
    );
  }
}
