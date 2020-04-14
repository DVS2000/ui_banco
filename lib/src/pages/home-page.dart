import 'package:flutter/material.dart';
import 'package:ui_banco/src/alerts/alert-profile.dart';
import 'package:ui_banco/src/pages/transacooes-page.dart';
import 'package:ui_banco/src/utils/consts.dart';
import 'package:ui_banco/src/utils/shared_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _index = 0;
  bool status = false;
  List<Transacoes> trancoes = trancoes1;

  onChanged(int index) {
    setState(() {
      _index = index;
      status = !status;
      trancoes = status ? trancoes2 : trancoes1;
    });
  }

  @override
  void initState() {
    _pageController = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 26,
            ),
            /**
             * HEADER
             */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Meu Kumbu",
                  style: TextStyle(
                      color: Colors.black, fontFamily: FONT_2, fontSize: 20),
                ),
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => AlertProfile(),
                      backgroundColor: Colors.transparent),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        color: status
                            ? COLOR_BAI.withOpacity(.2)
                            : COLOR_CARD.withOpacity(.1),
                        shape: BoxShape.circle),
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

            /**
             * BODY
             */

            /**
             * CARD MULTICAIXA
             */
            Container(
              height: size.height / 2.75,
              child: PageView(
                controller: _pageController,
                onPageChanged: onChanged,
                children: <Widget>[
                  SharedWidget.cardMulticaixa(size: size),
                  SharedWidget.cardMulticaixaBai(size: size),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            /* TRANSAÇÕES HEADER */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Transações",
                  style: TextStyle(fontFamily: FONT_2),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TransacoesPage())
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 18,
                  ),
                )
              ],
            ),

            /**
             * TRANSAÇÕES BODY
             */
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: trancoes
                  .map((transacao) => SharedWidget.itemTransacao(
                      size: size, transacao: transacao, status: status))
                  .toList(),
            ))
          ],
        ),
      ),
    );
  }
}
