import 'package:flutter/material.dart';
import 'login_page.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _HomeState();
}

class _HomeState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To runn'),
        toolbarHeight: 170.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              // controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Full Name',
                prefixIcon: Icon(Icons.person),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              // controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Phone number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            const TextField(
              // controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            const TextField(
              // controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            const TextField(
              // controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: 200.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {
                  // Perform sign-in logic here
                  // String email = _emailController.text;
                  // String password = _passwordController.text;

                  // print('clicked');
                  // print('Password: $password');
                },
                child: const Text(
                  'Register account',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text(
                 'Have an account? ',
                 style: TextStyle(fontSize: 16.0),
               ),
               GestureDetector(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const Home()),
                   );
                 },
                 child: const Text(
                   'Login here',
                   style: TextStyle(
                     fontSize: 16,
                     color: Colors.blue,
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
