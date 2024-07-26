import 'package:analytics_app/post_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: All_Activity(),
    );
  }
}

class All_Activity extends StatefulWidget {
  const All_Activity({super.key});

  @override
  State<All_Activity> createState() => _All_ActivityState();
}

class _All_ActivityState extends State<All_Activity> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  void initState() {
    _controller = VideoPlayerController.asset(
      "assets/5547212-uhd_4096_2160_25fps.mp4",
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text(
          "All activity",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 405,
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
                    FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Linkedin-Like-Icon-Thumbup500.png",
                            height: 10,
                            width: 10,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Divider(),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 11,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Love",
                              style: TextStyle(fontSize: 11, color: Colors.red),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.comment_outlined,
                              size: 11,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Comment",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.repeat,
                              size: 11,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Repost",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.send,
                              size: 11,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Send",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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
                          Text(
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
                height: 405,
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
                    FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Linkedin-Like-Icon-Thumbup500.png",
                            height: 10,
                            width: 10,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Divider(),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 12,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Love",
                              style: TextStyle(fontSize: 11, color: Colors.red),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.comment_outlined,
                              size: 12,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Comment",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.repeat,
                              size: 11,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Repost",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.send,
                              size: 11,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Send",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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
                          Text(
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
