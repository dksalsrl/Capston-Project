import 'package:flutter/material.dart';
import 'write_diary_screen.dart';
import 'package:my_diary_app/services/authentication_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Diary App'),
      ),
      body: const Center(
        child: Text('Welcome to My Diary App!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 일기 작성 화면으로 이동하는 코드를 추가할 수 있습니다.
        },
        child: Icon(Icons.add),
      ),
      //로그인 버튼 추가
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KakaoLoginScreen()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
