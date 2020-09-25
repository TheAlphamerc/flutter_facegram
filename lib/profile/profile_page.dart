import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  final List<String> imageList = [
    "https://assets.vogue.com/photos/59a057346bc89b160b6f8ddf/1:1/w_2540,h_2540,c_limit/square-selena-gomez-celebrity-style-1.jpg",
    "https://pyxis.nymag.com/v1/imgs/481/076/7a64958609de2655614cda48240d2aed56-23-selena-gomez.rsquare.w1200.jpg",
    "https://cdn.cliqueinc.com/posts/281075/selena-gomez-affordable-swimsuit-281075-1562185624865-square.700x0c.jpg",
    "https://cdn.cliqueinc.com/posts/279514/selena-gomez-swimsuit-trends-279514-1556222190787-square.700x0c.jpg",
    "https://www.wmagazine.com/wp-content/uploads/2018/09/13/5b9a888cf4081b4d8029b373_GettyImages-1027411906.jpg?fit=3069%2C2455",
    "https://media.glamour.com/photos/5e19f2518782f70008612686/1:1/w_1665,h_1665,c_limit/selena-gomez.jpg",
    "https://www4.pictures.stylebistro.com/bg/Selena+Gomez+Long+Hairstyles+Long+Wavy+Cut+Q8IHsb8Qvugl.jpg",
    "https://pyxis.nymag.com/v1/imgs/a3a/cd2/0c1774f43b965c395c90fcac4cfa7a14ce-selena-gomez.rsquare.w1200.jpg"
  ];
  Widget _profileCard(context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: Key(
                  "https://www4.pictures.stylebistro.com/bg/Selena+Gomez+Long+Hairstyles+Long+Wavy+Cut+Q8IHsb8Qvugl.jpg"),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 15,
                          color: Theme.of(context)
                              .textTheme
                              .headline1
                              .color
                              .withOpacity(.5),
                          offset: Offset(2, 3),
                          spreadRadius: 1)
                    ]),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      // "https://i.ytimg.com/vi/zlJDTxahav0/maxresdefault.jpg"),
                      "https://www4.pictures.stylebistro.com/bg/Selena+Gomez+Long+Hairstyles+Long+Wavy+Cut+Q8IHsb8Qvugl.jpg"),
                ),
              ),
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
                        color: theme.textTheme.headline1.color),
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
                  color: theme.textTheme.bodyText1.color,
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
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey)),
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
          style: TextStyle(color: theme.textTheme.bodyText1.color, height: 1.3),
        ),
      ],
    );
  }

  Widget _postButton(context) {
    return OutlineButton(
      onPressed: () {},
      borderSide: BorderSide(
        color: Theme.of(context).textTheme.headline1.color.withOpacity(.5),
      ),
      textColor: Theme.of(context).textTheme.headline1.color.withOpacity(.5),
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
          color: Theme.of(context).backgroundColor,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                image: NetworkImage(imageList[index % 8]),
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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
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
