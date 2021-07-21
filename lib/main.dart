import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Main Menu',
    home: MainRoute(),
  ));
}

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Center(
        child: Column( 
          children: [
          ElevatedButton(
          child: Text('LayoutCard'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LayoutCard()),
            );
          },
        ),
        ElevatedButton(
          child: Text('LayoutImagem'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LayoutImagem()),
            );
          },
        ),
          ]
        )
      ),
    );
  }
}

class LayoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutCard"),
      ),
      body: Center(
        child: Column (
          children: [
            card,
            card,
            card,

        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar'),
        ),
                  ]
        ),
      ),
    );
  }
}

class LayoutImagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutImagem"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar'),
        ),
      ),
    );
  }
}

Widget card = Container(
  child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 1'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.asset('assets/card-sample-image.jpg'),
                Image.asset('assets/card-sample-image-2.jpg'),
              ],
            ),
          ),
);