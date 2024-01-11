import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
	
	TextEditingController nameInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController passInput = TextEditingController();
  bool? _check = false;

  @override
  Widget build(BuildContext context) {
  	return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text('Lorem ipsum', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Center(
              child: TextField(
                controller: nameInput,
                decoration: InputDecoration( 
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Name",
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Center(
              child: TextField(
                controller: emailInput,
                decoration: InputDecoration( 
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "E-Mail",
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Center(
              child: TextField(
                controller: passInput,
                obscureText: true,
                decoration: InputDecoration( 
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Password",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                              side: MaterialStateBorderSide.resolveWith((states) => BorderSide(width: 1.0, color: Colors.grey),),
                              checkColor: Colors.purple,
                              activeColor: Colors.white,
                              value: _check,
                              onChanged: (bool? val){
                                setState((){
                                  _check = val;
                                });
                              }
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('Remember', style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Lorem Ipsum?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ), 
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Center(
              child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:10, bottom: 10, left: 20, right: 20),
                    child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 25,),),
                  )
                ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text('Do not have an account?', style: TextStyle(fontSize: 16, color: Colors.grey),),
          ),
          Center(
            child: Text('New Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}