import 'package:flutter/material.dart';
import 'package:ui_banco/src/alerts/alert-profile.dart';
import 'package:ui_banco/src/utils/consts.dart';
import 'package:ui_banco/src/utils/shared_widgets.dart';

class TransacoesPage extends StatefulWidget {
  @override
  _TransacoesPageState createState() => _TransacoesPageState();
}

class _TransacoesPageState extends State<TransacoesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          
          children: <Widget>[
            SizedBox(
              height: 26,
            ),
            /**
               * HEADER
               */
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Transações",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: FONT_2,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => AlertProfile(),
                      backgroundColor: Colors.transparent),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        color: COLOR_BAI.withOpacity(.2), shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(ME),
                      radius: 17,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            SharedWidget.cardCredDeb(size: size),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: everyWeek.map(SharedWidget.linePercentagem).toList(),
              ),
            ),
            Divider(),

            Expanded(
                  child: ListView(
                padding: EdgeInsets.zero,
                children: trancoes1
                    .map((transacao) => SharedWidget.itemTransacao(
                        size: size, transacao: transacao, status: true))
                    .toList(),
              ))
          ],
        ),
      ),
    );
  }
}
