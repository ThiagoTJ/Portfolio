import 'package:flutter/material.dart';


class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xff242430),
        child: Column(
          children: [
            Spacer(flex:2),
            CircleAvatar(
              radius: 80,
              backgroundImage:
                  AssetImage('assets/images/tj02.jpg'),
            ),
            Spacer(),
            Text(
              'Thiago Gonçalves de Jesus',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Desenvolvedor Front-End Mobile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
                fontSize: 18,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}