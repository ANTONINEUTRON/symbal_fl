import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SymbalRenderingEngine extends StatefulWidget {
  const SymbalRenderingEngine({super.key, required this.gameToBeRendered});

  final String gameToBeRendered;

  @override
  State<SymbalRenderingEngine> createState() => _SymbalRenderingEngineState();
}

class _SymbalRenderingEngineState extends State<SymbalRenderingEngine> {
  bool isLoading = true;
  bool hasError = false;
  String? errorMessage;
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            print("Progressing $progress%");
          },
          onPageStarted: (String url) {
            print("Page started loading: $url");
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
              hasError = false;
              errorMessage = null;
              // lives = widget.gameData.gameRules?.playerLives ?? 3;
            });
            print("Page finished loading: $url");
          },
          onHttpError: (HttpResponseError error) {
            setState(() {
              isLoading = false;
              hasError = true;
              errorMessage = "HTTP Error: ${error.response?.statusCode ?? 'Unknown'} - Failed to load content";
            });
            print("Page error while loading: $error");
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              isLoading = false;
              hasError = true;
              errorMessage = "Web Resource Error: ${error.description}";
            });
            print("Web resource error: $error");
          },
          onNavigationRequest: (NavigationRequest request) {
            // if (request.url.startsWith('https://www.youtube.com/')) {
            //   return NavigationDecision.prevent;
            // }
            return NavigationDecision.navigate;
          },
        ),
      );
    _initializeGame();
  }

  Future<void> _initializeGame() async {
    // Load the game content
    await _controller.loadHtmlString(widget.gameToBeRendered);
  }

  void _retryLoading() {
    setState(() {
      isLoading = true;
      hasError = false;
      errorMessage = null;
    });
    // Reload the content
    _initializeGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // WebView - always present but may not be visible initially
          WebViewWidget(controller: _controller),
          // Loading overlay - shown while isLoading is true
          if (isLoading)
            Container(
              color: Colors.white,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          // Error overlay - shown when hasError is true
          if (hasError)
            Container(
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Failed to Load Game',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        errorMessage ?? 'An unknown error occurred',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: _retryLoading,
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
