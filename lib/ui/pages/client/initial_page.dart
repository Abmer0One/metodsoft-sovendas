import 'package:flutter/material.dart';
import 'package:so_vendas/components/component_color.dart';

import 'product_page.dart';


class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  //*************************** WIDGET ROOT ********************************* */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ComponentColor.whiteColor,
      body: Center(
        child: Column(
          children: [

            //:::::::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::
            SizedBox(height: MediaQuery.of(context).size.height / 6,),

            //:::::::::::::::::::::::::::::: IMAGE CENTER ::::::::::::::::::::::
            _centerImage(),

            //:::::::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::
            SizedBox(height: 10,),

            //::::::::::::::::::::::::::::::: TEXT :::::::::::::::::::::::::::::
            _textNameApp(),

            //:::::::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::
            SizedBox(height: MediaQuery.of(context).size.height / 8,),

            //:::::::::::::::::::::::::::: ICON NEXT TELA ::::::::::::::::::::::

           InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(),
                    )
                );
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      style: BorderStyle.solid,
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.red,
                ),
              ),
            ),

            //:::::::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::
            SizedBox(height: MediaQuery.of(context).size.height / 12,),

            //:::::::::::::::::::::::::::::: TEXT ::::::::::::::::::::::::::::::
            Text(
              "Produzido pela MetodSoft",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal
              ),
            ),
          ],
        ),
      ),
      //bottomSheet: Center(child: Text("Produzido pela MetodSoft")),
    );
  }

  //****************************** CENTER IMAGE ***************************** */
  _centerImage(){
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width /2,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
            image: AssetImage("assets/image/logoSoVendas.jpg"),
            fit: BoxFit.fill
        ),
      ),
    );
  }

  //********************************* TEXT NAME APP ************************* */
  _textNameApp(){
    return Column(
      children: [

        //::::::::::::::::::::::::::::: NAME APP ::::::::::::::::::::::::::::::/
        Text(
          "So Vendas",
          style: TextStyle(
              fontSize: 48,
              fontFamily: 'Poor Richard',
              fontWeight: FontWeight.bold
          ),
        ),

        //::::::::::::::::::::::::::::::::: SPACE ::::::::::::::::::::::::::::::
        SizedBox(height: 5,),

        //:::::::::::::::::::::::::::: DESCRIPTION APP :::::::::::::::::::::::::
        Text(
          "A sua nova loja",
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poor Richard',
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }

}
