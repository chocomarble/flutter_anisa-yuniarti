import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Weekly',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: MyHome(),
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Image.network(
              'https://plus.unsplash.com/premium_photo-1668361451587-b7a740479b28?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
          SizedBox(height: 5),
          SizedBox(height: 15.0),
          Center(child: Text('Contact Us', style: TextStyle(fontSize: 20.0))),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 280,
              child: Text(
                "Need to get in touch with us? Either fill out the form with your inquiry or find the department email you'd like to contact below",
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 225,
                    child: Column(
                      children: [
                        Text(
                          'First Name*',
                        ),
                        TextField(
                            controller: firstName,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(gapPadding: 10),
                              labelText: 'Name',
                              hintText: 'insert Your name',
                            ),
                            onChanged: (firstname) {
                              print('$firstname');
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Text(
                        'Last Name*',
                      ),
                      SizedBox(
                        width: 225,
                        child: TextField(
                            controller: lastName,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(gapPadding: 10),
                              labelText: 'Name',
                              hintText: 'insert Your name',
                            ),
                            onChanged: (lastname) {
                              print('$lastname');
                            }),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email*'),
                  TextField(
                      controller: email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(gapPadding: 10),
                        labelText: 'yourmail@mail.com',
                        hintText: 'insert Your name',
                      ),
                      onChanged: (email) {
                        print('$email');
                      }),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: content,
                      maxLines: null, // Setel maxLines ke null untuk textarea
                      decoration: InputDecoration(
                        labelText: 'Input Text',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
