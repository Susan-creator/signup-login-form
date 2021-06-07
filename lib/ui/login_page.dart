import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signup_login_form/ui/signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

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
            children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Container(
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.person, color: Colors.black12, size: 70)
                  // child: CircleAvatar(
                  //   backgroundColor: Colors.black26,
                  //   child: CircleAvatar(
                  //     backgroundColor: Colors.white,
                  //     radius: 37,
                  //     child: Icon(
                  //       Icons.person,
                  //       size: 70,
                  //       color: Color(0xffCCCCCC),
                  //     ),
                  //   ),
                  // ),
                  ),
              SizedBox(
                height: 12.0,
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
                        labelText: ' Username or email address',
                        labelStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 15.0,
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
                      controller: emailField,
                      decoration: InputDecoration(
                        labelText: ' Password',
                        labelStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 15.0,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: IconButton(
                      icon: Icon(Icons.camera, color: Colors.black26),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
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
                          'LOG IN',
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
                      child: Text('Login with',
                          style: TextStyle(color: Colors.black26),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(MaterialCommunityIcons.google_plus),
                        iconSize: 28.0,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent.shade400,
                      radius: 20,
                      child: IconButton(
                        icon: Icon(MaterialCommunityIcons.github_circle),
                        iconSize: 25.0,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 20,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.twitter),
                        iconSize: 25.0,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent.shade700,
                      radius: 20,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        iconSize: 25.0,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
