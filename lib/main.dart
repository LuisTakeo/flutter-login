import 'package:applogin/iu/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var login = TextEditingController();
  var senha = TextEditingController();
  bool passVisible = false;

  void logar() {
    if (login.text == "email@email.com" && senha.text == "1234") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AppDrawer()));
    } else {
      setState(() {
        login.text = "";
        senha.text = "";
        _showToast(context);
      });
    }
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      const SnackBar(
        content: const Text('E-mail ou senha inválidos.'),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      passVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  controller: login,
                  decoration: const InputDecoration(
                      hintText: 'Entre com seu e-mail',
                      labelText: "Email",
                      icon: Icon(Icons.person)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: senha,
                  obscureText: passVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: 'Insira sua senha',
                      labelText: "Senha",
                      icon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(passVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            passVisible = !passVisible;
                          });
                        },
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: logar, child: Text("Submit"))
              ],
            ),
          ),
        ));
  }
}
