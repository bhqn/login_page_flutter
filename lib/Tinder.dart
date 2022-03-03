import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tinder extends StatefulWidget {
  @override
  State<Tinder> createState() {
    return TinderState();
  }
}

class TinderState extends State<Tinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          stops: [
            0.083,
            0.90,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFFD297B),
            Color(0xFFFF655B),
          ],
        )),
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 250,
              ),
              SizedBox(
                height: 90,
                child: Image.network(
                    'https://policies.tinder.com/static/ad5fe8e55f591b89e6ccd5fce88a5179/906b5/tinder_white_flame_black_outline.png'),
              ),
              SizedBox(
                width: 200,
                height: 15,
              ),
              Container(
                width: 15,
                child: Text("change Location",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              Container(
                child: Text("Plugin app for Tinder",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    textColor: Colors.grey,
                    color: Colors.white,
                    onPressed: () {},
                    child: Text('entrar'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
