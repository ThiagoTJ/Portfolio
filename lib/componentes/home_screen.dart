import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portifolio2/constantes.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info.dart';
import 'conhecimentos.dart';
import 'minha_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future<void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o $url');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
        MyInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(children: [
              AreaInfo(
                title: 'Onde moro:',
                text: 'São Paulo, SP, Brasil',
              ),
              AreaInfo(
                title: 'Idade:',
                text: '33 anos',
              ),
               Container(
                margin: EdgeInsets.only(top: defaultPadding),
                color: Color(0xff24242e),
                child: Row(children: [
                  Spacer(),
                  IconButton(
                    onPressed: () => _launchLink('https://www.linkedin.com/in/thiagotj/'),
                    icon: SvgPicture.asset('assets/icons/linkedin.svg', height: 30,),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () => _launchLink('https://github.com/ThiagoTJ'),
                    icon: SvgPicture.asset('assets/icons/github.svg', height: 30,),
                  ),
                  Spacer(),
                ]),
              ),
              Conhecimentos(),

            ]),
          ),
        ),
      ]),
    );
  }
}
