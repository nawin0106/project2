import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "route",
        home: Scaffold(
          appBar: AppBar(
            title: Text("InboxScreen"),
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          ),
         /* body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                     );
                },
                child: Text("Go Back"),
               ),
          ),*/
        ));
  }
}

class SentScreen extends StatelessWidget {
  const SentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "route",
        home: Scaffold(
          appBar: AppBar(
            title: Text("SentScreen"),
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          ),
         /* body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                     );
                },
                child: Text("Go Back"),
               ),
          ),*/
        ));
  }
}

class DraftScreen extends StatelessWidget {
  const DraftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "route",
        home: Scaffold(
          appBar: AppBar(
            title: Text("DraftScreen"),
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          ),
         /* body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                     );
                },
                child: Text("Go Back"),
               ),
          ),*/
        ));
  }
}

class StarredScreen extends StatelessWidget {
  const StarredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "route",
        home: Scaffold(
          appBar: AppBar(
            title: Text("StarredScreen"),
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          ),
         /* body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                     );
                },
                child: Text("Go Back"),
               ),
          ),*/
        ));
  }
}


class TrashScreen extends StatelessWidget {
  const TrashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "route",
        home: Scaffold(
          appBar: AppBar(
            title: Text("TrashScreen"),
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          ),
         /* body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                     );
                },
                child: Text("Go Back"),
               ),
          ),*/
        ));
  }
}

class SpamScreen extends StatelessWidget {
  const SpamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "route",
        home: Scaffold(
          appBar: AppBar(
            title: Text("SpamScreen"),
           leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          ),
         /* body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                     );
                },
                child: Text("Go Back"),
               ),
          ),*/
        ));
  }
}