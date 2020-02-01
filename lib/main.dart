import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/line_scale_pulse_out_indicator.dart';
import 'package:loading/loading.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Oxygen'),
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  String _phoneNumber = "",
      _email = "",
      _devFolio = "",
      _github = "",
      _linkedIn = "",
      _stackOverflow = "",
      _resume = "",
      _website = "",
      _address = "";
  final globalKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
    fetchValues();
  }

  Future<String> fetchValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _devFolio = prefs.getString('_devFolio');
      _github = prefs.getString('_github');
      _linkedIn = prefs.getString('_linkedIn');
      _stackOverflow = prefs.getString('_stackOverflow');
      _email = prefs.getString('_email');
      _phoneNumber = prefs.getString('_phoneNumber');
      _resume = prefs.getString('_resume');
      _website = prefs.getString('_website');
      _address = prefs.getString('_address');
    });
  }

  void addStringToSP(String _df, String _gh, String _ll, String _so, String _e,
      String _p, String _r, String _w, String _a) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('_devFolio', _df);
    prefs.setString('_github', _gh);
    prefs.setString('_linkedIn', _ll);
    prefs.setString('_stackOverflow', _so);
    prefs.setString('_email', _e);
    prefs.setString('_phoneNumber', _p);
    prefs.setString('_resume', _r);
    prefs.setString('_website', _w);
    prefs.setString('_address', _a);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 220.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.blue[900],
                    Colors.blue[800],
                    Colors.blue[400]
                  ],
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 80.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cu-urls',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Keep all of your profile links handy ! ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        Container(
          child: SliverFixedExtentList(
              itemExtent: 950,
              delegate: SliverChildListDelegate([
                Form(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller:
                                  TextEditingController(text: _devFolio),
                              decoration: InputDecoration(
                                  hintText: 'Dev Folio',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontSize: 23.0, color: Colors.grey)),
                              onChanged: (val) {
//                                setState(() {
//
//                                });
                                _devFolio = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller: TextEditingController(text: _github),
                              decoration: InputDecoration(
                                  hintText: 'Github',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _github = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller:
                                  TextEditingController(text: _linkedIn),
                              decoration: InputDecoration(
                                  hintText: 'LinkedIn',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _linkedIn = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller:
                                  TextEditingController(text: _stackOverflow),
                              decoration: InputDecoration(
                                  hintText: 'Stack Overflow',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _stackOverflow = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller: TextEditingController(text: _email),
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 23.0)),
                              onChanged: (val) {
                                _email = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller:
                                  TextEditingController(text: _phoneNumber),
                              decoration: InputDecoration(
                                  hintText: 'Phone',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _phoneNumber = val.toString();
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller: TextEditingController(text: _resume),
                              decoration: InputDecoration(
                                  hintText: 'Resume Link',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _resume = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller: TextEditingController(text: _website),
                              decoration: InputDecoration(
                                  hintText: 'Website',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _website = val;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[100],
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller: TextEditingController(text: _website),
                              decoration: InputDecoration(
                                  hintText: 'Address',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 23.0,
                                  )),
                              onChanged: (val) {
                                _address = val;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ])),
        ),
      ]),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: FlatButton.icon(
          label: Text(
            'Update',
            style: TextStyle(color: Colors.white, fontSize: 17.0),
          ),
          onPressed: () async {
            var snackBar;
            SharedPreferences prefs = await SharedPreferences.getInstance();
            setState(() {
              addStringToSP(_devFolio, _github, _linkedIn, _stackOverflow,
                  _email, _phoneNumber, _resume, _website, _address);

              if (prefs.get('_devFolio') == _devFolio &&
                  prefs.get('_github') == _github &&
                  prefs.get('_linkedIn') == _linkedIn &&
                  prefs.get('_stackOverflow') == _stackOverflow &&
                  prefs.get('_email') == _email &&
                  prefs.get('_phoneNumber') == _phoneNumber &&
                  prefs.get('_resume') == _resume &&
                  prefs.get('_address') == _address &&
                  prefs.get('_website') == _website) {
                snackBar = SnackBar(
                    backgroundColor: Colors.grey[900],
                    content: Text(
                      'You did not update any new data',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ));
              } else {
                snackBar = SnackBar(
                    backgroundColor: Colors.grey[900],
                    content: Text(
                      'Awesome urls updated !',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ));
              }
              globalKey.currentState.showSnackBar(snackBar);
            });
          },
          icon: Icon(
            Icons.sync,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('assets/images/splash.png'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Welcome to ',
            style: TextStyle(fontSize: 36.0, color: Colors.grey[900]),
          ),
          Text(
            'Cu-urls',
            style: TextStyle(fontSize: 40.0, color: Colors.blue[900]),
          ),
          Text(
            'All your digital links at one place !',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Loading(
              indicator: LineScalePulseOutIndicator(),
              size: 60.0,
              color: Colors.blue[900]),
        ],
      ),
    );
  }
}
