import 'package:chess/containers/black_container.dart';
import 'package:chess/containers/white_container.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 126, 24),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 182, 93, 11),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Let's play chess",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Divider(
              height: 50,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 166, 131, 119),
                        actions: [
                          Card(
                              color: Color.fromARGB(147, 12, 11, 11),
                              shadowColor: Color.fromARGB(255, 228, 85, 33),
                              elevation: 30,
                              child: Center(
                                child: Text("checkmate",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30)),
                              ))
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 320,
                  width: 320,
                  child: Wrap(children: [
                    black(), white(), black(), white(), black(), white(),
                    black(),
                    white(), //line1
                    white(), black(), white(), black(), white(), black(),
                    white(),
                    black(), //line2
                    black(), white(), black(), white(), black(), white(),
                    black(),
                    white(), //line 3
                    white(), black(), white(), black(), white(), black(),
                    white(),
                    black(), //line 4
                    black(), white(), black(), white(), black(), white(),
                    black(),
                    white(), //line 5
                    white(), black(), white(), black(), white(), black(),
                    white(),
                    black(), //line 6
                    black(), white(), black(), white(), black(), white(),
                    black(),
                    white(), //line 7
                    white(), black(), white(), black(), white(), black(),
                    white(),
                    black(), //line 8
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
