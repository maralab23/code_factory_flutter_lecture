import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                // Material State - 버튼에만 해당하지 않음
                // hovered - 호버링 상태 (마우스 커서 올려놓은 상태)
                // focused - 포커스 됐을때 (텍스트 필드)
                // pressed - 눌렸을때
                // dragged - 드래그 됐을때
                // selected - 선택됐을때 (체크박스, 라디오버튼)
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을때
                // disabled - 비활성화 됐을때
                // error - 에러 상태
                foregroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }

                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return EdgeInsets.all(100.0);
                    }

                    return EdgeInsets.all(20.0);
                  },
                ),
              ),
              child: Text('ElevatedButton ButtonStyle'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                shadowColor: Colors.green,
                elevation: 20.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.orange),
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
