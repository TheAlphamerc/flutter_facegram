import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  final List<String> imageList = [
    "https://assets.vogue.com/photos/59a057346bc89b160b6f8ddf/1:1/w_2540,h_2540,c_limit/square-selena-gomez-celebrity-style-1.jpg",
    "https://cdn.cliqueinc.com/posts/281075/selena-gomez-affordable-swimsuit-281075-1562185624865-square.700x0c.jpg",
    "https://cdn.cliqueinc.com/posts/279514/selena-gomez-swimsuit-trends-279514-1556222190787-square.700x0c.jpg",
    "https://www.wmagazine.com/wp-content/uploads/2018/09/13/5b9a888cf4081b4d8029b373_GettyImages-1027411906.jpg?fit=3069%2C2455",
    "https://pyxis.nymag.com/v1/imgs/481/076/7a64958609de2655614cda48240d2aed56-23-selena-gomez.rsquare.w1200.jpg",
    "https://pyxis.nymag.com/v1/imgs/a3a/cd2/0c1774f43b965c395c90fcac4cfa7a14ce-selena-gomez.rsquare.w1200.jpg"
  ];
  Widget _profileCard(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://i.ytimg.com/vi/zlJDTxahav0/maxresdefault.jpg"),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Selena Gomez",
                    style: GoogleFonts.charm(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey.shade800),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text("2.2 M", style: TextStyle(fontSize: 18)),
                              Text("Followers", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Column(
                          children: <Widget>[
                            Text("2003", style: TextStyle(fontSize: 18)),
                            Text("Post", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "#Spread-Love #Music",
              style: TextStyle(
                  color: Colors.black87,
                  height: 1.3,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: SizedBox(
                height: 30,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  onPressed: () {},
                  color: Colors.black54,
                  textColor: Colors.white,
                  child: Text("Follow"),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Text(
          "Singer,actor, musician Music can change the world\nLet Music embrace you",
          style: TextStyle(color: Colors.grey.shade700, height: 1.3),
        ),
      ],
    );
  }

  Widget _postButton(context) {
    return OutlineButton(
      onPressed: null,
      borderSide: BorderSide(),
      child: Center(
        child: Text("POSTS", style: TextStyle(fontSize: 18)),
      ),
    );
  }

  Widget _photoGrid(context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.1),
      itemCount: 12,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                image: NetworkImage(
                    imageList[index%4]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              _profileCard(context),
              SizedBox(height: 20),
              _postButton(context),
              Expanded(
                child: _photoGrid(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
