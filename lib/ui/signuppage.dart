import 'package:flutter/material.dart';
import 'package:signup_login_form/ui/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();
  TextEditingController usernameField = TextEditingController();
  TextEditingController repeatpasswordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                         // Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Login',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.camera_alt_sharp,
                    color: Colors.black12, size: 40),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.black26),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      controller: emailField,
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        labelStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.black26),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      controller: usernameField,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.black26),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      controller: passwordField,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 15,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.black26),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      controller: repeatpasswordField,
                      decoration: InputDecoration(
                        labelText: 'Repeat Password',
                        labelStyle:
                            TextStyle(color: Colors.black26, fontSize: 15),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: kElevationToShadow[4],
                  ),
                  child: MaterialButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.check),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Text('Terms of Service',
                          style: TextStyle(color: Colors.black26),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
