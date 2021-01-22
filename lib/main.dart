import 'package:flutter/material.dart';
import 'package:praktikum_mobile/login.dart';
void main() {
  runApp(new MyApp());
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: MyApp1(),
//     );
//   }
// }

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SMART SHOP'),
      ),

      body: new Container(


          child: new ListView(
          children: <Widget>[
            new Center(
            child: new Image.asset(
                'images/logo.png',
                fit:BoxFit.fill,
                scale: 2.0
            ),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),
            new Padding(padding: new EdgeInsets.only(top: 20.0)),
            new TextField(
              obscureText: true,
              decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Sign in with Google"),
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> MyApp1()),
                    );

                  },
                )
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Sign in with Facebook"),
                  color: Colors.blue,
                  onPressed: (){},
                )
            ),
            new Center(
            child : new RaisedButton(
              child: new Text ("Login"),
              color: Colors.green,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> _HalamanDua()),
                );
              },
            )
            ),
          ],
        ),
      ),
    );
  }
}
class _HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Image.asset(
                  'images/elektronik&gadget.jpg',
                  fit:BoxFit.fill,
                  scale: 2.0,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 205, right: 40),
                      child: new RaisedButton(
                          child: new Text("Pilih Kategori"),
                          color: Colors.blue,
                          onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> _HalamanTiga()),
                          );}
                      ),
                    )
                ),
              ],
            ),
            new Stack(
              children: <Widget>[
                new Image.asset(
                    'images/lifestyle.jpg',
                    fit:BoxFit.fill,
                    scale: 2.0
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 175, right: 240),
                      child: new RaisedButton(
                          child: new Text("Pilih Kategori"),
                          color: Colors.blue,
                          onPressed: (){}
                      ),
                    )
                ),
              ],
            ),
            new Stack(
              children: <Widget>[
                new Image.asset(
                    'images/peralatandapur.jpg',
                    fit:BoxFit.fill,
                    scale: 1.0
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 165, right: 40),
                    child: new RaisedButton(
                        child: new Text("Pilih Kategori"),
                        color: Colors.blue,
                        onPressed: (){}
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class _HalamanTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Beranda'),
      ),
      body: new Container(
      child: new ListView(
      children: <Widget>[
        new TextField(
          decoration: new InputDecoration(
              hintText: "Cari Barang",
              labelText: "Cari Barang",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              )
          ),
        ),
        new Stack(
          children: <Widget>[
            new Image.asset(
                'images/redminote7.jpg',
                fit:BoxFit.fill,
                scale: 1.0,
                width: 400.0,
                height: 800.0,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: 218, right: 235),
                width: 60.0,
                height: 30.0,
                child: new RaisedButton(
                    child: new Text("Beli"),
                    color: Colors.lightBlueAccent,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> _HalamanEmpat()),
                      );
                    }
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: 218, right: 10),
                width: 60.0,
                height: 30.0,
                child: new RaisedButton(
                    child: new Text("Beli"),
                    color: Colors.lightBlueAccent,
                    onPressed: (){}
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: 486 , right: 235),
                width: 60.0,
                height: 30.0,
                child: new RaisedButton(
                    child: new Text("Beli"),
                    color: Colors.lightBlueAccent,
                    onPressed: (){}
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: 486, right: 10),
                width: 60.0,
                height: 30.0,
                child: new RaisedButton(
                    child: new Text("Beli"),
                    color: Colors.lightBlueAccent,
                    onPressed: (){}
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: 753,right: 235),
                width: 60.0,
                height: 30.0,
                child: new RaisedButton(
                    child: new Text("Beli"),
                    color: Colors.lightBlueAccent,
                    onPressed: (){}
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: 753,right: 10),
                width: 60.0,
                height: 30.0,
                child: new RaisedButton(
                    child: new Text("Beli"),
                    color: Colors.lightBlueAccent,
                    onPressed: (){}
                ),
              ),
            ),
          ],
        ),
      ],
      ),

      ),

    );
  }
}

class _HalamanEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Deskripsi'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/xiaomiredminote7.jpg',
              fit:BoxFit.fill,
              scale: 2.0,
              width: 100.0,
              height: 300.0,
            ),
            new Image.asset(
          'images/price1.jpg',
              fit:BoxFit.fill,
          scale: 2.0,
          width: 100.0,
          height: 250.0,
            ),
            new Image.asset(
              'images/informasibarang.jpg',
              fit:BoxFit.fill,
              scale: 2.0,
              width: 100.0,
              height: 175.0,
            ),
            new RaisedButton(
              child: new Text("Beli Sekarang!"),
              color: Colors.red,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}



