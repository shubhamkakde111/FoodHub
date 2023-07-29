import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(mainpage());
}

class mainpage extends StatelessWidget {
  Widget build(BuildContext v) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Myapp",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: splashscreen(),
    );
  }
}

class splashscreen extends StatefulWidget {
  State<splashscreen> createState() => splashscreenState();
}

class splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 169, 84, 184),
                  Color.fromARGB(255, 83, 138, 183)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: const Center(
                child: Text("FoodHub",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        color: Colors.white,
                        fontSize: 50)))));
  }
}

class homepage extends StatefulWidget {
  State<homepage> createState() {
    return homestate();
  }
}

class homestate extends State<homepage> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 169, 84, 184),
                  Color.fromARGB(255, 83, 138, 183)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          opacity: 0.3,
                          image: AssetImage("assets/images/chef.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(55),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white),
                  width: 330,
                  height: 470,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login Page",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      SizedBox(
                        height: 50,
                      ),
                      Text("Username ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 220,
                          height: 35,
                          child: TextField(
                            controller: user,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 1)),
                            ),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text("Password ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 220,
                          height: 35,
                          child: TextField(
                            controller: pass,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 1)),
                            ),
                          )),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                          width: 150,
                          child: ElevatedButton(
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () {
                              // if (user.text == 'shubham' && pass.text == "123")
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => afterlogin()));
                            },
                          ))
                    ],
                  )))
        ],
      ),
    );
  }
}

class afterlogin extends StatefulWidget {
  State<afterlogin> createState() {
    return loginState();
  }
}

class loginState extends State<afterlogin> {
  Widget build(BuildContext v) {
    return Scaffold(
        appBar: AppBar(
            title: Align(
                alignment: Alignment(-.2, 0),
                child: Text("HomePage",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)))),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 169, 84, 184),
                  Color.fromARGB(255, 83, 138, 183)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          Center(
              child: Container(
                  width: 150,
                  height: 500,
                  child: Column(children: [
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(
                              child:Text("VEG",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.green))),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                opacity: 0.2,
                                image: AssetImage("assets/images/veg.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => vegSection()));
                        }),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(
                              child: Text("NON VEG",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.red))),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                opacity: 0.2,
                                image: AssetImage("assets/images/nonveg.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => nonvegSection()));
                        })
                  ])))
        ]));
  }
}

class vegSection extends StatefulWidget {
  State<vegSection> createState() {
    return vegSectionstate();
  }
}

class vegSectionstate extends State<vegSection> {
  var meals = <int>[10, 20, 30, 40, 50, 60];
  var tags = <String>['Paneer', 'Rice', 'Pizza', 'Dal', 'Burger', 'Cake'];
  var selected = {};
  var choosen = <String>[];

  var imgs = <AssetImage>[
    AssetImage("assets/images/paneer.jpeg"),
    AssetImage("assets/images/rice.jpeg"),
    AssetImage("assets/images/pizza.jpeg"),
    AssetImage("assets/images/dal.jpeg"),
    AssetImage("assets/images/burger.jpeg"),
    AssetImage("assets/images/cake.jpeg")
  ];
  @override
  void initState() {
    super.initState();

    for (int i = 0; i < meals.length; i++) {
      selected[tags[i]] = 0;
    }
  }

  late int ans = 0;
  @override
  Widget build(BuildContext v) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Have Some Veg Meal!"),
        ),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 169, 84, 184),
                  Color.fromARGB(255, 83, 138, 183)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: meals.map((value) {
                    var index = meals.indexOf(value);
                    var name = tags.elementAt(index);
                    return InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  opacity: 0.3,
                                  image: imgs[index],
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                                alignment: const Alignment(0, 0.8),
                                child: Text('$name : ₹ $value  ',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36)))),
                      ),
                      onTap: () {
                        selected[name]++;
                        if (selected[name] == 1) choosen.add(name);
                        ans += value;
                        setState(() {});
                      },
                      onDoubleTap: () {
                        if (selected[name] > 0) selected[name]--;
                        ans -= value;
                        if (selected[name] == 0) choosen.remove(name);
                      },
                    );
                  }).toList(),
                ),
              )),
          Align(
              alignment: Alignment(0, 1),
              child: Container(
                  width: 150,
                  child: ElevatedButton(
                    child: Text('Confirm Order',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => orderconfirm(
                                meals, tags, selected, choosen, ans)),
                      );
                    },
                  )))
        ]));
  }
}

