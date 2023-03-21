import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondScreen.dart';
// ignore: unused_import
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application_1/icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

var indexClicked = 0;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    const Center(
      child: Text('Inbox'),
    ),
    const Center(
      child: Text('Sent'),
    ),
    const Center(
      child: Text('Draft'),
    ),
    const Center(
      child: Text('Starred'),
    ),
    const Center(
      child: Text('Trash'),
    ),
    const Center(
      child: Text('Spam'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Bar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1661961112951-f2bfd1f253ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')),
              ),
              padding: const EdgeInsets.all(0),
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 0;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                    },
                    leading: Icon(
                      Defaults.drawerIconItem[0],
                      size: 35,
                      color: indexClicked == 0
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[0],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 1;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SentScreen()));
                    },
                    leading: Icon(
                      Defaults.drawerIconItem[1],
                      size: 35,
                      color: indexClicked == 1
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[1],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 2;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DraftScreen()));
                    },
                    leading: Icon(
                      Defaults.drawerIconItem[2],
                      size: 35,
                      color: indexClicked == 2
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[2],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 3;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StarredScreen()));
                    },
                    leading: Icon(
                      Defaults.drawerIconItem[3],
                      size: 35,
                      color: indexClicked == 3
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[3],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 4;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrashScreen()));
                    },
                    leading: Icon(
                      Defaults.drawerIconItem[4],
                      size: 35,
                      color: indexClicked == 4
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[4],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 5;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpamScreen()));
                    },
                    leading: Icon(
                      Defaults.drawerIconItem[5],
                      size: 35,
                      color: indexClicked == 5
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[5],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

//change

class bottombar extends StatelessWidget {
  const bottombar({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}








/*void main() {
  runApp(
    const MaterialApp(
      title: 'route',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          child: Text('go to second Screen'),
        ),
      ),
    );
  }
}*/
















/*void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my app bar'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('hello ,world!'),
          TextButton(
            onPressed: () {},
            child: new Text(
              "Category",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Bold', fontSize: 18.0, color: Colors.black),
            ),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          )
        ],
      ),
      /*(Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30),
        color: Colors.grey,
        child: Text('hello'),
      ),
      Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('click'),
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click '),
      ),
    );
  }
}
*/