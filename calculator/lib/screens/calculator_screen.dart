import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  static const int operatorColor = 0xFFE77575;
  static const int specialOperatorColor = 0xFF279B8A;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Text(
                  '308 x 42',
                  style: TextStyle(fontSize: 24, fontFamily: 'Roboto'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: Text(
                  '12,936',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.transparent,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff292d36),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(
                          value: 'AC',
                          colorValue: specialOperatorColor,
                        ),
                        CustomButton(
                          value: '+/-',
                          colorValue: specialOperatorColor,
                        ),
                        CustomButton(
                          value: '%',
                          colorValue: specialOperatorColor,
                        ),
                        CustomButton(
                          value: '÷',
                          colorValue: operatorColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(value: '7'),
                        CustomButton(value: '8'),
                        CustomButton(value: '9'),
                        CustomButton(
                          value: 'x',
                          colorValue: operatorColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(value: '4'),
                        CustomButton(value: '5'),
                        CustomButton(value: '6'),
                        CustomButton(
                          value: '-',
                          colorValue: operatorColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(value: '1'),
                        CustomButton(value: '2'),
                        CustomButton(value: '3'),
                        CustomButton(
                          value: '+',
                          colorValue: operatorColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(value: '0'),
                        CustomButton(value: '00'),
                        CustomButton(value: '.'),
                        CustomButton(
                          value: '=',
                          colorValue: operatorColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    @required this.value,
    this.colorValue = 0xFFC5C6C9,
    Key key,
  }) : super(key: key);

  final String value;
  final int colorValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 75,
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(colorValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
