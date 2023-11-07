import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :
    SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Center(child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,)))
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Container(decoration: const BoxDecoration(color: Colors.blue,border: Border(bottom: BorderSide(color: Colors.blue,width: 2))),),
            ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(50, 150, 50, 30),
                 child: textformfield(context,"username")),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: textformfield(context,"password")),
              Padding(
                padding: const EdgeInsets.fromLTRB(150 , 10, 0 , 0),
                child: TextButton(onPressed: () {}, child: const Text("Forgot Password?",style: TextStyle(color: Color.fromARGB(255, 125, 106, 106)),))),
                SizedBox(width: 250, child: ElevatedButton(onPressed: () {}, child: const Text("LOGIN"))),
                const Text("Login with"),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   buttoniconApp(context,FontAwesomeIcons.facebook),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   buttoniconApp(context, FontAwesomeIcons.instagram),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   buttoniconApp(context, FontAwesomeIcons.twitter),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   buttoniconApp(context, FontAwesomeIcons.googlePlusG),
)

          ],
        ),
          ],
    ))));
  }
  Widget textformfield(BuildContext context,String title) {
    return Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(96, 159, 145, 145)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(decoration: InputDecoration(hintText: title)),
                    ),
                  );
  }
  Widget buttoniconApp(BuildContext context,IconData icon) {
    return Container(
                    decoration: BoxDecoration(
                    border: Border.all()),child: IconButton(onPressed: () {}, icon: Icon(icon)));
  }
}
