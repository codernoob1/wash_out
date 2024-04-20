import 'package:flutter/material.dart';
import 'package:wash_out/components/my_textfield.dart';
import 'package:wash_out/pages/my_button.dart';
import 'package:wash_out/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordlController = TextEditingController();

  final TextEditingController confirmPasswordlController =
      TextEditingController();

  // void register() async {
  //   //get auth service
  //   final authService = AuthService();

  //   //check if passwords match -> create user
  //   if (passwordlController.text == confirmPasswordlController.text) {
  //     try {
  //       await authService.signInWithEmailPassword(
  //         emailController.text,
  //         passwordlController.text,
  //       );
  //     } catch (e) {
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text(e.toString()),
  //         ),
  //       );
  //     }
  //   }
  //   else{
  //     showDialog(
  //         context: context,
  //         builder: (context) => const AlertDialog(
  //           title: Text("Password don't match"),
  //         ),
  //       );
  //   }
  // }
  void register() async {
  // Get auth service
  final authService = AuthService();

  // Check if passwords match
  if (passwordlController.text == confirmPasswordlController.text) {
    try {
      // Register the user
      await authService.signUpWithEmailPassword(
        emailController.text,
        passwordlController.text,
      );
      // Optionally, you can navigate to another page upon successful registration
      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NextPage()));
    } catch (e) {
      // Handle registration errors
      showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  } else {
    // Show error if passwords don't match
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Passwords don't match"),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            //message
            Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // MytextField(
            //   controller: userController,
            //   hintText: "UserName",
            //   obscureText: false,
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            //TextField
            MytextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MytextField(
              controller: passwordlController,
              hintText: "password",
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MytextField(
              controller: confirmPasswordlController,
              hintText: "confirm password",
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),

            //button
            MyButton(text: "Sign Up", onTap: register),

            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
