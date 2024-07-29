import 'package:analytics_app/main.dart';
import 'package:analytics_app/post_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class All_Activity extends StatefulWidget {
  const All_Activity({super.key});

  @override
  State<All_Activity> createState() => _All_ActivityState();
}

class _All_ActivityState extends State<All_Activity> {
  final List<VideoPlayerController> _controller = [];
  VideoPlayerController? _currentlyPlayingController;

  @override
  void initState() {
    super.initState();
    _initializeVideoControllers();
  }

  void _initializeVideoControllers() {
    _controller.add(VideoPlayerController.asset(
      "assets/5547212-uhd_4096_2160_25fps.mp4",
    ));
    for (var controller in _controller) {
      controller.setLooping(true);
      controller.setVolume(1.0);
      controller.initialize().then((_) {
        setState(() {});
      });
    }
  }

  void _playPauseVideo(VideoPlayerController controller) {
    setState(() {
      if (_currentlyPlayingController != null &&
          _currentlyPlayingController != controller) {
        _currentlyPlayingController!.pause();
      }
      if (controller.value.isPlaying) {
        controller.pause();
        _currentlyPlayingController = null;
      } else {
        controller.play();
        _currentlyPlayingController = controller;
      }
    });
  }

  @override
  void dispose() {
    for (var controller in _controller) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const splashScreen()),
              );
            },
            child: const Icon(Icons.arrow_back_outlined)),
        title: const Text(
          "All activity",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < _controller.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 420,
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(1000)),
                              child: Image.asset(
                                "assets/new-nt-guna-beta-keystore.jpeg",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Mohini Shewale . ",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                      Text(
                                        "You",
                                        style: TextStyle(
                                            fontSize: 9, color: Colors.black45),
                                      ),
                                      SizedBox(
                                        width: 185,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.black38,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "140k+ Linkedin Family 🚀|| Linkedin Branding Strategist || Al C..",
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.black45),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "1d.",
                                        style: TextStyle(
                                            fontSize: 9, color: Colors.black45),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Exciting News for Marketers! Elevate Your Game with Akool's AI-Powered Tools!",
                          style: GoogleFonts.roboto(
                              fontSize: 10, color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "...See more",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FutureBuilder(
                        future: _controller[i].initialize(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return GestureDetector(
                              onTap: () {
                                _playPauseVideo(_controller[i]);
                              },
                              child: AspectRatio(
                                aspectRatio: _controller[i].value.aspectRatio,
                                child: VideoPlayer(_controller[i]),
                              ),
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                      Container(),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 5),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Screenshot 2024-07-26 at 7.07.10 PM.png",
                              height: 20,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "You and 416 others",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black45),
                            ),
                            const Spacer(),
                            const Text(
                              "89 comments . 22 reposts",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                          "assets/Screenshot 2024-07-26 at 7.02.39 PM.png"),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "388,896 ",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black54),
                              ),
                            ),
                            const Text(
                              "impressions",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 10,
                                  color: Colors.black54),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Post_analytics()),
                                );
                              },
                              child: const Text(
                                "View analytics",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 420,
                width: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black26),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(1000)),
                            child: Image.asset(
                              "assets/new-nt-guna-beta-keystore.jpeg",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Mohini Shewale . ",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                    Text(
                                      "You",
                                      style: TextStyle(
                                          fontSize: 9, color: Colors.black45),
                                    ),
                                    SizedBox(
                                      width: 185,
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.black38,
                                    )
                                  ],
                                ),
                                Text(
                                  "140k+ Linkedin Family 🚀|| Linkedin Branding Strategist || Al C..",
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.black45),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "1d.",
                                      style: TextStyle(
                                          fontSize: 9, color: Colors.black45),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Exciting News for Marketers! Elevate Your Game with Akool's AI-Powered Tools!",
                        style: GoogleFonts.roboto(
                            fontSize: 10, color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "...See more",
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 1000,
                      height: 200,
                      child: Image.asset(
                        "assets/15542038745ca344e267fb80.webp",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Screenshot 2024-07-26 at 7.07.10 PM.png",
                            height: 20,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "You and 416 others",
                            style:
                                TextStyle(fontSize: 9, color: Colors.black45),
                          ),
                          const Spacer(),
                          const Text(
                            "89 comments . 22 reposts",
                            style:
                                TextStyle(fontSize: 9, color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                        "assets/Screenshot 2024-07-26 at 7.03.21 PM.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "388,896 ",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black54),
                            ),
                          ),
                          const Text(
                            "impressions",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 10,
                                color: Colors.black54),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Post_analytics()),
                              );
                            },
                            child: const Text(
                              "View analytics",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blue,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 420,
                width: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black26),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(1000)),
                            child: Image.asset(
                              "assets/new-nt-guna-beta-keystore.jpeg",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Mohini Shewale . ",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                    Text(
                                      "You",
                                      style: TextStyle(
                                          fontSize: 9, color: Colors.black45),
                                    ),
                                    SizedBox(
                                      width: 185,
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.black38,
                                    )
                                  ],
                                ),
                                Text(
                                  "140k+ Linkedin Family 🚀|| Linkedin Branding Strategist || Al C..",
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.black45),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "1d.",
                                      style: TextStyle(
                                          fontSize: 9, color: Colors.black45),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Exciting News for Marketers! Elevate Your Game with Akool's AI-Powered Tools!",
                        style: GoogleFonts.roboto(
                            fontSize: 10, color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "...See more",
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 1000,
                      height: 200,
                      child: Image.asset(
                        "assets/file-6113d5f8845dc.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Screenshot 2024-07-26 at 7.07.10 PM.png",
                            height: 20,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "You and 416 others",
                            style:
                                TextStyle(fontSize: 9, color: Colors.black45),
                          ),
                          const Spacer(),
                          const Text(
                            "89 comments . 22 reposts",
                            style:
                                TextStyle(fontSize: 9, color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                        "assets/Screenshot 2024-07-26 at 7.03.21 PM.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "388,896 ",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black54),
                            ),
                          ),
                          const Text(
                            "impressions",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 10,
                                color: Colors.black54),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Post_analytics()),
                              );
                            },
                            child: const Text(
                              "View analytics",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blue,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
