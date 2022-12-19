import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WillPopScope - 안드로이드의 시스템 뒤로가기 버튼은 앱종료까지 실행하기 때문에 이를 방지하기 위한 기능
    return WillPopScope(
      onWillPop: () async {
        // true - Pop 가능
        // false - Pop 불가능
        final canPop = Navigator.canPop(context);
        return canPop;
      },
      child: MainLayout(
        title: 'Home Screen',
        children: [
          ElevatedButton(
            onPressed: () {
              print(Navigator.canPop(context));
            },
            child: Text('Can Pop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text('Maybe Pop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Pop'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => RouteOneScreen(
                      number: 576083,
                    )),
              ));

              print(result);
            },
            child: Text('Push'),
          )
        ],
      ),
    );
  }
}
