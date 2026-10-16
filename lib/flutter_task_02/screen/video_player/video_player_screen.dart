import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String title;

  const VideoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  YoutubePlayerController? _ytController;
  WebViewController? _webController;
  bool _isLoading = true;
  bool _hasError = false;
  bool _useWebFallback = false;

  static const Color _primaryColor = Color(0xFF1D61D1);

  static const String _appOrigin = 'https://com.example.flutter_app_learning';

  @override
  void initState() {
    super.initState();

    final url = widget.videoUrl.trim();
    final videoId = YoutubePlayerController.convertUrlToId(url);

    if (videoId != null) {
      _ytController = YoutubePlayerController.fromVideoId(
        videoId: videoId,
        autoPlay: true,
        params: const YoutubePlayerParams(
          origin: _appOrigin,
          showFullscreenButton: true,
          showControls: true,
          mute: false,
        ),
      );


      _ytController!.listen((value) {
        if (value.error != YoutubeError.none && !_useWebFallback) {
          _switchToWebFallback(videoId);
        }
      });
    } else {
      _initWebView(url);
    }
  }

  void _switchToWebFallback(String videoId) {
    if (!mounted) return;
    _initWebView('https://m.youtube.com/watch?v=$videoId');
    setState(() {
      _useWebFallback = true;
    });
  }

  void _initWebView(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null || !uri.hasScheme) {
      _hasError = true;
      _isLoading = false;
      return;
    }

    _isLoading = true;
    _hasError = false;

    _webController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent(
        'Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 '
            '(KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36',
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            if (!mounted) return;
            setState(() => _isLoading = false);
          },
          onWebResourceError: (error) {
            if (!mounted) return;
            if (error.isForMainFrame ?? true) {
              setState(() {
                _isLoading = false;
                _hasError = true;
              });
            }
          },
        ),
      )
      ..loadRequest(uri);
  }

  @override
  void dispose() {
    _ytController?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_ytController != null && !_useWebFallback) {
      return YoutubePlayerScaffold(
        controller: _ytController!,
        aspectRatio: 16 / 9,
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
              backgroundColor: _primaryColor,
              foregroundColor: Colors.white,
            ),
            body: ListView(
              children: [
                player,
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
      ),
      body: _hasError || _webController == null
          ? const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Video load kora jachchhe na. Link ba internet check korun.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      )
          : Stack(
        children: [
          WebViewWidget(controller: _webController!),
          if (_isLoading)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}