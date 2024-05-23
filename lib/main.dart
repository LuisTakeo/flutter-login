import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      passVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    void efetuarLogin() {
      print("Logou");
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Entre com seu e-mail',
                      labelText: "Email",
                      icon: Icon(Icons.person)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: passVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: 'Insira sua senha',
                      labelText: "Senha",
                      icon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(passVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          passVisible = !passVisible;
                        },
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: efetuarLogin, child: Text("Submit"))
              ],
            ),
          ),
        ));
  }
}
