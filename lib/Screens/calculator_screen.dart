import 'package:calculator_v07142024/Components/calculator_button.dart';
import 'package:calculator_v07142024/constants.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';

  void calculation(btnTitle) {
    if (btnTitle == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnTitle == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '÷') {
        finalResult = div();
      }
    } else if (btnTitle == '+' ||
        btnTitle == '-' ||
        btnTitle == 'x' ||
        btnTitle == '÷' ||
        btnTitle == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '÷') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnTitle;
      result = '';
    } else if (btnTitle == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnTitle == '.') {
      if (!result.toString().contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    } else if (btnTitle == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-$result';
      finalResult = result;
    } else {
      result = result + btnTitle;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)) {
        return result = splitDecimal[0].toString();
      }
    }
    return result;
  }

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
                /// Result screen
                SizedBox(
                  height: viewportMaxHeight / 3,
                  width: double.maxFinite,
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                    color: kColor03,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          text,
                          style: const TextStyle(
                              color: kColor02,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
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
                                calculation('AC');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '+/-',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                calculation('+/-');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '%',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {},
                            ),
                            CmpCalculatorButton(
                              title: '÷',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                calculation('÷');
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
                                calculation('7');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '8',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('8');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '9',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('9');
                              },
                            ),
                            CmpCalculatorButton(
                              title: 'x',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                calculation('x');
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
                                calculation('4');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '5',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('5');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '6',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('6');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '-',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                calculation('-');
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
                                calculation('1');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '2',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('2');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '3',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('3');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '+',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor04,
                              onPressed: () {
                                calculation('+');
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
                                calculation('AC');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '0',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('0');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '.',
                              buttonRadius: buttonRadius,
                              buttonColor: kColor03,
                              onPressed: () {
                                calculation('.');
                              },
                            ),
                            CmpCalculatorButton(
                              title: '=',
                              buttonRadius: buttonRadius,
                              titleColor: kColor06,
                              buttonColor: kColor05,
                              onPressed: () {
                                calculation('=');
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
