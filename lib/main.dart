import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    String username = nameController.text;
    String password = passwordController.text;

    print('Username: $username');
    print('Password: $password');

    nameController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                )),
            Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: OutlinedButton.icon(
                  // child: const Text('Login'),
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook_rounded,
                    size: 24.0,
                  ),
                  label: Text('Join with Facebook'),
                )),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: OutlinedButton.icon(
                  // child: const Text('Login'),
                  onPressed: () {},
                  icon: Icon(
                    Icons.whatshot_rounded,
                    size: 24.0,
                  ),
                  label: Text('Join with Google'),
                )),
            Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () => _login(context),
                )),
            Row(
              children: <Widget>[
                const Text('Do not have an account?'),
                TextButton(
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go to previous page'),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.amber,
//     );
//     body:
//     Center(
//       child: ElevatedButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: const Text('Go back!'),
//       ),
//     );
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: BottomNavigationBar(),
//     );
//   }
// }

// class BottomNavigationBar extends StatefulWidget {
//   const BottomNavigationBar({super.key, items});

//   @override
//   State<BottomNavigationBar> createState() =>
//       _BottomNavigationBarState();
// }

// class _BottomNavigationBarState
//     extends State<BottomNavigationBar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//         // currentIndex: _selectedIndex,
//         // selectedItemColor: Colors.amber[800],
//         // onTap: _onItemTapped,
//       ),
//     );
//   }
// }

