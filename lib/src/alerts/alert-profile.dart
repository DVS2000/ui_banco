import 'package:flutter/material.dart';
import 'package:ui_banco/src/utils/consts.dart';

class AlertProfile extends StatefulWidget {
  @override
  _AlertProfileState createState() => _AlertProfileState();
}

class _AlertProfileState extends State<AlertProfile> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                    color: COLOR_BAI.withOpacity(.8), shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: AssetImage(ME),
                  radius: 27,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dorivaldo dos Santos",
                    style: TextStyle(fontFamily: FONT_2),
                  ),
                  Text(
                    "dorivaldodossantos2000@gmail.com",
                    style: TextStyle(fontFamily: FONT_2, fontSize: 13.0),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Notificação",
            style: TextStyle(fontFamily: FONT_2, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.notifications,
                color: COLOR_BAI,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Notificação da App",
                style: TextStyle(
                  fontFamily: FONT_2,
                ),
              ),
              Spacer(),
              Switch(
                value: status,
                onChanged: (v) {
                  setState(() {
                    status = v;
                  });
                },
                activeColor: COLOR_BAI,
              )
            ],
          ),
          Divider(),
          Text(
            "Segurança",
            style: TextStyle(fontFamily: FONT_2, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.lock_outline,
                color: COLOR_BAI,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Alterar senha",
                style: TextStyle(
                  fontFamily: FONT_2,
                ),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: COLOR_BAI,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.fingerprint,
                color: COLOR_BAI,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Impressão Digital",
                style: TextStyle(
                  fontFamily: FONT_2,
                ),
              ),
              Spacer(),
              Switch(
                value: status,
                onChanged: (v) {
                  setState(() {
                    status = v;
                  });
                },
                activeColor: COLOR_BAI,
              )
            ],
          ),
          Divider(),
          Text(
            "Suporte",
            style: TextStyle(fontFamily: FONT_2, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.help,
                color: COLOR_BAI,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Ajuda",
                style: TextStyle(
                  fontFamily: FONT_2,
                ),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: COLOR_BAI,
              )
            ],
          ),
        ],
      ),
    );
  }
}
