import 'package:calculator_app/Componenets/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: Color(0xff2d7530),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  //verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        userInput.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(answer.toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      MyButtons(
                        title: 'AC',
                        selecthandler: (() {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        }),
                      ),
                      MyButtons(
                          title: '+/-',
                          selecthandler: () {
                            userInput += '+/-';
                            setState(() {});
                          }),
                      MyButtons(
                        title: '%',
                        selecthandler: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
                      MyButtons(
                        color: Colors.white,
                        title: '/',
                        fontColor: Colors.black,
                        selecthandler: () {
                          userInput += '/';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButtons(
                        title: '7',
                        selecthandler: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      MyButtons(
                        title: '8',
                        selecthandler: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                      MyButtons(
                        title: '9',
                        selecthandler: () {
                          userInput += '9';
                          setState(() {});
                        },
                      ),
                      MyButtons(
                        color: Colors.white,
                        title: 'x',
                        fontColor: Colors.black,
                        selecthandler: () {
                          userInput += 'x';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButtons(
                        title: '4',
                        selecthandler: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                      MyButtons(
                          title: '5',
                          selecthandler: () {
                            userInput += '5';
                            setState(() {});
                          }),
                      MyButtons(
                          title: '6',
                          selecthandler: () {
                            userInput += '6';
                            setState(() {});
                          }),
                      MyButtons(
                          color: Colors.white,
                          title: '-',
                          fontColor: Colors.black,
                          selecthandler: () {
                            userInput += '-';
                            setState(() {});
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      MyButtons(
                          title: '1',
                          selecthandler: () {
                            userInput += '1';
                            setState(() {});
                          }),
                      MyButtons(
                          title: '2',
                          selecthandler: () {
                            userInput += '2';
                            setState(() {});
                          }),
                      MyButtons(
                          title: '3',
                          selecthandler: () {
                            userInput += '3';
                            setState(() {});
                          }),
                      MyButtons(
                          color: Colors.white,
                          title: '+',
                          fontColor: Colors.black,
                          selecthandler: () {
                            userInput += '+';
                            setState(() {});
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      MyButtons(
                          title: '0',
                          selecthandler: () {
                            userInput += '0';
                            setState(() {});
                          }),
                      MyButtons(
                          title: '.',
                          selecthandler: () {
                            userInput += '.';
                            setState(() {});
                          }),
                      MyButtons(
                          title: 'Del',
                          selecthandler: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          }),
                      MyButtons(
                          color: Colors.white,
                          title: '=',
                          fontColor: Colors.black,
                          selecthandler: () {
                            equalpres();
                            setState(() {});
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalpres() {
    String MyUserInput = userInput;
    MyUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(MyUserInput);
    ContextModel model = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, model);
    answer = eval.toString();
  }
}
