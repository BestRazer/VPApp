import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:share/share.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info/package_info.dart';
import 'package:flutter/services.dart';


import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;
import 'package:intl/intl.dart' show DateFormat;

//Vertretungsplan Montag

class VPMontag extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _VPMontagState createState() => _VPMontagState();
}

class _VPMontagState extends State<VPMontag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertretungsplan Montag'),
      ),
      body: FutureBuilder(
        future:
            PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/vpmo.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return mload();
          } else if (pdfData.data == null) {
            return mtext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class mload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class mtext extends StatelessWidget {
  final String stringValue;

  mtext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

//VP Dienstag

class VPDienstag extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _VPDienstagState createState() => _VPDienstagState();
}

class _VPDienstagState extends State<VPDienstag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertretungsplan Dienstag'),
      ),
      body: FutureBuilder(
        future:
            PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/vpdi.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return mload();
          } else if (pdfData.data == null) {
            return mtext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class diload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class ditext extends StatelessWidget {
  final String stringValue;

  ditext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}
//VP Mittwoch

class VPMittwoch extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _VPMittwochState createState() => _VPMittwochState();
}

class _VPMittwochState extends State<VPMittwoch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertretungsplan Mittwoch'),
      ),
      body: FutureBuilder(
        future:
            PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/vpmi.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return mload();
          } else if (pdfData.data == null) {
            return mtext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class miload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class mitext extends StatelessWidget {
  final String stringValue;

  mitext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

//VP Donnerstag

class VPDonnerstag extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _VPDonnerstagState createState() => _VPDonnerstagState();
}

class _VPDonnerstagState extends State<VPDonnerstag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertretungsplan Donnerstag'),
      ),
      body: FutureBuilder(
        future:
            PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/vpdo.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return mload();
          } else if (pdfData.data == null) {
            return mtext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class doload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class dotext extends StatelessWidget {
  final String stringValue;

  dotext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

//VP Freitag

class VPFreitag extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _VPFreitagState createState() => _VPFreitagState();
}

class _VPFreitagState extends State<VPFreitag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertretungsplan Freitag'),
      ),
      body: FutureBuilder(
        future:
            PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/vpfr.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return mload();
          } else if (pdfData.data == null) {
            return mtext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class frload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class frtext extends StatelessWidget {
  final String stringValue;

  frtext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

class Noten extends StatelessWidget {
  String url;
  Noten(this.url);

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Noten'),
        ),
        body: Builder(builder: (BuildContext context) {
          return WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              print('Page finished loading: $url');
            },
            gestureNavigationEnabled: true,
          );
        }));
  }
}

class Lehrer extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _LehrerState createState() => _LehrerState();
}

class _LehrerState extends State<Lehrer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lehrerkürzel'),
      ),
      body: FutureBuilder(
        future: PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/lk.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return lkload();
          } else if (pdfData.data == null) {
            return lktext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class lkload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class lktext extends StatelessWidget {
  final String stringValue;

  lktext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

class Fahrtenkonzept extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _FahrtenkonzeptState createState() => _FahrtenkonzeptState();
}

class _FahrtenkonzeptState extends State<Fahrtenkonzept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fahrtenkonzept'),
      ),
      body: FutureBuilder(
        future: PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/fk.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return fkload();
          } else if (pdfData.data == null) {
            return fktext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class fkload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class fktext extends StatelessWidget {
  final String stringValue;

  fktext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

class Hausordnung extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _HausordnungState createState() => _HausordnungState();
}

class _HausordnungState extends State<Hausordnung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hausordnung'),
      ),
      body: FutureBuilder(
        future: PDFDocument.fromURL('http://arthursapps.bplaced.net/vp/ho.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return hoload();
          } else if (pdfData.data == null) {
            return hotext(
                'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class hoload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class hotext extends StatelessWidget {
  final String stringValue;

  hotext(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

class PDFReader extends StatefulWidget {
  static const route_name = 'pdf_reader';

  @override
  _PDFReaderState createState() => _PDFReaderState();
}

class _PDFReaderState extends State<PDFReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offline Stundenplan'),
      ),
      body: FutureBuilder(
        future: PDFDocument.fromAsset('assets/stundenplan.pdf'),
        builder: (_, pdfData) {
          if (pdfData.connectionState == ConnectionState.waiting) {
            return mload();
          } else if (pdfData.data == null) {
            return mtext('Not able to open PDF file');
          } else {
            return PDFViewer(document: pdfData.data);
          }
        },
      ),
    );
  }
}

class CenterCircularProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class CenterText extends StatelessWidget {
  final String stringValue;

