import "package:flutter/material.dart";

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
    @required this.myText,
    @required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final String myText;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/clement-h-programming.jpg",
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            myText,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Source: https://unsplash.com/@clemhlrdt",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Thoughts on Photo",
                hintText: "I think it is nice...",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
