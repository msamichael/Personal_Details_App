import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebViewScreen extends StatelessWidget {
 WebViewScreen({super.key});
  

final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))

    ..loadRequest(Uri.parse('https://github.com/msamichael')
    );


  



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: WebViewWidget(controller: controller)),

    );
  }
}


