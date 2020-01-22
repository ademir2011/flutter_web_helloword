import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      title: "React Native",
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Size tela;

  @override
  Widget build(BuildContext context) {
    tela = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildTopBar(),
              // buildSecondaryTopBar(),
              // buildHeader(),
              // buildSection1(),
              // buildSection2(),
              // buildSection3(),
              // buildSection4(),
              // buildSection5(),
              // buildSection6(),
              // buildSection7(),
              // buildFooterFirst(),
              // buildFooterLast(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      color: Color.fromRGBO(32, 35, 42, 1),
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 7.0),
                  child: Icon(
                    FontAwesomeIcons.react,
                    color: Color(0xFF61DBFB),
                    size: 30.0,
                  ),
                ),
                Text(
                  'React Native',
                  style: TextStyle(
                    color: Color(0xFF61DBFB),
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              "0.61",
              style: TextStyle(
                color: Color(0xFFE5E5E5),
              ),
            ),
            onPressed: () {},
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                fb('Docs'),
                fb('API'),
                fb('Community'),
                fb('Blog'),
                tf(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // borderRadius: BorderRadius.all(
  //   Radius.circular(5.0),
  // ),

  Widget fb(String title) {
    return FlatButton(
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
        ),
      ),
      onPressed: () {},
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }

  Widget tf() {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 200.0,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(
            FontAwesomeIcons.search,
            size: 17.0,
            color: Color(0xFFE5E5E5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          filled: true,
          fillColor: Color(0xFF282c34),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Color(0xFFE5E5E5),
          ),
        ),
        style: TextStyle(
          color: Color(0xFFE5E5E5),
        ),
      ),
    );
  }
}
