import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newenglish/domain/entities/local.dart';
import 'package:newenglish/presentation/controllers/home_ctrl.dart';
import 'package:newenglish/presentation/states/home_state.dart';

class HomePage extends GetWidget<HomeCtrl> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90,
          title: Text("New English", style: TextStyle(fontSize: 25)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 113, 125),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            )
          ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("user@mail.com"),
              accountName: Text("João Manoel"),
              currentAccountPicture: CircleAvatar(
                child: Text("JM"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              title: Text("Conta"),
              subtitle: Text("Opções da conta"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 30,
              ),
              title: Text("Notificações"),
              subtitle: Text("Ofertas e Notificações"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.star,
                size: 30,
              ),
              title: Text("Salvos"),
              subtitle: Text("Frases Salvas"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 30,
              ),
              title: Text("Favoritos"),
              subtitle: Text("Frases favoritadas"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              title: Text("Novas Frases"),
              subtitle: Text("Sugestão de Frases"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                size: 40,
              ),
              title: Text("Sair"),
              subtitle: Text("Fazer Log off"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Icon(Icons.person, size: 150),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Text(
            "Recommended",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              Icon(
                Icons.coffee,
                size: 100,
              ),
              Text(
                "Coffee Shop",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Obx((() {
            if (controller.state is HomeLoadedState) {
              final state = controller.state as HomeLoadedState;
              return Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  children: _buildGridView(state.locais),
                ),
              );
            }

            if (controller.state is HomeFailureState) {
              return Text('Erro');
            }

            if (controller.state is HomeLoadingState) {
              return const CircularProgressIndicator();
            }

            controller.search();
            return const CircularProgressIndicator();
          }))
        ],
      ),
    );
  }

  List<Widget> _buildGridView(List<Local> locais) {
    List<Widget> widgets = [];
    for (Local l in locais) {
      widgets.add(Container(
        child: Icon(l.icon, size: 100),
        color: Color.fromARGB(255, 204, 228, 165),
      ));
    }
    return widgets;
  }
}
