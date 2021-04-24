import 'package:flutter/material.dart';
import 'package:so_vendas/ui/pages/client/payment_page.dart';

class RegisterProduct extends StatefulWidget {
  @override
  _RegisterProductState createState() => _RegisterProductState();
}

class _RegisterProductState extends State<RegisterProduct> {

  final _form = GlobalKey<FormState>();

  //******************************* WIDGET ROOT ***************************** */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      //resizeToAvoidBottomPadding: false,
      body: _inputText(),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
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
            "Organize aqui os seus produtos",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),
          Text(
            "Produto",
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
    return SingleChildScrollView(
      child: Column(
        children: [

          //::::::::::::::::::::::::: TEXT APPBAR ::::::::::::::::::::::::::::::
          _textAppbar(),

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.17,
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child:
            ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int position) {
                  //var name = names[position];
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Nome da produto',
                            labelStyle: TextStyle(
                                fontFamily: 'Poor Richard',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
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
                            labelText: 'Preço',
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
                            labelText: 'Fornecedor',
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
                            labelText: 'Tamanho',
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
                            labelText: 'Peso',
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
                            labelText: "Qualidade",
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
                            labelText: "Origem",
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
                            labelText: "Sabor",
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
                            labelText: "Embalagem",
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
                            labelText: "Cor",
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
                            labelText: "Codigo de barra",
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
                            labelText: "Quantidade",
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
                            labelText: "Outras descrições",
                            labelStyle: TextStyle(
                                fontFamily: 'Poor Richard',
                                fontWeight: FontWeight.normal,
                                fontSize: 22
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Row(
                          children: [

                            Text(
                              "Carregar foto ",
                              style: TextStyle(
                                  fontFamily: 'Poor Richard',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),

                            Icon(
                              Icons.upload_file,
                              size: 30,
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      _buttonLogin(),

                      SizedBox(height: 80,),
                    ],
                  );
                }),
          ),
        ],
      ),
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
                builder: (BuildContext context) => PaymentPage(),
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
              "Criar",
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
                fontWeight: FontWeight.normal,
                fontSize: 24
            ),
          ),
          Text(
            "Cadastre-se",
            style: TextStyle(
                color: Colors.red,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.normal,
                fontSize: 24
            ),
          ),
        ],
      ),
    );
  }
}
