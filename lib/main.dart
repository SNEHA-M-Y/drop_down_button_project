import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drop Down Button Project',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 196, 242, 197),
          title: Text("Drop Down Button"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Select Colors",
                  style: GoogleFonts.aboreto(
                      textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                SizedBox(
                  height: 150,
                ),
                DropdownMenu<int>(
                  enabled: true,
                  initialSelection: 0,
                  label: Text("colors"),
                  leadingIcon: Icon(Icons.color_lens),
                  menuHeight: 200,
                  dropdownMenuEntries: [
                    DropdownMenuEntry<int>(
                      value: 0,
                      label: "Black",
                    ),
                    DropdownMenuEntry<int>(
                      value: 1,
                      label: "White",
                    ),
                    DropdownMenuEntry<int>(
                      value: 2,
                      label: "Blue",
                    ),
                    DropdownMenuEntry<int>(
                      value: 3,
                      label: "Green",
                    ),
                    DropdownMenuEntry<int>(
                      value: 4,
                      label: "Grey",
                    ),
                    DropdownMenuEntry<int>(
                      value: 5,
                      label: "Red",
                    ),
                    DropdownMenuEntry<int>(
                      value: 6,
                      label: "Yellow",
                    ),
                    DropdownMenuEntry<int>(
                      value: 7,
                      label: "Orange",
                    ),
                    DropdownMenuEntry<int>(
                      value: 8,
                      label: "Brown",
                    ),
                    DropdownMenuEntry<int>(
                      value: 9,
                      label: "Violet",
                    ),
                    DropdownMenuEntry<int>(
                      value: 11,
                      label: "Teal",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
