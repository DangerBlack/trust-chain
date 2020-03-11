import 'package:flutter/material.dart';
import 'package:trust_chain/profile.dart';

class ProfileState extends State<Profile> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipOval(
                    child: Image.network(
                        'https://www.gravatar.com/avatar/0cd22b59d87a701bbc8b0a6dcb86bce5'),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Name: Danger',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Surname: Black',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )),
              ],
            ),
            Center(
              child: Text(
                'You have pushed the button this many times:',
              ),
            ),
            Center(
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
