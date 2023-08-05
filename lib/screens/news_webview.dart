import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const NewsWebView());
String urlGlobal = "";

class NewsWebView extends StatefulWidget {
  const NewsWebView({super.key});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  final WebViewController _controller = WebViewController();

  @override
  void initState() {
    super.initState();
    _controller.loadRequest(Uri.parse(urlGlobal));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Colors.grey.shade300,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.black87,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 19,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  urlGlobal.split("/").toList()[2],
                  style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                color: Colors.black87,
                onPressed: () => _controller.reload(),
                icon: Image.asset(
                  'assets/images/news_icon.png',
                  width: 20,
                  height: 20,
                )),
            PopupMenuButton(
              shadowColor: Colors.grey,
              surfaceTintColor: Colors.white,
              offset: Offset(0, 50),
              icon: Icon(Icons.link, color: Colors.black87),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text(urlGlobal),
                ),
              ],
              onSelected: handleClick,
            ),
            PopupMenuButton(
              shadowColor: Colors.grey,
              surfaceTintColor: Colors.white,
              offset: Offset(0, 50),
              icon: Icon(Icons.more_horiz, color: Colors.black87),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 0,
                    child: ListTile(
                      leading: Icon(Icons.bookmark_border),
                      title: Text('Save for later'),
                    )),
                PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    )),
              ],
              onSelected: handleClick,
            ),
          ],
        ),
        body: WebViewWidget(controller: _controller),
      ),
    );
  }
}

void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}
