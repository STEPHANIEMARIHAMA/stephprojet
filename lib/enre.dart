import 'package:flutter/material.dart';
import 'package:stephprojet/main.dart';

class steph extends StatefulWidget {
  const steph({super.key});

  @override
  State<steph> createState() => _stephState();
}

class _stephState extends State<steph> {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'projet1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            backgroundColor: Color.fromARGB(255, 255, 255, 255)),
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconData? get icone => null;

  get incrementCounter => null;
  var val = false;

  get divider => null;
  void change(t) {
    setState(() {
      val = t;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Welcome \n Back',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  'images/BELLE.jpg',
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 40,
            child: TextFormField(
                decoration: const InputDecoration(
              label: Text('First Name'),
              hintText: 'TRAORE',
              border: OutlineInputBorder(),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 40,
            child: TextFormField(
                decoration: const InputDecoration(
              label: Text('Last Name'),
              hintText: 'STEPHANIE ',
              border: OutlineInputBorder(),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 40,
            child: TextFormField(
                decoration: const InputDecoration(
              label: Text('Number'),
              hintText: '0747509007 ',
              border: OutlineInputBorder(),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 40,
            child: TextFormField(
                decoration: const InputDecoration(
              label: Text('Email'),
              hintText: 'stephanietraore@gmail.com',
              border: OutlineInputBorder(),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 40,
            child: TextFormField(
              decoration: const InputDecoration(
                  label: Text('Password'),
                  hintText: 'marihama47',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF253659)),
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                    Text('Login with'),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                  ],
                ),
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 100,
                    ),
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'images/TW.webp',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'images/GOO.jpg',
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.apple,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account',
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const MAR()));
                    },
                    child: Text(
                      '?Sign up',
                      style: TextStyle(color: Color(0XFF042940)),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
