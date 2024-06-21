import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Tictac(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tictac extends StatefulWidget {
  const Tictac({super.key});

  @override
  State<Tictac> createState() => _TictacState();
}

class _TictacState extends State<Tictac> {
  List<String> list = ["", "", "", "", "", "", "", "", ""];
  bool turn = true;
  int cnt = 0;
  bool isDialogShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "TIC TAC TOE",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: 400,
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Tictacgamelogic(0, "X");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white38,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(5, 5),
                                blurRadius: 5),
                            BoxShadow(
                                color: Colors.white24,
                                offset: Offset(-5, -5),
                                blurRadius: 5),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          list[0],
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Tictacgamelogic(1, "X");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white38,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(5, 5),
                                blurRadius: 5),
                            BoxShadow(
                                color: Colors.white24,
                                offset: Offset(-5, -5),
                                blurRadius: 5),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          list[1],
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Tictacgamelogic(2, "X");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white38,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(5, 5),
                                blurRadius: 5),
                            BoxShadow(
                                color: Colors.white24,
                                offset: Offset(-5, -5),
                                blurRadius: 5),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          list[2],
                          style: TextStyle(fontSize: 50, color: Colors.black),
                        )),
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Tictacgamelogic(3, "X");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                  blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white24,
                                  offset: Offset(-5, -5),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            list[3],
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Tictacgamelogic(4, "X");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                  blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white24,
                                  offset: Offset(-5, -5),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            list[4],
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Tictacgamelogic(5, "X");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                  blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white24,
                                  offset: Offset(-5, -5),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            list[5],
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Tictacgamelogic(6, "X");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                  blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white24,
                                  offset: Offset(-5, -5),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            list[6],
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Tictacgamelogic(7, "X");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                  blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white24,
                                  offset: Offset(-5, -5),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            list[7],
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Tictacgamelogic(8, "X");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                  blurRadius: 5),
                              BoxShadow(
                                  color: Colors.white24,
                                  offset: Offset(-5, -5),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            list[8],
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: restartGame,
                  child: Icon(Icons.restart_alt_outlined))
            ],
          ),
        ),
      ),
    );
  }

  WonGame() {
    if (list[0] == "X" && list[1] == "X" && list[2] == "X" ||
        list[3] == "X" && list[4] == "X" && list[5] == "X" ||
        list[6] == "X" && list[7] == "X" && list[8] == "X" ||
        list[0] == "X" && list[4] == "X" && list[8] == "X" ||
        list[2] == "X" && list[4] == "X" && list[6] == "X" ||
        list[0] == "X" && list[3] == "X" && list[6] == "X" ||
        list[1] == "X" && list[4] == "X" && list[7] == "X" ||
        list[2] == "X" && list[5] == "X" && list[8] == "X") {
      setState(() {
        Winnercheck = 1;

        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Card(
                  margin: EdgeInsets.only(
                      top: 200, bottom: 200, left: 50, right: 50),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2)),
                  elevation: 20,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "WINNER X",
                          style: TextStyle(fontSize: 50),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                list = ["", "", "", "", "", "", "", "", ""];
                              });
                              Navigator.pop(context);
                            },
                            child: Text("Play again"),
                          ),
                        )
                      ],
                    ),
                  )),
            );
          },
        );
      });
    } else if (list[0] == "O" && list[1] == "O" && list[2] == "O" ||
        list[3] == "O" && list[4] == "O" && list[5] == "O" ||
        list[6] == "O" && list[7] == "O" && list[8] == "O" ||
        list[0] == "O" && list[4] == "O" && list[8] == "O" ||
        list[2] == "O" && list[4] == "O" && list[6] == "O" ||
        list[0] == "O" && list[3] == "O" && list[6] == "O" ||
        list[1] == "O" && list[4] == "O" && list[7] == "O" ||
        list[2] == "O" && list[5] == "O" && list[8] == "O") {
      setState(() {
        Winnercheck = 1;

        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Card(
                  margin: EdgeInsets.only(
                      bottom: 200, top: 200, right: 50, left: 50),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2)),
                  elevation: 20,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "WINNER O",
                          style: TextStyle(fontSize: 50),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                list = ["", "", "", "", "", "", "", "", ""];
                              });
                              Navigator.pop(context);
                            },
                            child: Text("PLAY AGAIN"),
                          ),
                        )
                      ],
                    ),
                  )),
            );
          },
        );
      });
    }
  }

  int Winnercheck = 0;

  void _makeComputerMove() {
    List<int> emptyCells = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] == "") {
        emptyCells.add(i);
      }
    }

    if (emptyCells.isNotEmpty) {
      int randomIndex = Random().nextInt(emptyCells.length);
      Tictacgamelogic(emptyCells[randomIndex], "O");
    }
  }

  Tictacgamelogic(int i, String s) {
    setState(() {
      if (list[i] == "") {
        list[i] = s;
        cnt++;
        turn = !turn;
        WonGame();
        if (!turn) {
          _makeComputerMove();
        }
      }
    });
  }

  void restartGame() {
    setState(() {
      list = ["", "", "", "", "", "", "", "", ""];
      turn = true;
      cnt = 0;
    });
  }
}
