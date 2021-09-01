import 'package:flutter/material.dart';

import '../constantes.dart';
import 'componentes/projetos.dart';

class CardsProjetos extends StatelessWidget {
  const CardsProjetos({
    Key? key,
    required this.projetos,
  }) : super(key: key);

  final Projetos projetos;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          projetos.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: defaultPadding / 2),
        Image.asset(
          projetos.picture!,
          height: 350,
          width: 500,
          fit: BoxFit.fill,
        ),
        Divider(),
        Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                projetos.text!,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
