import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Translator extends StatefulWidget {
  @override
  _TranslatorState createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {
  var translator = GoogleTranslator();
  String languageName1 = "English";
  String languageName2 = "Afrikaans";
  List<String> frstLanguages = [
    'English',
    'Afrikaans',
    'Sesotho',
    'Xhosa',
    'Zulu',
  ];
  List<String> secLanguages = [
    'English',
    'Afrikaans',
    'Sesotho',
    'Xhosa',
    'Zulu',
  ];
  List<String> toLanguages = [
    'en',
    'af',
    'xh',
    'zul',
  ];
  String input;
  var translated;

  void translate() {
    if (languageName1 == 'English' && languageName2 == 'Afrikaans') {
      translator.translate(input, from: 'en', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'English' && languageName2 == 'Sesotho') {
      translator.translate(input, from: 'en', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'English' && languageName2 == 'Xhosa') {
      translator.translate(input, from: 'en', to: 'xh').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'English' && languageName2 == 'Zulu') {
      translator.translate(input, from: 'en', to: 'zul').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Afrikaans' && languageName2 == 'English') {
      translator.translate(input, from: 'af', to: 'en').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Afrikaans' && languageName2 == 'Sesotho') {
      translator.translate(input, from: 'af', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Afrikaans' && languageName2 == 'Xhosa') {
      translator.translate(input, from: 'af', to: 'xh').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Afrikaans' && languageName2 == 'Zulu') {
      translator.translate(input, from: 'af', to: 'zul').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Sesotho' && languageName2 == 'English') {
      translator.translate(input, from: 'en', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Sesotho' && languageName2 == 'Africaans') {
      translator.translate(input, from: 'en', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Sesotho' && languageName2 == 'Xhosa') {
      translator.translate(input, from: 'en', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Sesotho' && languageName2 == 'Zulu') {
      translator.translate(input, from: 'en', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Xhosa' && languageName2 == 'English') {
      translator.translate(input, from: 'xh', to: 'en').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Xhosa' && languageName2 == 'Africaans') {
      translator.translate(input, from: 'xh', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Xhosa' && languageName2 == 'Sesotho') {
      translator.translate(input, from: 'xh', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Xhosa' && languageName2 == 'Zulu') {
      translator.translate(input, from: 'xh', to: 'zul').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Zulu' && languageName2 == 'English') {
      translator.translate(input, from: 'zul', to: 'en').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Zulu' && languageName2 == 'Africaans') {
      translator.translate(input, from: 'zul', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Zulu' && languageName2 == 'Sesotho') {
      translator.translate(input, from: 'zul', to: 'af').then((value) {
        translated = value;
      });
    } else if (languageName1 == 'Zulu' && languageName2 == 'Xhosa') {
      translator.translate(input, from: 'zul', to: 'xh').then((value) {
        translated = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2C2C2C),
        title: Text("Translator"),
      ),
      body: ListView(
        children: <Widget>[
          DropDownField(
              value: languageName1,
              required: true,
              strict: true,
              labelText: 'Translate From',
              icon: Icon(Icons.language),
              items: frstLanguages,
              setter: (dynamic newValue) {
                languageName1 = newValue;
              }),
          DropDownField(
              value: languageName2,
              required: true,
              strict: true,
              labelText: 'Translate To',
              icon: Icon(Icons.language),
              items: secLanguages,
              setter: (dynamic newValue) {
                languageName2 = newValue;
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Write Something"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (val) {
                setState(() {
                  input = val;
                  translate();
                });
              },
              maxLines: 5,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintMaxLines: 5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Color(0xff2C2C2C),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "$translated",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: MaterialButton(
              onPressed: () {
                translate();
              },
              color: Colors.green,
              child: Text("Translate"),
            ),
          )
        ],
      ),
    );
  }
}
