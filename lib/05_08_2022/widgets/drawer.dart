import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Flutter Drawers"),
      ),
      drawer: Drawer(
        child:Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "DRAWER",
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    scaffoldKey.currentState!.closeDrawer();
                  },
                  tooltip: "Close",
                ),
              ],
            )),
      ),
      endDrawer: Drawer(
        child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "END DRAWER",
            ),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                scaffoldKey.currentState!.closeEndDrawer();
              },
              tooltip: "Close",
            ),
          ],
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Text(
                "DRAWER",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Text(
                "END DRAWER",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
