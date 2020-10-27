import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void main() {
  runApp(MaterialApp(
    title: 'mySPRK',
    theme: ThemeData(
      primaryColor: Colors.blue[900],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  openPage({String url = "https://one.walmart.com/"}) async {
    await FlutterWebBrowser.openWebPage(url: url);
  }

  Widget button({String text, Function onTap}) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8.0),
        margin: EdgeInsets.symmetric(vertical: 8.0),
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Text(text, style: TextStyle(color: Colors.amber, fontSize: 18.0, fontWeight: FontWeight.bold),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mySPRK")
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(
                text: "Schedule",
                onTap: () => openPage(url: "https://one.walmart.com/content/usone/en_us/me/my-schedule.html")
              ),
              button(
                text: "Report an Absence",
                onTap: () => openPage(url: "https://one.walmart.com/services/attendance/AssociateInformationLineWeb"),
              ),
              button(
                text: "Paystub",
                onTap: () => openPage(url: "https://one.walmart.com/services/onlinepaystub/OnlinePaystub/jsp/psDisplayDetails.jsp?p=y"),
              ),
              button(
                text: "PTO",
                onTap: () => openPage(url: "http://one.walmart.com/content/uswire/en_us/me/link-page/gta-portal.html"),
              ),
              button(
                text: "Feedback",
                onTap: () => openPage(url: "https://www.youtube.com/watch?v=oHg5SJYRHA0"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}