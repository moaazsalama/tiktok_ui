import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui/tik_tok_icons_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Follwing ",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                      ),
                    )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "For You",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("@Moaaz Salama"),
                      Text("TikTok Ui Design"),
                      Row(children: [
                        Icon(
                          Icons.music_note,
                          size: 15.0,
                          color: Colors.white,
                        ),
                        Text('Artist name - Album name - song',
                            style: TextStyle(fontSize: 12.0))
                      ]),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 60,
                        width: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 5,
                              child: Container(
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50 / 2),
                                ),
                                child: Image.network(
                                  "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 20,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 60,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.favorite),
                            Text("18.1M"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 60,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.comment_sharp),
                            Text("108.9K"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 60,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.reply_all_outlined),
                            Text("Share"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 60,
                        width: 60,
                        child: Icon(Icons.favorite),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomButton(
                  icon: TikTokIcons.home,
                  size: 20,
                ),
                BottomButton(
                  icon: TikTokIcons.search,
                  size: 20,
                ),
                Container(
                  width: 45,
                  height: 27,
                  child: Stack(
                    children: [
                      Container(
                      width: 38,
                      margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 255, 45, 108),

                        ),

                      ), Container(
                        width: 38,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 32, 211, 234),

                        ),

                      ),
                      Center(
                        child: Container(
                          width: 38,
height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,

                          ),
                          child: Icon(Icons.add,size:20,color: Colors.black,),),
                      ),


                    ],
                  ),
                ),
                BottomButton(
                  icon: TikTokIcons.messages,
                  size: 20,
                ),
                BottomButton(
                  icon: TikTokIcons.profile,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final IconData icon;
  final double size;

  const BottomButton({Key? key, required this.icon, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Icon(
        icon,
        size: size,
      ),
    );
  }
}
