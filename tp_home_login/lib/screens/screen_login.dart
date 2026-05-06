import 'package:flutter/material.dart';
import 'package:tp_home_login/core/app_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String usuario = '';
  String password = '';
  String ad = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SizedBox(height: 30),
              Text("Ingresa tu usuario y contraseña:", style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold,)),
              SizedBox(height: 300),
              SizedBox(width: 1000, child: TextField(controller: usuarioController)),
              SizedBox(height: 100),
              SizedBox(width: 1000, child:TextField(controller: passwordController, obscureText: true)),
              SizedBox(height:200),
              SizedBox(width: 300, height: 100, child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    usuario = usuarioController.text;
                    password = passwordController.text;
                    if(usuario.isEmpty || password.isEmpty) {
                      ad = 'Los campos no pueden estar vacíos. Ingresa datos válidos.';
                    } else if(usuario != 'mecatronica' || password != '1001001') {
                      ad = 'Usuario o contraseña incorrectos. Intenta de nuevo.';
                    } else {
                      ad = '¡Inicio de sesión exitoso!';
                      appRouter.push('/home');
                    }
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ad)));

                },
                child: Text("Iniciar Sesión", style: TextStyle(fontSize: 30, color: Colors.black,))
              ))
            ]
          )
        ),
      );
  }
}