import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Overflow Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("DEMO")),
        body: TextOverflowDemo(),
      ),
    );
  }
}

class TextOverflowDemo extends StatefulWidget {
  @override
  _EditorState createState() => _EditorState();
}

class _EditorState extends State<TextOverflowDemo> {
  var controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = "This is a long overf";
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String mytext = "";

  @override
  Widget build(BuildContext context) {
    int maxLines = 1;
    double fontSize = 30.0;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          LayoutBuilder(builder: (context, size) {
            // Build the textspan
            var span = TextSpan(
              text: mytext,
              style: TextStyle(fontSize: fontSize),
            );

            // Use a textpainter to determine if it will exceed max lines
            var tp = TextPainter(
              maxLines: maxLines,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              text: span,
            );

            // trigger it to layout
            tp.layout(maxWidth: size.maxWidth);

            // whether the text overflowed or not
            var exceeded = tp.didExceedMaxLines;

            return Column(children: <Widget>[
              Text.rich(
                span,
                overflow: TextOverflow.ellipsis,
                maxLines: maxLines,
              ),
              Text(exceeded ? "Overflowed!" : "Not overflowed yet.")
            ]);
          }),
          TextField(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
