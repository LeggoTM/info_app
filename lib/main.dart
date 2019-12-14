import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xfff12711),
                Color(0xfff5af19),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/dp.jpeg'),
                ),
              ),
              Text(
                'Tanmay Mohapatra',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.white,
                  fontSize: 40.0,
                  letterSpacing: 3.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Flutter & UI/UX Developer',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 170.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.instagram,color: Colors.white,),
                    onPressed: _launchURLinsta,
                    iconSize:60.0,
                  ),

                  IconButton(
                    icon: Icon(FontAwesomeIcons.linkedin,color: Colors.white,),
                    onPressed: _launchURLlin,
                    iconSize:60.0,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.globe,color: Colors.white,),
                    onPressed: _launchURLweb,
                    iconSize:60.0,
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebookSquare,color: Colors.white,),
                    onPressed: _launchURLfb,
                    iconSize:60.0,
                  ),
                ],
              ),
              InkWell(
                onTap: _callmycell,
                child: Card(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.deepOrange,
                    ),
                    title: Text('+91 9853270404',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.deepOrange,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: _mailme,
                child: Card(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepOrange,
                    ),
                    title: Text('m.tanmay17@gmail.com',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.deepOrange,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





_launchURLinsta() async {
  const url = 'https://www.instagram.com/leggotm/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLlin() async {
  const url = 'https://www.linkedin.com/in/tanmaymohapatra17/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLweb() async {
  const url = 'https://iamtanmay.me/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLfb() async {
  const url = 'https://www.facebook.com/tanmaymohapatra.17';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_callmycell() async {
  String number = '+919853270404';
  if (await canLaunch("tel:$number")) {
    await launch("tel:$number");
  } else {
    throw 'Could not launch $number';
  }
}

_mailme() async {
  String mail = 'm.tanmay17@gmail.com';
  if (await canLaunch("mailto:$mail")) {
    await launch("mailto:$mail");
  } else {
    throw 'Could not launch $mail';
  }
}

