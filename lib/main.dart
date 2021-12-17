// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations, avoid_print, unused_element, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_clone/LanguageChangeProvider.dart';
import 'package:google_clone/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Google');
    setWindowMinSize(const Size(515, 560));
    setWindowMaxSize(Size.infinite);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      child: Builder(
        builder: (context) => MaterialApp(
          locale: Provider.of<LanguageChangeProvider>(context, listen: true)
              .currentLocale,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: AnaSayfa(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

bool textunderline = false;
bool _underline = false;
bool _turkce = true;

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    Widget responsive() {
      if (screenwidth > 650 && screenwidth <= 1200) {
        return Orta();
      } else if (screenwidth <= 650) {
        return Kucuk();
      } else {
        return Normal();
      }
    }

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(32, 33, 36, 1),
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0, right: 15, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onHover: (value) {
                        print(value);
                        setState(() {
                          textunderline = value ? true : false;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        "Gmail",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontFamily: "arial",
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onHover: (value) {
                        print(value);
                        setState(() {
                          textunderline = value ? true : false;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        S.of(context).gorse,
                        //"Görseller",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontFamily: "arial",
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.apps,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.circle,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              color: Colors.transparent,
              width: 575,
              //height: 500,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/googlelogo.png",
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(17),
                      prefixIcon: Container(
                        color: Colors.transparent,
                        width: 0,
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      suffixIcon: Container(
                        color: Colors.transparent,
                        width: 85,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.keyboard,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/googlevoice.png",
                                fit: BoxFit.contain,
                                width: 20,
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hoverColor: Colors.grey[850],
                      fillColor: Colors.transparent,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(48, 49, 52, 1),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: 10,
                              left: 15,
                              right: 15,
                              top: 8,
                            ),
                            child: Center(
                              child: Text(
                                S.of(context).gog,
                                //"Google'da Ara",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(48, 49, 52, 1),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: 10,
                              left: 15,
                              right: 15,
                              top: 8,
                            ),
                            child: Center(
                              child: Text(
                                S.of(context).ken,
                                //"Kendimi Şanslı Hissediyorum",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  //bura
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).kul,
                        //"Google'ı kullanabileceğiniz diğer diller:",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "arial",
                          color: Color.fromRGBO(189, 193, 198, 1),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _turkce = !_turkce;
                            print(_turkce);
                          });
                          if (_turkce == false) {
                            context
                                .read<LanguageChangeProvider>()
                                .changeLocale("en");
                            print("en");
                          } else {
                            context
                                .read<LanguageChangeProvider>()
                                .changeLocale("tr");
                            print("tr");
                          }
                        },
                        child: Text(
                          S.of(context).turk,
                          //"English",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Builder(
              builder: (BuildContext context) => responsive(),
            ),
          ],
        ),
      ),
    );
  }
}

class Normal extends StatefulWidget {
  @override
  NormalState createState() => NormalState();
}

class NormalState extends State<Normal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(23, 23, 23, 1),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
              left: 33,
              right: 25,
              top: 15,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).tur,
                    //"Türkiye",
                    style: TextStyle(
                      color: Color.fromRGBO(189, 193, 189, 0.80),
                      fontSize: 15,
                      fontFamily: "arial",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey[850],
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 15,
              left: 33,
              right: 25,
              top: 5,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).hak,
                      //"Hakkında",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).rek,
                      //"Reklam",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).iss,
                      //"İşletme",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).ara,
                      //"Arama nasıl çalışır?",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/karbon.png",
                          fit: BoxFit.contain,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          S.of(context).kar,
                          //"2007'den bugüne karbon nötr",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 180),
                  Spacer(),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).giz,
                      //"Gizlilik",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  SizedBox(width: 35),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).sar,
                      //"Şartlar",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  SizedBox(width: 35),
                  InkWell(
                    onHover: (value) {
                      print(value);
                      setState(() {
                        textunderline = value ? true : false;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      S.of(context).aya,
                      //"Ayarlar",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 193, 189, 0.80),
                        fontSize: 14,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Orta extends StatefulWidget {
  @override
  _OrtaState createState() => _OrtaState();
}

class _OrtaState extends State<Orta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(23, 23, 23, 1),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 5,
              left: 33,
              right: 25,
              top: 15,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).tur,
                    //"Türkiye",
                    style: TextStyle(
                      color: Color.fromRGBO(189, 193, 189, 0.80),
                      fontSize: 15,
                      fontFamily: "arial",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey[850],
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 15,
              left: 33,
              right: 25,
              top: 5,
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/karbon.png",
                              fit: BoxFit.contain,
                              width: 15,
                              height: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              S.of(context).kar,
                              //"2007'den bugüne karbon nötr",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).hak,
                          //"Hakkında",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).rek,
                          //"Reklam",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).iss,
                          //"İşletme",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).ara,
                          //"Arama nasıl çalışır?",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                      Spacer(),
                      Spacer(),
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).giz,
                          //"Gizlilik",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                      SizedBox(width: 35),
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).sar,
                          //"Şartlar",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                      SizedBox(width: 35),
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          S.of(context).aya,
                          //"Ayarlar",
                          style: TextStyle(
                            color: Color.fromRGBO(189, 193, 189, 0.80),
                            fontSize: 14,
                            fontFamily: "arial",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Kucuk extends StatefulWidget {
  @override
  _KucukState createState() => _KucukState();
}

class _KucukState extends State<Kucuk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(23, 23, 23, 1),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 5,
              left: 33,
              right: 25,
              top: 15,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).tur,
                    //"Türkiye",
                    style: TextStyle(
                      color: Color.fromRGBO(189, 193, 189, 0.80),
                      fontSize: 15,
                      fontFamily: "arial",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey[850],
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 15,
              left: 33,
              right: 25,
              top: 5,
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: (value) {
                          print(value);
                          setState(() {
                            textunderline = value ? true : false;
                          });
                        },
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/karbon.png",
                              fit: BoxFit.contain,
                              width: 15,
                              height: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              S.of(context).kar,
                              //"2007'den bugüne karbon nötr",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).hak,
                              //"Hakkında",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).rek,
                              //"Reklam",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).iss,
                              //"İşletme",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).ara,
                              //"Arama nasıl çalışır?",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).giz,
                              //"Gizlilik",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          SizedBox(width: 35),
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).sar,
                              //"Şartlar",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          SizedBox(width: 35),
                          InkWell(
                            onHover: (value) {
                              print(value);
                              setState(() {
                                textunderline = value ? true : false;
                              });
                            },
                            onTap: () {},
                            child: Text(
                              S.of(context).aya,
                              //"Ayarlar",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 193, 189, 0.80),
                                fontSize: 14,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
