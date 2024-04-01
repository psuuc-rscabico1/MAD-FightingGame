import 'package:flutter/material.dart';
import 'package:midterm_project/screens/startgame.dart';
import 'package:video_player/video_player.dart';


class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;
  late bool _showStartButton;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/video/mart-practice.mp4',
    )..addListener(_videoListener);
    _controller.initialize().then((_) {
      setState(() {
        _controller.play();
      });
    });
    _showStartButton = false;
  }

  void _videoListener() {
    if (_controller.value.position == _controller.value.duration) {
      setState(() {
        _showStartButton = true;
        _controller.pause();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              Positioned(
              top: 20,
              right: 20,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/onboarding4');
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
              _showStartButton
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.push( 
                          context,
                          MaterialPageRoute(builder: (context) => StartGame()),
                        );
                      },
                      child: Text('Start'),
                    )
                  : Container(),
            ],
          ),
        ),
    );
  }
}