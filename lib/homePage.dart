import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Image.asset("assets/logo/logo.png"),
        title: Text("Dhera"),
        centerTitle: false,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Dhenira"),
              accountEmail: Text("email@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/avatar.png"),
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {},
            ),
          ],
        ),
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
          Column(
            children: [
              SizedBox(
                height: 85,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    width: 115,
                    margin: EdgeInsets.only(left: 20),
                    child: Center(
                      child: Text("Box $index"),
                    ),
                    color: Color.fromARGB(255, 195, 194, 194),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Card(
                margin: EdgeInsets.only(top: 115),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Container(
                          width: 300,
                          child: AlertDialog(
                            title: Text("Judul Dialog"),
                            content: Text("Isi Dialog"),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text("Show Dialog"),
                ),
              ),
            ),
          ),
          Container(
            child: Align(
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
          ),
          Container(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 175,
                      width: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.add_outlined),
                            title: Text("Menu 1"),
                          ),
                          ListTile(
                            leading: Icon(Icons.create),
                            title: Text("Menu 2"),
                          ),
                          ListTile(
                            leading: Icon(Icons.search),
                            title: Text("Menu 3"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text("Show Bottom Sheet"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
