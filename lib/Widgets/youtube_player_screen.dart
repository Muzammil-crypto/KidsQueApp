import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatefulWidget {
  final String title;
  final String url;
  @override
  YoutubeScreen({required this.title, required this.url});

  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  late YoutubePlayerController _controller;

  void runYoutubePlayer() {
    var id = YoutubePlayer.convertUrlToId(widget.url);
    _controller = YoutubePlayerController(
        initialVideoId: id!,
        flags: YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: false,
        ));
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(children: [
                player,
              ]),
            ),
          );
        });
  }
}
