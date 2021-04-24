import 'package:flutter/material.dart';
import 'file:///C:/Users/AB%20M/AndroidStudioProjects/so_vendas/lib/ui/pages/client/login_page.dart';
import 'file:///C:/Users/AB%20M/AndroidStudioProjects/so_vendas/lib/ui/pages/client/product_page.dart';

class ViewProductPage extends StatefulWidget {
  @override
  _ViewProductPageState createState() => _ViewProductPageState();
}

class _ViewProductPageState extends State<ViewProductPage> {

  //*************************** WIDGET ROOT ********************************* */
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          //:::::::::::::::::::::::::::: APP BAR :::::::::::::::::::::::::::::::
          _appBar(),

          //::::::::::::::::::::::::: IMAGE PRODUCT ::::::::::::::::::::::::::::
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.67,
            //margin: EdgeInsets.only(right: 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/logoSoVendas.jpg"),
                  fit: BoxFit.fill
              )
            ),
          ),

          //::::::::::::::::::::::::: DETAILS PRODUCT ::::::::::::::::
          _detailsProduct(),

          //::::::::::::::::::::::::: BUTTON SHOPPING ::::::::::::::::::::::::::

        ],
      ),
    );
  }

  //******************************** APP BAR ******************************** */
  _appBar(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //---------------------- ICON BACK -------------------------------
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
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.arrow_back,
                size: 40,
                color: Colors.red,
              ),
            ),
          ),

          //---------------------- ICON MENU -------------------------------
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              size: 40,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  //**************************** DETAILS PRODUCT **************************** */
  _detailsProduct(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.9,
      padding: EdgeInsets.only(left: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //::::::::::::::::::::::::::: NAME PRODUCT :::::::::::::::::::::::::::
          Text(
            "Tecno X9",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poor Richard',
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),

          //:::::::::::::::::::::::::: ADD PRODUCT & PRICE :::::::::::::::::::::
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _addProduct(),
              _priceCarShopping("120.000Kz")
            ],
          ),

          //:::::::::::::::::::::::: DETAILS :::::::::::::::::::::::::::::::::::
          _itemDetails("itemType", "itemDescription"),
          _itemDetails("itemType", "itemDescription"),
          _itemDetails("itemType", "itemDescription"),
          _itemDetails("itemType", "itemDescription"),

          //::::::::::::::::::::::::: SPACE ::::::::::::::::::::::::::::::::::::
          SizedBox(height: MediaQuery.of(context).size.height / 12,),

          //::::::::::::::::::::::::: BOTTOM ROW :::::::::::::::::::::::::::::::
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 12,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    //::::::::::::::::::::: LOVE PRODUCT :::::::::::::::::::::::
                    Icon(
                      Icons.clean_hands_outlined,
                      size: 20,
                      color: Colors.white,
                    ),

                    //:::::::::::::::::::::: ADD CAR SHOPPING ::::::::::::::::::
                    Icon(
                      Icons.add_shopping_cart_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),


              //:::::::::::::::::::::: SHOPPING PRODUCT ::::::::::::::::::::::::
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      )
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 16,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Comprar Agora",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poor Richard',
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                      ),
                    ),
                  ),
                ),
              )

            ],
          )
        ],
      ),
    );
  }

  //****************************** ITEM DETAILS ***************************** */
  _itemDetails(String itemType, String itemDescription){
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //::::::::::::::::::::::::::::: DESCRIPTION ::::::::::::::::::::::::::
          Text(
            itemType,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),

          //::::::::::::::::::::::::::::::: PRICE ::::::::::::::::::::::::::::::::
          Text(
            itemDescription,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),
        ],
      ),
    );
  }

  //***************************** ADD PRODUCT ******************************* */
  _addProduct(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //--------------------------- ICON ADD -------------------------------
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => null,
                  )
              );
            },
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ),

          //::::::::::::::::::::::::::: NUMBER :::::::::::::::::::::::::::::::::
          Text(
            "1",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),

          //::::::::::::::::::::::::::::::::: SPACE ::::::::::::::::::::::::::::::
          SizedBox(width: 10,),

          //------------------------- ICON MINUS -------------------------------
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => null,
                  )
              );
            },
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.minimize_outlined,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  //*************************** PRICE CAR SHOPPING ************************** */
  _priceCarShopping(String descriptionCarShopping){
    return Row(
      children: [
        //::::::::::::::::::::::::::::::: DESCRIPTION ::::::::::::::::::::::::::
        Text(
          descriptionCarShopping,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poor Richard',
              fontWeight: FontWeight.bold,
              fontSize: 14
          ),
        ),
      ],
    );
  }
}
