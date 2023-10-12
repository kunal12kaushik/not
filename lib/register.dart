import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/oho.jpg"), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                          height: 4.5,
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.blue.shade50,
                                filled: true,
                                hintText: ' Enter Your Name',
                                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                                prefixIcon: Icon(Icons.person,size: 22,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.blue.shade50,
                                filled: true,
                                hintText: ' E-Mail',
                                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                prefixIcon: Icon(Icons.email_outlined,size: 22,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.blue.shade50,
                                filled: true,
                                hintText: ' Phone Number',
                                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                prefixIcon: Icon(Icons.phone,size: 22,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.blue.shade50,
                                filled: true,
                                hintText: ' Password',
                                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                prefixIcon: Icon(Icons.remove_red_eye_outlined,size: 22,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'firstpage');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.deepPurple.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'Already a User?',
                                    style: TextStyle(fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