  CenterText(this.stringValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stringValue,
      ),
    );
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Einstellungen'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Tile1'),
              onTap: () {
                Navigator.pop(context);
                null;
              },
            )
          ],
        ));
  }
}

class ThemeBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, Brightness brightness) builder;

  ThemeBuilder({this.builder});
  @override
  _ThemeBuilderState createState() => _ThemeBuilderState();

  static _ThemeBuilderState of(BuildContext context) {
    return context.findAncestorStateOfType();
  }
}

class _ThemeBuilderState extends State<ThemeBuilder> {
  Brightness _brightness;
  @override
  void initState() {
    super.initState();
    _brightness = Brightness.light;

  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }

  void changeTheme() {
    setState(() {
      _brightness =
          _brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, _brightness) {
        return MaterialApp(
          title: 'VP App',
          themeMode: ThemeMode.system,
          darkTheme: ThemeData(brightness: Brightness.dark, accentColor: Colors.blueAccent, primarySwatch: Colors.blue,),
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: _brightness,
          ),
          home: MyHomePage(title: 'VP App'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  vpmontag() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VPMontag()));
  }

  vpdienstag() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VPDienstag()));
  }

  vpmittwoch() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VPMittwoch()));
  }

  vpdonnerstag() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VPDonnerstag()));
  }

  vpfreitag() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VPFreitag()));
  }

  noten() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Noten('https://www.schulsoftware.schule/')));
  }

  lehrer() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Lehrer()));
  }

  hausordnung() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Hausordnung()));
  }

  fahrtenkonzept() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Fahrtenkonzept()));
  }

  var day = DateFormat('EEEE').format(DateTime.now());
  var nextday = DateFormat('EEEE').format(DateTime.now());
  DateButton() {
    if(day == "Monday"){
      vpdienstag();
      }
    if(day == "Tuesday"){
      vpmittwoch();
    }
    if(day == "Wednesday"){
      vpdonnerstag();
    }
    if(day == "Thursday"){
      vpfreitag();
    }
    if(day == "Friday"){
      vpmontag();
    }
    }

  static downloadFile(String url) async {
    var request = await HttpClient()
        .getUrl(Uri.parse('http://arthursapps.bplaced.net/apk/vpapp.apk'));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String fileName = ('appversion.txt');
    File file = File("${appDocDir.path}/$fileName");
    File urlFile = await file.writeAsBytes(bytes);
    return urlFile;
  }

  checkAppversion() {
    if (downloadFile != 0.1) {
      return AlertDialog(
        title: Text('Bitte Update herunterladen'),
        actions: <Widget>[
          TextButton(onPressed: () => Navigator.pop, child: Text('Abbrechen')),
          TextButton(
              onPressed: _launchURL, child: Text('Update herunterladen')),
        ],
      );
    }
  }

  _launchURL() async {
    const url = 'http://arthursapps.bplaced.net/apk/vpapp.apk';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ostundenplan() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PDFReader()));
  }

  settings() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Settings()));
  }

  darkmode() {
    ThemeBuilder.of(context).changeTheme();
  }


  void share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    final String text =
        "VP App - Vertretungsplan ohne Login und Download hier herunterladen: http://arthursapps.bplaced.net/html/vpapp.html";

    Share.share(text,
        subject: 'VP App - Vertretungsplan ohne Login und Download');
  }

  void handleClick(String value) {
    switch (value) {
      case 'App mit Freunden teilen':
        return share(context);
      case 'Dark Mode An/Ausschalten':
        return darkmode();
    }
  }

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [];

  @override
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  void initState() {
    try {
      versionCheck(context);
    } catch (e) {
      print(e);
    }
    super.initState();
    _widgetOptions = <Widget>[
      Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DigitalClock(
              digitAnimationStyle: Curves.elasticOut,
              is24HourTimeFormat: true,
              areaDecoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.transparent),
              ),
              hourMinuteDigitTextStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 100,
              ),
              amPmDigitTextStyle: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
            RaisedButton(onPressed: DateButton, child: Text("Vertretungsplan von morgen")),
            Image.asset(
              'images/uzwt.png',
            ),
          ],
        )),
      ),
      Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: vpmontag,
                child: Text('Montag'),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              ),
              RaisedButton(
                onPressed: vpdienstag,
                child: Text('Dienstag'),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 55.0),
              ),
              RaisedButton(
                onPressed: vpmittwoch,
                child: Text('Mittwoch'),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 54.0),
              ),
              RaisedButton(
                onPressed: vpdonnerstag,
                child: Text('Donnerstag'),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 46.0),
              ),
              RaisedButton(
                onPressed: vpfreitag,
                child: Text('Freitag'),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              ),
            ],
          ),
        ),
      ),
      Column(
        children: <Widget>[
          RaisedButton.icon(
            onPressed: ostundenplan,
            icon: Icon(Icons.signal_wifi_off),
            label: Text('Offline Stundenplan'),
          ),
          Container(
            height: 630,
            child: FutureBuilder(
              future: PDFDocument.fromURL(
                  'http://arthursapps.bplaced.net/vp/stundenplan.pdf'),
              builder: (_, pdfData) {
                if (pdfData.connectionState == ConnectionState.waiting) {
                  return mload();
                } else if (pdfData.data == null) {
                  return mtext(
                      'Daten konnten nicht empfangen werden - Hast du eine Internetverbindung?');
                } else {
                  return PDFViewer(document: pdfData.data);
                }
              },
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton.icon(
              onPressed: lehrer,
              icon: Icon(Icons.account_circle),
              label: Text('Lehrerkürzel'),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0)),
          RaisedButton.icon(
              onPressed: noten,
              icon: Icon(Icons.border_color),
              label: Text('Noten'),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 70.0)),
          RaisedButton.icon(
              onPressed: hausordnung,
              icon: Icon(Icons.article_outlined),
              label: Text('Hausordnung'),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 49.0)),
          RaisedButton.icon(
              onPressed: fahrtenkonzept,
              icon: Icon(Icons.airport_shuttle),
              label: Text('Fahrtenkonzept'),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 42.0)),
          RaisedButton.icon(
              onPressed: _launchURL,
              color: Colors.green,
              icon: Icon(Icons.download_sharp),
              label: Text('Update herunterladen'),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0)),
          Text("Version 0.1.6")
        ],
      ),
    ];
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const APP_STORE_URL =
      'https://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftwareUpdate?id=YOUR-APP-ID&mt=8';
  static const PLAY_STORE_URL =
      'http://arthursapps.bplaced.net/apk/vpapp.apk';

  versionCheck(context) async {
    //Get Current installed version of app
    final PackageInfo info = await PackageInfo.fromPlatform();
    double currentVersion = double.parse(info.version.trim().replaceAll(".", ""));

    //Get Latest version info from firebase config
    final RemoteConfig remoteConfig = await RemoteConfig.instance;

    try {
      // Using default duration to force fetching from remote server.
      await remoteConfig.fetch();
      await remoteConfig.setConfigSettings(
          RemoteConfigSettings(
            fetchTimeout: Duration(minutes: 1),
            minimumFetchInterval: Duration(seconds: 0),
          )
      );
      await remoteConfig.fetchAndActivate();
      remoteConfig.getString('force_update_current_version');
      double newVersion = double.parse(remoteConfig
          .getString('force_update_current_version')
          .trim()
          .replaceAll(".", ""));
      if (newVersion > currentVersion) {
        _showVersionDialog(context);
      }
    } catch (FirebaseException) {
      print('Unable to fetch remote config. Cached or default values will be '
          'used');
    }
  }

  _launchURLversion(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }




  _showVersionDialog(context) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "Neues Update Verfügbar!";
        String message =
            "Es ist eine neue Version der VP App verfügbar!";
        String btnLabel = "Später";
        String btnLabelCancel = "Jetzt herunterladen";
        return Platform.isIOS
            ? new CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text(btnLabel),
              onPressed: () => _launchURLversion(APP_STORE_URL),
            ),
            FlatButton(
              child: Text(btnLabelCancel),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        )
            : new AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text(btnLabel),
              onPressed: () => Navigator.pop(context),

            ),
            FlatButton(
              child: Text(btnLabelCancel),
              onPressed: () => _launchURLversion(PLAY_STORE_URL),

            ),
          ],
        );
      },
    );
  }

  var file = DefaultCacheManager().emptyCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VP App'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'App mit Freunden teilen'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(' '),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/splash.png'),
                  fit: BoxFit.contain,
                ),

              ),
            ),
            ListTile(
              title: Text('Lehrerkürzel'),
              onTap: () {
                Navigator.pop(context);
                lehrer();
              },
            ),
            ListTile(
              title: Text('Hausordnung'),
              onTap: () {
                Navigator.pop(context);
                hausordnung();
              },
            ),
            ListTile(
              title: Text('Fahrtenkonzept'),
              onTap: () {
                Navigator.pop(context);
                fahrtenkonzept();
              },
            ),
            ListTile(
              title: Text('Noten'),
              onTap: () {
                Navigator.pop(context);
                noten();
              },
            ),
            RaisedButton.icon(
                onPressed: _launchURL,
                color: Colors.green,
                icon: Icon(Icons.download_sharp),
                label: Text('Update herunterladen'),
                padding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0)),
            Text("Version 0.1.6")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Startseite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_headline),
            title: Text('Vertretungspläne'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Stundenplan'),
          ),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
