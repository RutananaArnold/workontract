import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CardsInfor extends StatefulWidget {
  const CardsInfor({
    Key? key,
  }) : super(key: key);

  @override
  State<CardsInfor> createState() => _CardsInforState();
}

class _CardsInforState extends State<CardsInfor> {
  List<String> items = ['Introduction', 'Core Elements', 'Analysis', 'Purpose'];
  List<IconData> icons = [
    Icons.switch_access_shortcut,
    Icons.contact_page,
    Icons.analytics_rounded,
    Icons.warning_amber_rounded
  ];
  String? videoId = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=zp3VMe0Jpf8");

  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'videoId',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    //width should be screen width
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      heightFactor: 1,
      child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height / 50,
            left: screenSize.width / 30,
            right: screenSize.width / 30,
          ),
          child: ListView(children: [
            for (int i = 0; i < items.length; i++)
              ListTile(
                title: Card(
                  color: Theme.of(context).cardColor,
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenSize.height / 45,
                        bottom: screenSize.height / 45,
                        left: screenSize.width / 20),
                    child: Row(
                      children: [
                        Icon(
                          icons[i],
                          color: Theme.of(context).iconTheme.color,
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onTap: () {},
                          child: Text(
                            items[i],
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                subtitle: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: YoutubePlayer(
                      controller: controller,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                      progressColors: const ProgressBarColors(
                        playedColor: Colors.amber,
                        handleColor: Colors.amberAccent,
                      ),
                    ),
                    // Text(
                    //   quotes[i],
                    //   style: const TextStyle(
                    //     fontSize: 15,
                    //     fontWeight: FontWeight.normal,
                    //     color: Colors.black,
                    //   ),
                    // ),
                  ),
                ),
              ),
          ])),
    ));
  }
}
