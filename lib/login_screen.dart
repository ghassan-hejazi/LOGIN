import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String email) {
                      print(email);
                    },
                    controller: emailcontroller,
                    onChanged: (String emails) {
                      print(emails);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'not is email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'email',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (String pass) {
                      print(pass);
                    },
                    controller: passwordcontroller,
                    onChanged: (String passw) {
                      print(passw);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'not is email';
                      }
                      return null;
                    },
                    obscureText: ispassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.lock,
                        ),
                        onPressed: () {},
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye,
                        ),
                        onPressed: () {
                          setState(() {
                            ispassword = !ispassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: MaterialButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          print(passwordcontroller.text);
                          print(emailcontroller.text);
                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('dont have an account ?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'register now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
