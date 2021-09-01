import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio2/constantes.dart';

class Conhecimentos extends StatelessWidget {
  const Conhecimentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            'Conhecimentos',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        ConhecimentoText(text: 'Flutter, Dart'),
        ConhecimentoText(text: 'React-Native'),
        ConhecimentoText(text: 'Bootstrap'),
        ConhecimentoText(text: 'HTML / CSS / JS'),
        ConhecimentoText(text: 'Conhecimento em Git & Github'),
        ConhecimentoText(text: 'Firebase'),
      ]),
    );
  }
}

class ConhecimentoText extends StatelessWidget {
  const ConhecimentoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(children: [
        SvgPicture.asset('assets/icons/check.svg'),
        SizedBox(width: defaultPadding / 2),
        Text(text, style: TextStyle(fontSize: 18),),
      ]),
    );
  }
}
