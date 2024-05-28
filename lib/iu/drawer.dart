import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Takeo"),
              accountEmail: Text("teste@email.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("Teste"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Meus pedidos"),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Voltar"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Image.network(
                    'https://i.pinimg.com/originals/2d/02/f1/2d02f1b440163529c321599a51cf4ef6.gif')),
            Center(
              child: Image.network(
                  'https://i.pinimg.com/originals/af/81/03/af81036caf478573412707f597a9594e.gif'),
            ),
            Center(
                child: Image.network(
                    'https://i1183.photobucket.com/albums/x471/JuLie_Tran/Awesome%20Anime/One%20Piece%20Anime/ChoppermanVI.gif')),
            Center(
                child: Image.network(
                    'https://i1183.photobucket.com/albums/x471/JuLie_Tran/Awesome%20Anime/One%20Piece%20Anime/ChoppermanVI.gif')),
            Center(
                child: Image.network(
                    'https://i1183.photobucket.com/albums/x471/JuLie_Tran/Awesome%20Anime/One%20Piece%20Anime/ChoppermanVI.gif')),
            Center(
                child: Image.network(
                    'https://i1183.photobucket.com/albums/x471/JuLie_Tran/Awesome%20Anime/One%20Piece%20Anime/ChoppermanVI.gif')),
          ],
        ),
      ),
    );
  }
}

// class AppDrawer extends StatefulWidget {
//   const AppDrawer({Key? key}) : super(key: key);

//   @override
//   _AppDrawerState createState() => _AppDrawerState();
// }

// class _AppDrawerState extends State<AppDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const UserAccountsDrawerHeader(
//               accountName: Text("Francisco"),
//               accountEmail: Text("email@email.com"),
//               currentAccountPicture: CircleAvatar(
//                 child: Text("SZ"),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: const Text("Minha conta"),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.shopping_basket),
//               title: const Text("Meus Pedidos"),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
