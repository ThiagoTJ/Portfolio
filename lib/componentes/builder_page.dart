import 'package:flutter/material.dart';
import 'package:portifolio2/componentes/home_screen.dart';
import 'package:portifolio2/pages/componentes/projetos.dart';
import 'package:portifolio2/pages/projetos_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

// import '../constantes.dart';


class BuilderPage extends StatelessWidget {
  const BuilderPage({Key? key}) : super(key: key);
  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+55-(11)98631-4213',
      text: "Olá",
    );
    await launch('$link');
  }

  @override
  Widget _buildPage(String text, String assets) {
    return Container(
      child: Text(text,
          style: TextStyle(
              fontSize: 24.0, color: Colors.blue, fontFamily: 'SunsetBeach')),
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(assets),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchWhatsApp();
        },
        child: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        backgroundColor: Colors.green.shade800,
      ),
      body: PageView(children: [
        HomeScreen(),
      //   GridView.builder(
      //   shrinkWrap: true,
      //   itemCount: listaProjetos.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 1,
      //     childAspectRatio: 1.3,
      //     crossAxisSpacing: defaultPadding,
      //     mainAxisSpacing: defaultPadding,
      //   ),
      //   itemBuilder: (context, index) => CardsProjetos(
      //     projetos: listaProjetos[index],
      //   ),
      // ),
        CardsProjetos(
          projetos: Projetos(
              title: 'Cinema',
              picture: 'assets/images/cinema.png',
              text: 'Primeiro projeto envolvendo um pouco de CSS'),
        ),
        CardsProjetos(
          projetos: Projetos(
              title: 'Biblioteca',
              picture: 'assets/images/biblioteca2.png',
              text: 'Primeiro projeto em grupo com Alexandre Coutinho, Rodnei, Ng Lai'),
        ),
        CardsProjetos(
          projetos: Projetos(
              title: 'Manual Agricola',
              picture: 'assets/images/manual_agricola.png',
              text: 'Projeto em grupo utilizando Bootstrap para nosso primeiro cliente Adriele. Nossa equipe formada por Ricardo, Izabela, Bruna Leardini e Marcus Vinicius.'),
        ),
        CardsProjetos(
          projetos: Projetos(
              title: 'Moto App',
              picture: 'assets/images/moto_app.jpeg',
              text: 'Um projeto maravilhoso em React-Native.'),
        ),
      ]),
    );
  }
}
