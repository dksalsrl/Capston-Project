import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:my_diary_app/screens/home_screen.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '002001aad48dcca2375e4c52bb8c1281');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary App',
      theme: ThemeData(
        primarySwatch: Colors.blue,  // 테마 컬러 설정
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),  // 앱이 처음 실행될 때 표시할 홈 화면
    );
  }
}



