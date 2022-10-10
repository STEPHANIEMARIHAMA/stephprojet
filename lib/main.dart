import 'package:flutter/material.dart';
import 'package:stephprojet/enre.dart';
import 'Adja.dart';

void main() {
  runApp(const MAR());
}

class MAR extends StatelessWidget {
  const MAR({super.key});

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
              child: TextFormField(
                  decoration: const InputDecoration(
                label: Text('Email'),
                hintText: 'stephanietraore@gmail.com',
                border: OutlineInputBorder(),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Password'),
                    hintText: 'marihama47',
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Checkbox(value: val, onChanged: change),
                ),
                Text(
                  'Remember me',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0XFF253659),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF042940)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Welcome Login"),
                      content: const Text('Voulez vous continuer?'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Acceuil()));
                            },
                            child: Text('Oui')),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            const snackBar = SnackBar(
                              backgroundColor: Colors.black,
                              content: Text(
                                'Thank!',
                                style: TextStyle(color: Colors.white),
                              ),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: const Text('Non'),
                        )
                      ],
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
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
                  "Don't have an account",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const steph()));
                  },
                  child: const Text(
                    '?Sign up',
                    style: TextStyle(color: Color(0XFF042940)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
