import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkThemeEnabled;
  @override
  void initState() {
    super.initState();
    darkThemeEnabled = false;
  }

  Widget _carousel(context) {
    return CarouselSlider(
      items: [
        _card(context,
            path:
                "https://media.glamour.com/photos/5e19f2518782f70008612686/1:1/w_1665,h_1665,c_limit/selena-gomez.jpg"),
        _card(context,
            path:
                "https://www4.pictures.stylebistro.com/bg/Selena+Gomez+Long+Hairstyles+Long+Wavy+Cut+Q8IHsb8Qvugl.jpg"),
        _card(context,
            path:
                "https://i.dailymail.co.uk/1s/2020/04/03/17/26779268-0-image-a-56_1585929657304.jpg"),
      ],
      options: CarouselOptions(
          aspectRatio: .95, enlargeCenterPage: true, viewportFraction: .8),
    );
  }

  Widget _card(context, {String path}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        color: Theme.of(context).backgroundColor,
        shadowColor:
            Theme.of(context).textTheme.headline1.color.withOpacity(.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Hero(
          tag: Key(path),
          child: Container(
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white70,
                image: DecorationImage(
                    image: NetworkImage(path), fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width - 40,
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      darkThemeEnabled = !darkThemeEnabled;
                      bloc.changeTheme(darkThemeEnabled);
                    },
                    icon: Icon(
                      Icons.menu,
                      size: 50,
                    ),
                  )),
              SizedBox(height: 20),
              _carousel(context),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Text(
                    "Selena Gomez",
                    style: GoogleFonts.charm(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: theme.textTheme.headline1.color),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Singer,actor, musician\nMusic can change the world\nLet Music embrace you",
                          style: TextStyle(
                              color: theme.textTheme.bodyText1.color,
                              height: 1.3),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "#Spread-Love #Music",
                          style: TextStyle(
                              color: theme.textTheme.bodyText1.color,
                              height: 1.3,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                    Column(
                      children: <Widget>[
                        Text("2.2 M",
                            style: TextStyle(
                                fontSize: 18,
                                color: theme.textTheme.headline1.color)),
                        Text("Followers",
                            style: TextStyle(
                                fontSize: 16,
                                color: theme.textTheme.headline1.color)),
                        SizedBox(height: 20),
                        Text("2003",
                            style: TextStyle(
                                fontSize: 18,
                                color: theme.textTheme.headline1.color)),
                        Text("Post",
                            style: TextStyle(
                                fontSize: 16,
                                color: theme.textTheme.headline1.color)),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.black45,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey)
                            ),
                            textColor: Colors.white,
                            child: Text("Follow"),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 55,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
