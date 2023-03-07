import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:developer' as math;
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 4;
  int onDice = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text('Dice App'),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      setState(() {});
                      // final random = Random().nextInt(6) + 1;
                      solDice = Random().nextInt(6) + 1;
                      onDice = Random().nextInt(6) + 1;
                      math.log('sol jak');
                    },
                    child: Image.asset('images/dice_$solDice.png')),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      setState(() {});
                      // final random = Random().nextInt(6) + 1;
                      // onDice = random;
                      solDice = Random().nextInt(6) + 1;
                      onDice = Random().nextInt(6) + 1;
                      math.inspect('on jak');
                    },
                    child: Image.asset('images/dice_$onDice.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
