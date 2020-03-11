import 'package:flutter/material.dart';
import 'package:trust_chain/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 20)
                ),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                child: Text(
                    'Chain',
                    style: TextStyle(fontSize: 20)
                ),
              ),
            ],
        ),
    );
  }
}