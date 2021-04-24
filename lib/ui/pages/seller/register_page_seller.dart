import 'package:flutter/material.dart';
import 'package:so_vendas/ui/pages/client/payment_page.dart';
import 'package:so_vendas/ui/pages/seller/register_shopping.dart';

class RegisterPageSeller extends StatefulWidget {
  @override
  _RegisterPageSellerState createState() => _RegisterPageSellerState();
}

class _RegisterPageSellerState extends State<RegisterPageSeller> {

  //******************************* WIDGET ROOT ***************************** */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [

          //::::::::::::::::::::::::: TEXT APPBAR ::::::::::::::::::::::::::::::
          _textAppbar(),

          //::::::::::::::::::::::::: BODY CONTAINER :::::::::::::::::::::::::::
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.17,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                _centerImage(),

                _inputText(),

                SizedBox(height: 20,),

                _buttonLogin(),


              ],
            ),
          ),
        ],
      ),
    );
  }

  //******************************* TEXT APPBAR ***************************** */
  _textAppbar(){
    return Container(
      padding: EdgeInsets.only(top: 25, left: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Text(
            "Seja um Vendedor nato",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),
          Text(
            "Cadastre-se",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 44
            ),
          ),
        ],
      ),
    );
  }

  //****************************** CENTER IMAGE ***************************** */
  _centerImage(){
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
            image: AssetImage("assets/image/logoSoVendas.jpg"),
            fit: BoxFit.fill
        ),
      ),
    );
  }

  //******************************* INPUT TEXT ****************************** */
  _inputText(){
    return Column(
      children: [

        Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Nome',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal,
                  fontSize: 22
              ),
            ),
          ),
        ),


        Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Sobrenome',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal,
                  fontSize: 22
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Telefone',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal,
                  fontSize: 22
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'E-Mail',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal,
                  fontSize: 22
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Senha',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal,
                  fontSize: 22
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'NIF',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.normal,
                  fontSize: 22
              ),
            ),
          ),
        ),
      ],
    );
  }

  //******************************* BUTTON LOGIN **************************** */
  _buttonLogin(){
    return Container(
      height: MediaQuery.of(context).size.height / 14,
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => RegisterShopping(),
              )
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 16,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              "Cadastre-se",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.bold,
                  fontSize: 28
              ),
            ),
          ),
        ),
      ),
    );
  }

}
