import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
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
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: Colors.white70,
            image:
                DecorationImage(image: NetworkImage(path), fit: BoxFit.cover)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 40,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.menu,
                  size: 50,
                ),
              ),
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
                        color: Colors.grey.shade600),
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
                              color: Colors.grey.shade700, height: 1.3),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "#Spread-Love #Music",
                          style: TextStyle(
                              color: Colors.black87,
                              height: 1.3,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                    Column(
                      children: <Widget>[
                        Text("2.2 M",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade600)),
                        Text("Followers",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600)),
                        SizedBox(height: 20),
                        Text("2003",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade600)),
                        Text("Post",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade600)),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.black54,
                          textColor: Colors.white,
                          child: Text("Follow"),
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
