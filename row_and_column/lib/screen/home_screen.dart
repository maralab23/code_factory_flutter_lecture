import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Row(
            /*
              MainAxisAlignment : 주측 정렬
              MainAxisAlignment.start : 시작 기준 정렬
              MainAxisAlignment.end : 끝 기준 정렬
              MainAxisAlignment.center : 가운데 기준 정렬
              MainAxisAlignment.spaceBetween : 위젯과 위젯의 사이가 동일하게 배치된다.
              MainAxisAlignment.spaceEvenly : 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
              MainAxisAlignment.spaceAround : spaceEvenly + 끝과 끝의 간격은 1/2
             */
            mainAxisAlignment: MainAxisAlignment.start,
            /*
              CrossAxisAlignment : 반대축 정렬
              CrossAxisAlignment.start : 시작 기준 정렬
              CrossAxisAlignment.end : 끝 기준 정렬
              CrossAxisAlignment.center : 가운데 기준 정렬
              CrossAxisAlignment.stretch : 최대한으로 늘린다 (하위 위젯의 size에 상관없이)
             */
            crossAxisAlignment: CrossAxisAlignment.start,
            /*
              MainAxisSize : 주축 크기
              MainAxisSize.min : 최소
              MainAxisSize.max : 최대
             */
            mainAxisSize: MainAxisSize.max,
            children: [
              /* 
                Expanded / Flexible >> Column, Row 위젯에서만 사용 가능함
                Expanded : 남은 공간만큼 확장
               */
              Flexible(
                flex: 1, // flex : 확장할 비율
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
