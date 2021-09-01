import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constantes.dart';
import 'area_info_text.dart';
import 'minha_info.dart';
// import 'package:portifolio/constantes.dart';
// import 'area_info_text.dart';
// import 'coding.dart';
// import 'conhecimentos.dart';
// import 'hardskills.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyInfo(),
      Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(children: [
            AreaInfoText(
              title: 'Onde moro:',
              text: 'São Paulo, SP, Brasil',
            ),
            AreaInfoText(
              title: 'idade:',
              text: '33',
            ),
            // HardSkills(),
            SizedBox(height: defaultPadding),
            // Coding(),
            // Conhecimentos(),
            Divider(),
            SizedBox(height: defaultPadding / 2),
            TextButton(
              onPressed: () {},
              child: FittedBox(
                child: Row(children: [
                  Text(
                    'Download CV',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color),
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  SvgPicture.asset('assets/icons/download.svg')
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: defaultPadding),
              color: Color(0xff24242e),
              child: Row(children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/github.svg'),
                ),
                Spacer(),
              ]),
            ),
          ]),
        ),
      ),
    ]);
  }
}
