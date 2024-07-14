import 'package:calculator_v07142024/Components/calculator_button.dart';
import 'package:calculator_v07142024/constants.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  /// Cache number
  String cacheNumber = '0';

  /// Actual number
  String actualNumber = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: AppBar(
        title: const Text('Calculator'),
      ),

      /// Body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            double viewportMaxHeight = viewportConstraints.maxHeight;
            double buttonRadius = viewportConstraints.maxWidth / 9;
            return Column(
              children: [
                /// Numbers screen
                Container(
                  constraints: const BoxConstraints(minHeight: 114.0),
                  height: viewportMaxHeight / 3,
                  width: double.maxFinite,
                  child: Card(
                      margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                      color: kColor03,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /// Cache number
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                cacheNumber,
                                style: const TextStyle(
                                    color: kColor04,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),

                            /// Actual number
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                actualNumber,
                                style: const TextStyle(
                                    color: kColor02,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),

                /// Buttons pad
                SizedBox(
                  height: (viewportMaxHeight / 3) * 2,
                  child: Column(
                    children: [
                      /// 1st row
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CmpCalculatorButton(
                              title: 'AC',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = 'AC';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '( )',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '( )';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '%',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '%';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '÷',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '÷';
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      /// 2nd row
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CmpCalculatorButton(
                              title: '7',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '7';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '8',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '8';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '9',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '9';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: 'x',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = 'x';
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      /// 3rd row
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CmpCalculatorButton(
                              title: '4',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '4';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '5',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '5';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '6',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '6';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '-',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '-';
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      /// 4th row
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CmpCalculatorButton(
                              title: '1',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '1';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '2',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '2';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '3',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '3';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '+',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '+';
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      /// 5th row
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CmpCalculatorButton(
                              title: '⌫',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '0';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '0',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '0';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '.',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '.';
                                });
                              },
                            ),
                            CmpCalculatorButton(
                              title: '=',
                              buttonRadius: buttonRadius,
                              titleColor: kColor01,
                              buttonColor: kColor05,
                              onPressed: () {
                                setState(() {
                                  actualNumber = '=';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
