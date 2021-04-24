import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  //**************************** WIDGET ROOT ******************************** */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //::::::::::::::::::::::::::: TEXT APPBAR ::::::::::::::::::::::::::::
          _textAppBar(),

          //::::::::::
          _priceInformation(),

          SizedBox(height: MediaQuery.of(context).size.height / 18,),

          _dataReference(),

          SizedBox(height: MediaQuery.of(context).size.height / 18,),

          _buttonConfirm(),

        ],
      ),

    );
  }

  //******************************** TEXT APPBAR **************************** */
  _textAppBar(){
    return Container(
      padding: EdgeInsets.only(top: 25, left: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          //::::::::::::::::::::::::::::::: ICON BACK ::::::::::::::::::::::::::
          Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
          ),

          //::::::::::::::::::::::::::::::: TEXT :::::::::::::::::::::::::::::::
          Text(
            "O seu pagamento é de: ",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          )
        ],
      ),
    );
  }

  //*************************** PRICE & INFORMATION ************************* */
  _priceInformation(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6,
      padding: EdgeInsets.only(top: 10,bottom: 10),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "120.000Kz ",
            style: TextStyle(
                color: Colors.red,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.normal,
                fontSize: 44
            ),
          ),

          Text(
            "Preencha os campos vazios para o pagamento.",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.normal,
                fontSize: 24
            ),
          ),
        ],
      ),
    );
  }

  //***************************** DATA REFERENCE **************************** */
  _dataReference(){
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 3,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [

          _inputText("Entidade: ", "X X X X X"),
          _inputText("Referência: ", "XXXXXXXXXX"),
          _inputText("Montante: ", "120.000Kz"),

        ],
      ),
    );
  }

  //****************************** INPUT TEXT ******************************* */
  _inputText(String description, String hintDescription){
    return Container(
      child: Row(
        children: [

          //:::::::::::::::::::::::::: DESCRIPTION :::::::::::::::::::::::::::::
          Text(
            description,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),

          //::::::::::::::::::::::::::::: SPACE ::::::::::::::::::::::::::::::::
          SizedBox(width: 10,),

          //::::::::::::::::::::::::::::: INPUT ::::::::::::::::::::::::::::::::
          Container(
            padding: EdgeInsets.only(top: 5),
            width: MediaQuery.of(context).size.width / 3,
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: hintDescription,
                labelStyle: TextStyle(
                    fontFamily: 'Poor Richard',
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //****************************** BUTTON CONFIRM *************************** */
  _buttonConfirm(){
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 16,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          "Confirmar",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poor Richard',
              fontWeight: FontWeight.bold,
              fontSize: 28
          ),
        ),
      ),
    );
  }
}
