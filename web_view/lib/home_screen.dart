import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  final String homeUrl = "https://www.naver.com";

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Maro Lab'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                if (controller == null) {
                  return;
                }
                controller!.loadUrl(homeUrl);
              },
              icon: Icon(
                Icons.home,
              )),
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
