import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 2;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
  

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: TextButton(
              child: Image(
                image: AssetImage("images/dice$leftDiceNumber.png")
              ),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              child: Image(
                image: AssetImage("images/dice$rightDiceNumber.png")
              ),

              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {

//   int leftDiceNumber = 2;
//   int rightDiceNumber = 1;
  

//   @override
//   Widget build(BuildContext context) {
//     leftDiceNumber = 2;

//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             // flex: 2,
//             child: TextButton(
//               child: Image(
//                 image: AssetImage("images/dice$leftDiceNumber.png")
//               ),
//               onPressed: () {
//                 print("Selam");
//               },
//             ),
//           ),
//           Expanded(
//             // flex: 1,
//             child: TextButton(
//               child: Image(
//                 image: AssetImage("images/dice$rightDiceNumber.png")
//               ),

//               onPressed: () {
//                 print("Right button is pressed.");
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
