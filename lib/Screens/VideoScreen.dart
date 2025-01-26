import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controllerChildren;
  late YoutubePlayerController _controllerAdolescent;
  late YoutubePlayerController _controllerSenior;

  @override
  void initState() {
    super.initState();
    _controllerChildren = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=3w6HDtP4nYA')!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    _controllerAdolescent = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=XASJM7K9EEo')!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    _controllerSenior = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=2xzu6hczdc0')!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controllerChildren.dispose();
    _controllerAdolescent.dispose();
    _controllerSenior.dispose();
    super.dispose();
  }

  Widget _buildYoutubePlayer(YoutubePlayerController controller, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        YoutubePlayer(
          controller: controller,
          showVideoProgressIndicator: true,
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mira y Aprende 🍿'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildYoutubePlayer(_controllerChildren, "Videos para Niñas/os"),
              _buildYoutubePlayer(_controllerAdolescent, "Videos para Adolescentes"),
              _buildYoutubePlayer(_controllerSenior, "Videos para Adultos Mayores"),
            ],
          ),
        ),
      ),
    );
  }
}
