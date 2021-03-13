import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () { Modular.to.pushNamed("/nested"); },
                child: Text("pushnamed /nested"),
              ),
              ElevatedButton(
                onPressed: () { Modular.to.navigate("/another/1"); },
                child: Text("navigate /another/1"),
              ),
            ],
          )
        )
    );
  }
}

class PageA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () { Modular.to.navigate("../"); },
              child: Text("navigate(../)"),
            ),
            ElevatedButton(
              onPressed: () { Modular.to.navigate("/index"); },
              child: Text("navigate /index"),
            ),
          ],
        )
      )
    );
  }

}

class PageB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () { Modular.to.navigate("/nested"); },
                  child: Text("To /nested"),
                ),
              ],
            )
        )
    );
  }

}