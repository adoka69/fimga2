import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  final List<String> temp = <String>[
    '29°C',
    '26°C',
    '24°C',
    '23°C',
    '22°C',
  ];
  final List<String> temp2 = <String>[
    '21°',
    '22°',
    '34°',
    '27°',
    '32°',
  ];
  final List<String> date = <String>[
    'Апр, 27',
    'Апр, 28',
    'Апр, 29',
    'Апр, 30',
    'Май, 1 ',
  ];
  final List<String> time = <String>[
    '15.00',
    '16.00',
    '17.00',
    '18.00',
    '19.00',
  ];
  static const _iconTypes = <IconData>[
    FontAwesomeIcons.cloud,
    FontAwesomeIcons.cloudSunRain,
    FontAwesomeIcons.cloudSun,
    FontAwesomeIcons.cloudShowersHeavy,
    FontAwesomeIcons.cloudMoon,
  ];
  static const _iconTypes2 = <IconData>[
    FontAwesomeIcons.cloud,
    FontAwesomeIcons.cloudSunRain,
    Icons.wb_sunny_outlined,
    FontAwesomeIcons.cloudShowersHeavy,
    FontAwesomeIcons.cloudMoon,
  ];
  static const List colors = [Colors.white, Colors.white,Colors.orange, Colors.white,Colors.white];
  static const List color2 = [Color.fromRGBO(117, 216, 255, 1), Color.fromRGBO(117, 216, 255, 1),Color.fromRGBO(173, 237, 255, 1), Color.fromRGBO(117, 216, 255, 1),Color.fromRGBO(117, 216, 255, 1)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(117, 216, 255, 1),
      body: Column(
          children: [Container(
      padding: const EdgeInsets.fromLTRB(34, 61, 0, 0),
      child: Row(
        children: [
        Container(
        child: const Icon(
        FontAwesomeIcons.angleLeft, color: Colors.white,
        ),
        ),
        Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: const Text("Назад",style:
        TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
        ),
        ),
        Container(
        padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
        child: const Icon(
        FontAwesomeIcons.cog, color: Colors.white,
        ),
        ),
      ],
      ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(37, 40, 0, 0),
        child: Row(
        children:[
      Container(
        child: const Text("Сегодня",style:
        TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
        child: const Text("Апр, 26",style:
        TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
        ),
      ),],
      ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: SingleChildScrollView(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
            height: 150,
            width: 58,
            margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color2[index],
                borderRadius: BorderRadius.all(Radius.circular(15)),),
            child: Column(

              children: [
                Container(
                padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                child: Text("${temp[index]}", style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                ),),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 8, 0),
                  child:  Icon(_iconTypes[index], color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text("${time[index]}", style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                  ),),
            ]),

        ),
        ),
        ),
      ],),
        ),
      ),
          Container(
          padding: const EdgeInsets.fromLTRB(37, 40, 0, 0),
          child: Row(
          children:[
          Container(
          child: const Text("На этой неделе",style:
          TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
          ),
          ),
          Container(
          padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
            child: const Icon(
              FontAwesomeIcons.calendarDay, color: Colors.white,
            ),
          ),],
          ),),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => Container(
                          height: 35,
                          width: 200,
                          margin: EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(117, 216, 255, 1),borderRadius: BorderRadius.all(Radius.circular(15)),),
                          child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Text("${date[index]}", style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                                  ),),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(88, 0, 0, 0),
                                  child:  Icon(_iconTypes2[index], color: colors[index],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                                  child: Text("${temp2[index]}", style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                                  ),),
                              ]),

                        ),
                      ),
                    ),
                  ],),
              ),
            ),
                                 Container(
                                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                                    child: Row(
                                    children: [
                                    Container(
                                    child: const Icon(
                                    Icons.wb_sunny, color: Colors.white,
                                    ),
                                    ),
                                    Container(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: const Text("AccuWeather",style:
                                    TextStyle(color: Colors.white,fontSize: 17),
                                    ),
                                    ),

                                    ],
                                    ),
                                    ),

          ],),
    );

  }
}