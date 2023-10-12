import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo/logo.png"),
        title: Text("Sains School"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(color: Colors.white),
            child: DropdownButton<String?>(
                hint: Text("Menu 1"),
                value: selectedValue,
                onChanged: ((value) {
                  setState(() {
                    selectedValue = value;
                  });
                }),
                items: ["Menu 1", "Menu 2", "Menu 3"]
                    .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                          child: Text(e.toString()),
                          value: e,
                        ))
                    .toList()),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 203, 202, 202)),
                      child: Center(
                          child: Text(
                        "Box 1",
                        style: TextStyle(color: Colors.black),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 203, 202, 202)),
                      child: Center(
                          child: Text(
                        "Box 2",
                        style: TextStyle(color: Colors.black),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 203, 202, 202)),
                      child: Center(
                          child: Text(
                        "Box 3",
                        style: TextStyle(color: Colors.black),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Judul Dialog"),
                              content: Text("Isi Dialog"),
                            ));
                  },
                  child: Text("Show Dialog"),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Judul Snackbar"),
                        action:
                            SnackBarAction(label: "Close", onPressed: () {}),
                      ),
                    );
                  },
                  child: Text("Show Snackbar"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
