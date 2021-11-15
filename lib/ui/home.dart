import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'tabbedBody_widget.dart';

class Shawn extends StatefulWidget {
  const Shawn({Key? key}) : super(key: key);

  @override
  _ShawnState createState() => _ShawnState();
}

class _ShawnState extends State<Shawn> {
  int _currentIndex = 0;
  final List _children = [
    // TabbeBodyWidget(Colors.green),
    // TabbeBodyWidget(Colors.yellow),
    // TabbeBodyWidget(Colors.black),
    // TabbeBodyWidget(Colors.green)

    const Center(
        child: Text("My Profile\nwill be here",
            textAlign: TextAlign.center, style: TextStyle(fontSize: 30))),
    const Center(
        child: Text(
      "Skills\n\nmy skills\n..",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    )),
    const Center(
        child: Text(
      "Projects\n\nlist of all work\npreviously done",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    )),
    const Center(
        child: Text(
      "Resume\n\nHere comes my cv",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHAWN"),
        centerTitle: false,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint("email tapped"),
              icon: const Icon(Icons.email)),
          IconButton(
              onPressed: () => debugPrint("website tapped"),
              icon: const Icon(Icons.language)),
          IconButton(
              onPressed: () => debugPrint("phone tapped"),
              icon: const Icon(Icons.phone)),
        ],
      ),
      backgroundColor: Colors.blue.shade900,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue.shade900,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Profile"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.emoji_objects), label: "Skills"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.assignment_turned_in), label: "Projects"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.description), label: "Resume")
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

//       backgroundColor: Colors.blue.shade900,
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[CustomButton()],
//         ),
//

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(
            content: Text("Snack Content"), backgroundColor: Colors.black);

        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(8.0)),
        child: const Text("Button"),
      ),
    );
  }
}
