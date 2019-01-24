import 'package:flutter/material.dart';
import 'package:flutter_project/forgotpasswordpa.dart';
import 'package:flutter_project/homeScreen1.dart';
import 'package:flutter_project/registration_page.dart';

class Password1 extends StatefulWidget{
  @override
  Password1State createState()=> new Password1State();
    // TODO implement createState


}

class Password1State extends State<Password1> {
  GlobalKey<FormState> key = new GlobalKey();

  bool passwordVisible = true;
  bool validate = false;


   String password, Email;

  @override

  void initState() {
    passwordVisible = true;
  }


  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login Page"),

      ),
      body: new Container(
        margin: EdgeInsets.all(10.0),
        child: new Form(
          key: key,
          autovalidate: validate,
          child: FormUI(),
        ),
      ),
    );
  }

   Widget FormUI(){
     return new Column( children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail address'

                ),
                validator: validateEmail,
                onSaved: (String val){
                  Email=val;
                },
              ),
              new TextFormField(
                keyboardType: TextInputType.text,
                obscureText: passwordVisible,
                //This will obscure text dynamically
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Theme
                          .of(context)
                          .primaryColorDark,
                    ),


                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        passwordVisible
                            ? passwordVisible = false
                            : passwordVisible = true;
                      });
                    },
                  ),
                ),
              validator: (val)=> val.length<6 ? 'password too short' : null,

              ),
       new SizedBox(height: 15.0),
       new RaisedButton(onPressed: sendToserver,
       child: new Text('Login'),
       ),
       new Container(
         height: 10.0,
       ),
              new GestureDetector(
                child: Text('forgot password'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPage() ));
                },
              ),
       new GestureDetector(
         child: Text('new User'),
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationPage() ));
         },
       )
            ]);


  }
  String validateEmail(String value){
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0){
      return "Email is Required";
    }
    else if (!regExp.hasMatch(value)){
      return "Invalid Email";
    }
    else {
      return null;
    }
  }

  sendToserver(){
    if (key.currentState.validate()){
      key.currentState.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  HomeScreen()));
      print("Email $Email");
    }
    else{
      setState((){
         validate = true;

        });
      }
    }
  }
