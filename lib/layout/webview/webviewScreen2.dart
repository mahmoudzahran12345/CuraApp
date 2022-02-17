import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen2 extends StatefulWidget {
  @override
  WebViewScreen2State createState() => WebViewScreen2State();
}

class WebViewScreen2State extends State<WebViewScreen2> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://healthcare.utah.edu/healthfeed/postings/2022/01/omicron-is-here.php',
    );
  }
}