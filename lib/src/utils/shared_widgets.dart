import 'package:flutter/material.dart';
import 'package:ui_banco/src/utils/consts.dart';

class SharedWidget {
  SharedWidget(_);

  static Widget cardMulticaixa({Size size}) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: size.width,
          height: size.height / 3,
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
          margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
          decoration: BoxDecoration(
              color: COLOR_CARD, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Saldo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontFamily: FONT_2),
                      ),
                      Text(
                        "10.000,00 Kz",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: FONT_2),
                      )
                    ],
                  ),
                  Image.asset(
                    LOGO,
                    height: 50,
                  )
                ],
              ),
              Image.asset(
                CHIP,
                fit: BoxFit.cover,
                height: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: FONT_4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: FONT_4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: FONT_4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "1234",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: FONT_4),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Proprietário",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                            fontFamily: FONT_2),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dorivaldo dos Santos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: FONT_2),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Validade:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                            fontFamily: FONT_2),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "12/20",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: FONT_2),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );

  static Widget cardMulticaixaBai({Size size}) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: size.width,
          height: size.height / 3,
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
          margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 5,
                    offset: Offset(0.0, 3.0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Saldo",
                        style: TextStyle(
                            color: COLOR_BAI,
                            fontSize: 13.0,
                            fontFamily: FONT_2),
                      ),
                      Text(
                        "500.000,00 Kz",
                        style: TextStyle(
                            color: COLOR_BAI,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: FONT_2),
                      )
                    ],
                  ),
                  Image.asset(
                    BAI,
                    height: 30,
                  )
                ],
              ),
              Image.asset(
                CHIP,
                fit: BoxFit.cover,
                height: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                          color: COLOR_BAI, fontSize: 35.0, fontFamily: FONT_4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                          color: COLOR_BAI, fontSize: 35.0, fontFamily: FONT_4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "****",
                      style: TextStyle(
                          color: COLOR_BAI, fontSize: 35.0, fontFamily: FONT_4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "0203",
                      style: TextStyle(
                          color: COLOR_BAI, fontSize: 20.0, fontFamily: FONT_4),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Proprietário",
                        style: TextStyle(
                            color: COLOR_BAI,
                            fontSize: 11.0,
                            fontFamily: FONT_2),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dorivaldo dos Santos",
                        style: TextStyle(
                            color: COLOR_BAI,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: FONT_2),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Validade:",
                        style: TextStyle(
                            color: COLOR_BAI,
                            fontSize: 11.0,
                            fontFamily: FONT_2),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "03/24",
                        style: TextStyle(
                            color: COLOR_BAI,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: FONT_2),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );

  static Widget itemTransacao(
          {Size size, Transacoes transacao, bool status = false}) =>
      Container(
        height: 70,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey.withOpacity(.5),
                  style: BorderStyle.solid,
                  width: .25)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: status
                      ? COLOR_BAI.withOpacity(.2)
                      : COLOR_CARD.withOpacity(.1),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(transacao.img ?? KUBINGA),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  transacao.entidade ?? "",
                  style: TextStyle(
                      fontFamily: FONT_2, fontWeight: FontWeight.bold),
                ),
                Text(
                  transacao.tipo ?? "",
                  style: TextStyle(fontFamily: FONT_2),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                transacao.valor ?? "",
                style: TextStyle(fontFamily: FONT_2, fontSize: 10.0),
              ),
            )
          ],
        ),
      );

  static Widget cardCredDeb({Size size}) => Container(
        height: size.height / 5,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 5,
                  offset: Offset(0.0, 3.0))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Débito",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: FONT_2,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Crédito",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: FONT_2,
                    //fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_downward,
                  color: Colors.green,
                  size: 20,
                ),
                Text(
                  "50.00, 00 Kz",
                  style: TextStyle(fontFamily: FONT_2, fontSize: 13),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.red,
                  size: 20,
                ),
                Text(
                  "75.00, 00 Kz",
                  style: TextStyle(fontFamily: FONT_2, fontSize: 13),
                )
              ],
            )
          ],
        ),
      );

  static Widget linePercentagem(Percentagem day) => Column(
    mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: day.size,
            width: 10,
            decoration: BoxDecoration(
                color: day.color,
                borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(height: 5.0,),
          Text(
            day.dayOfWeek ?? "",
            style: TextStyle(fontFamily: FONT_2, fontSize: 12),
          )
        ],
      );
}
