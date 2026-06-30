import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/home/bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller,
                validator: (value) =>
                    value!.isEmpty ? "Enter valid email" : null,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(),
                  hintText: "Enter Your email",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.email, color: Colors.grey),
                  label: Text("Email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return "Enter valid password";
                  }
                  return null;
                },
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(),
                  hintText: "Enter Your password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                  label: Text("password"),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomePage(userName: "All"),
                      ),
                    );
                  } else {
                    print("Email is wrong");
                  }
                },
                child: Text("Login"),
              ),
            ),
          
          Container ( 
            width: 100.w,
            height: 100.h,
            color: Colors.green,
            child: Text("Data" , style: TextStyle(
              fontSize: 20.sp, 
            ),),
          )
          
          ],
        ),
      ),
    );
  }
}