class nonvegSection extends StatefulWidget {
  State<nonvegSection> createState() {
    return nonvegSectionstate();
  }
}

class nonvegSectionstate extends State<nonvegSection> {
  var imgs = <AssetImage>[
    AssetImage("assets/images/fish.jpeg"),
    AssetImage("assets/images/omlette.jpeg"),
    AssetImage("assets/images/chicken.png"),
    AssetImage("assets/images/biryani.png"),
    AssetImage("assets/images/kabab.jpeg"),
    AssetImage("assets/images/egg.jpeg")
  ];
  var meals = <int>[10, 20, 30, 40, 50, 60];
  var tags = <String>[
    'FishCurry',
    'Omlette',
    'Chicken',
    'Biryani',
    'Kabab',
    'boiledEgg'
  ];
  var selected = {};
  var choosen = <String>[];
  @override
  void initState() {
    super.initState();

    for (int i = 0; i < meals.length; i++) {
      selected[tags[i]] = 0;
    }
  }

  late int ans = 0;
  Widget build(BuildContext v) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Have Some Non Veg Meal!"),
        ),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 169, 84, 184),
                  Color.fromARGB(255, 83, 138, 183)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: meals.map((value) {
                    var index = meals.indexOf(value);
                    var name = tags.elementAt(index);
                    return InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  opacity: 0.3,
                                  image: imgs[index],
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                                alignment: Alignment(0, 0.8),
                                child: Text('$name : ₹ $value  ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36)))),
                      ),
                      onTap: () {
                        selected[name]++;
                        if (selected[name] == 1) choosen.add(name);
                        ans += value;
                        setState(() {});
                      },
                      onDoubleTap: () {
                        if (selected[name] > 0) selected[name]--;
                        ans -= value;
                        if (selected[name] == 0) choosen.remove(name);
                      },
                    );
                  }).toList(),
                ),
              )),
          Align(
              alignment: Alignment(0, 1),
              child: Container(
                  width: 150,
                  child: ElevatedButton(
                    child: Text('Confirm Order',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => orderconfirm(
                                meals, tags, selected, choosen, ans)),
                      );
                    },
                  )))
        ]));
  }
}

class orderconfirm extends StatelessWidget {
  var intValue = Random().nextInt(988888) + 11111;
  var meals = <int>[];
  var tags = <String>[];
  var selected = {};
  var choosen = <String>[];
  int ans;
  orderconfirm(this.meals, this.tags, this.selected, this.choosen, this.ans);

  Widget build(BuildContext v) {
    return Scaffold(
        appBar: AppBar(
            title: Align(
          alignment: const Alignment(-0.2, -1),
          child: Text("Invoice",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        )),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 169, 84, 184),
                    Color.fromARGB(255, 83, 138, 183)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
            Center(
                child: Container(
                    width: 400,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        opacity: 0.2,
                        image: AssetImage('assets/images/invoice.png'),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: choosen.map((value) {
                          var count = selected[value];
                          var price = count * meals[tags.indexOf(value)];
                          return Container(
                            width: 400,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("$value",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                Text("$count",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                Text("₹ $price",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          );
                        }).toList()))),
            const Align(
                alignment: Alignment(0, 0.6),
                child: Text("Thank You !Visit Again",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
            const Align(
                alignment: Alignment(0, -0.6),
                child: Text("Invoice",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
            Align(
                alignment: Alignment(0, 0.5),
                child: Text("You Total Bill Is : ₹ $ans",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
            Align(
                alignment: Alignment(-.4, -0.5),
                child: Text("Invoice No : $intValue ",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)))
          ],
        ));
  }
}
