import 'package:flutter/material.dart';
import 'file:///C:/Users/AB%20M/AndroidStudioProjects/so_vendas/lib/ui/pages/client/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
            height: MediaQuery.of(context).size.height / 1.19,
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

                _buttonLogin(),

                _iconLink(),

                _textAnswer(),
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
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text(
              "Seja Bem Vindo",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),
            ),
            Text(
              "Conecte-se",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.bold,
                  fontSize: 44
              ),
            ),
          ],
        ),
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
          padding: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'E-Mail',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            ),
          ),
        ),


        Container(
          padding: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width - 50,
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Senha',
              labelStyle: TextStyle(
                  fontFamily: 'Poor Richard',
                  fontWeight: FontWeight.bold,
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
      height: MediaQuery.of(context).size.height / 6,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Text(
            "Esqueceu a palavra passe?",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.normal,
                fontSize: 24
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => RegisterPage(),
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
                  "Conecte-se",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poor Richard',
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //******************************* ICON LINK ******************************* */
  _iconLink(){
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 8,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          //::::::::::::::::::::: OR :::::::::::::::::::::::
          Text(
            "Ou",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              //::::::::::::::::::::: FACEBOOK :::::::::::::::::::::::
              Text(
                "F",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poor Richard',
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),

              //:::::::::::::::::::::: GOOGLE ::::::::::::::::::
              Text(
                "G",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poor Richard',
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //******************************* TEXT ANSWER ***************************** */
  _textAnswer(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Não tem uma conta? ",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),
          Text(
            "Cadastre-se",
            style: TextStyle(
                color: Colors.red,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),
        ],
      ),
    );
  }
}
