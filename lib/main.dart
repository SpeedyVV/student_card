import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'lesson.dart';
import 'student.dart';

void main() {
  runApp(MyLessonsApp());
}

class MyLessonsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var student = new Student();
    //student.identification.registrationNumb
    //student.identification.name = 'Rui Pereira';
    student.document.givenName = 'Rui';
    student.document.lastName = 'Pereira';
    student.studentProfile.registrationNumber=1965;

    String title = 'Portal do Aluno Nº '
        +student.studentProfile.registrationNumber.toString()
        +' - '
        +student.document.givenName + ' ' + student.document.lastName;
    return MaterialApp(
      title: title,
      theme: ThemeData(
        buttonColor: Colors.red,
        //canvasColor: Colors.blueGrey[400],
        focusColor: Colors.purple,
        //primarySwatch: MaterialColor.black,
        primaryColor: Color.fromRGBO(0xff, 0x98, 0x00, 1.0),
        primaryColorLight: Color.fromRGBO(0xff, 0xc9, 0x47, 1.0),
        primaryColorDark: Color.fromRGBO(0xc6, 0x69, 0x00, 1.0),
        accentColor: Colors.black,
        backgroundColor: Colors.black,
        canvasColor: Colors.grey,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.orangeAccent[200],
              elevation: 10.0,
              shadowColor: Colors.orange,
              side: BorderSide(
                width:10.0,
                color: Colors.orange
              ),
            ),

        ),
      ),
      home: MyLessonsPage(title: title,),
    );
  }

  _MyLessonsPageState createState() => _MyLessonsPageState();
}

class MyLessonsPage extends StatefulWidget {
  MyLessonsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyLessonsPageState createState() => _MyLessonsPageState();
}

class _MyLessonsPageState extends State<MyLessonsPage> {

  List<Widget> _buildItems(int count) {
    List<Widget> listItems = [];

    Widget okButton = TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('OK',),);
    AlertDialog alert = AlertDialog(title: Text('My Title'), content: Text('My Content'),actions: [okButton],);
    List<AlertDialog> alerts = [];

    Text lessonType;

    // build 28 Lesson boxes
    for (int i = 1; i <= 28; i++ ) {
      Lesson lesson = Lesson(i);

      // Set lesson type text
      if (lesson.online) {
        lessonType = Text('On-line', textScaleFactor: 1,);
      }
      else {
        lessonType = Text('Presencial', textScaleFactor: 1,);
      };

      alerts.add(AlertDialog(title: Text(lesson.code), content: Text(lesson.description),actions: [okButton],));

      // Create Lesson button
      listItems.add(
        OutlinedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            elevation: MaterialStateProperty.all(10),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {return alerts[i-1];}
            );
          },
          child: ConstrainedBox (
            constraints: BoxConstraints (
              minWidth: 75,
              maxWidth: double.infinity,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                Container(
                  //color : Colors.amber,
                  child: Text(lesson.code),
                ),
                Container(
                  child: Container (
                    //color: Colors.brown,
                    //width: double.infinity,
                    child: lessonType,
                  ),
                ),
              ],
            ),
          ),
        ),
      ); // listItems.add
    }; // for

    listItems.add(
      Card(
        color: Colors.orange,
        shadowColor: Colors.blue,
        elevation: 10,
        borderOnForeground: true,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Data de Exame:'),
              Text('  12/12/2022\n'),
              Text('Professor:'),
              Row(children: [Text('  Monica'),Icon(Icons.favorite)],)

            ],
          ),
        )
      )
    );

    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          minimum: const EdgeInsets.all(15),
          child:  Scrollbar(
            isAlwaysShown: true,
            child: GridView.count(
              crossAxisCount: 9,
              //maxCrossAxisExtent: 66,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              padding: EdgeInsets.all(15.0),
              //shrinkWrap: false,
              //childAspectRatio: 2.0,
              children: _buildItems(28),
            ),
          ),
        ),
      ),
    );
  } // Widget
}