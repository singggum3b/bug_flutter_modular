import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () { Modular.to.pushNamed("/nested"); },
            child: Text("pushnamed /nested"),
          ),
        )
    );
  }
}

class PageA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () { Modular.to.navigate("../"); },
          child: Text("navigate(../)"),
        ),
      )
    );
  }

}