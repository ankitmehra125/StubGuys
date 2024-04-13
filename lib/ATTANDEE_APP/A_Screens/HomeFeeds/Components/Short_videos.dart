import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortVideos extends StatefulWidget {
  const ShortVideos({Key? key}) : super(key: key);

  @override
  State<ShortVideos> createState() => _ShortVideosState();
}

class _ShortVideosState extends State<ShortVideos> {
  final List<String> videoPaths = [
    'Assets/Videos/01.mp4',
    'Assets/Videos/02.mp4',
    // Add more videos as needed
  ];

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer(0); // Initialize with the first video
  }

  void _initializeVideoPlayer(int index) {
    _videoPlayerController = VideoPlayerController.asset(videoPaths[index])
      ..initialize().then((_) {
        setState(() {}); // Ensure a rebuild after initialization
        _videoPlayerController.play();
      });
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    _videoPlayerController.initialize().then((_) {
      print("Video initialization succeeded");
      _videoPlayerController.play();
    }).catchError((error) {
      print("Error during video initialization: $error");
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoPaths.length,
      itemBuilder: (context, index) {
        return Container(
          height: 250, // Set the desired height
          child: GestureDetector(
            onTap: () {
              // Handle tap to play/pause
              if (_videoPlayerController.value.isPlaying) {
                _videoPlayerController.pause();
              } else {
                _videoPlayerController.play();
              }
            },
            child: Chewie(controller: _chewieController),
          ),
        );
      },
    );
  }
}
