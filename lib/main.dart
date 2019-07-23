import 'package:flutter/material.dart';

void main() => runApp(RootWidget());

class RootWidget extends StatefulWidget {
  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: RaisedButton(
              child: Text("Help me help u"),
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  pageBuilder: (BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return Builder(builder: (BuildContext context) {
                      return MaterialApp(
                        home: AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Hello from flutter'),
                          content: Text('That is the transparent dialog'),
                          actions: <Widget>[
                            FlatButton(
                              //   color: Colors.white,
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      );
                    });
                  },
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black54,
                  transitionDuration: const Duration(milliseconds: 200),
                  transitionBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child) {
                    return FadeTransition(
                      opacity: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOut,
                      ),
                      child: child,
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
