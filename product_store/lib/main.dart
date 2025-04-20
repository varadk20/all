import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Store',
      home: DisplayPage(),
    );
  }
}

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile Store')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/store.png',
              height: 200,
              errorBuilder: (context, error, stackTrace) {
                return Text('Store image not found');
              },
            ),
            SizedBox(height: 20),
            Text('Welcome to Mobile Store',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MenuPage()));
        },
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Phone Menu')),
      body: ListView(
        children: [
          phoneTile('Phone A', '\$100', 'assets/images/phone1.png'),
          phoneTile('Phone B', '\$200', 'assets/images/phone2.png'),
          phoneTile('Phone C', '\$300', 'assets/images/phone3.png'),
          phoneTile('Phone D', '\$400', 'assets/images/phone4.png'),
          phoneTile('Phone E', '\$500', 'assets/images/phone5.png'),
          phoneTile('Phone F', '\$600', 'assets/images/phone6.png'),
          phoneTile('Phone G', '\$700', 'assets/images/phone7.png'),
        ],
      ),
    );
  }

  Widget phoneTile(String name, String price, String imagePath) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 60,
          errorBuilder: (context, error, stackTrace) {
            return Text('No image');
          },
        ),
        title: Text(name),
        subtitle: Text(price),
      ),
    );
  }
}
