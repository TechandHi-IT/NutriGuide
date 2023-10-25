import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:nutriguide/webview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // MyChromeSafariBrowser browser = MyChromeSafariBrowser();
  MyInAppBrowser browser = MyInAppBrowser();

  var settings = InAppBrowserClassSettings(
    browserSettings: InAppBrowserSettings(
      hideUrlBar: true,
    ),
    webViewSettings: InAppWebViewSettings(javaScriptEnabled: true),
  );

  @override
  void initState() {
    super.initState();
    browser.openUrlRequest(
      urlRequest: URLRequest(url: WebUri("https://chat.openai.com/")),
      settings: settings,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
