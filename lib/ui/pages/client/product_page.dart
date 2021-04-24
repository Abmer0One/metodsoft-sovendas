import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:so_vendas/models/model_product.dart';
import 'package:provider/provider.dart';
import 'file:///C:/Users/AB%20M/AndroidStudioProjects/so_vendas/lib/ui/pages/client/view_product_page.dart';

import 'package:sticky_headers/sticky_headers.dart';
import 'file:///C:/Users/AB%20M/AndroidStudioProjects/so_vendas/lib/ui/pages/client/teste.dart';


class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  double textSize = 40;
  double textSizeDescription1 = 24;
  double textSizeDescription2 = 20;

  String selectedTypeOfProduct;

  double _initialSheetChildSize = 0.1;
  double _dragScrollSheetExtent = 0;

  double _widgetHeight = 0;
  double _fabPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        // render the floating button on widget
        _fabPosition = _initialSheetChildSize * context.size.height;
      });
    });
  }



  //***************************** WIDGET ROOT ******************************* */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Column(
            children: [
              //:::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::::
              SizedBox(height: MediaQuery.of(context).size.height / 18,),

              //::::::::::::::::::::::::: ROW OF MENU ::::::::::::::::::::::::::
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //--------------------- FILTERS PRODUCTS -------------------------
                  dropDownArea(context),

                  //---------------------- ICON MENU -------------------------------
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                  ),
                ],
              ),

              //::::::::::::::::::::::::: LIST OF CARDS PRODUCTS :::::::::::::::
              _fullListOfCard(),
            ],
          ),

          //:::::::::::::::::::::::::::: CAR SHOPPING ::::::::::::::::::::::::::
          _carShopping(),
        ],
      ),
    );
  }

  //************************* FILTERS TYPE OF PRODUCT *********************** */
  Widget dropDownArea(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 16,
      decoration: ShapeDecoration(
        color: Colors.red,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.red,width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            value: selectedTypeOfProduct,
            hint: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text("Telefones",
                style: TextStyle(
                  color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'Poor Richard',
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            items: ["Telefones", "Computadores", "Impressoras", "Monitores", "Teclados"]
                .map((label) => DropdownMenuItem(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(label,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Poor Richard',
                      fontWeight: FontWeight.normal
                  ),
                ),
              ),
              value: label,
            )
            ).toList(),
            onChanged: (valueArea) {
              setState(() => selectedTypeOfProduct = valueArea);
            },
          )
      ),
    );
  }

  //**************************** FULL LIST OF CARD ************************** */
  _fullListOfCard(){
    return Column(
      children: <Widget>[
        Consumer<ModelsMoreListen>(builder: (context, musics, child) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10.0),
              itemCount: musics.moreListen.length,
              itemBuilder: (ctx, i){
                return InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ViewProductPage(),
                        )
                    );
                },
                child: _descriptionProduct(


                  musics.moreListen[i].nameSinger,
                  musics.moreListen[i].songSinger,
                  musics.moreListen[i].imageSinger,
                ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
            ),
          );
        }),

      ],
    );
  }

  //******************************* DESCRIPTION MUSIC *********************** */
  _descriptionProduct(String description1, String description2, String img){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          //:::::::::::::::::::::::::::: IMAGE :::::::::::::::::::::::::::::::::::
          Container(
            width: 200,
            height: 250,
            //margin: EdgeInsets.only(right: 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill
                )
            ),
          ),

          //::::::::::::::::::::::: DESCRIPTION 1 ::::::::::::::::::::::::::::::::
          Text(
            description1,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: textSizeDescription1
            ),
          ),

          //::::::::::::::::::::::::::::::::: SPACE ::::::::::::::::::::::::::::::
          SizedBox(height: 5,),

          //::::::::::::::::::::::::::::::: DESCRIPTION 2 ::::::::::::::::::::::::
          Text(
            description2,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.normal,
                fontSize: textSizeDescription2
            ),
          ),
        ],
      ),
    );
  }

  //******************************** CAR SHOPPING *************************** */
  _carShopping(){
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (DraggableScrollableNotification notification) {
        setState(() {
          _widgetHeight = context.size.height;
          _dragScrollSheetExtent = notification.extent;

          // Calculate FAB position based on parent widget height and DraggableScrollable position
          _fabPosition = _dragScrollSheetExtent * _widgetHeight;
        });
        return;
      },
      child: DraggableScrollableSheet(
        initialChildSize: _initialSheetChildSize,
        maxChildSize: 0.8,
        minChildSize: 0.1,
        builder: (context, scrollController) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.red,
          ),
          child: new ListView.builder(
            controller: scrollController,
            itemCount: 1,
            itemBuilder: (context, index) {
              return new StickyHeader(

                //::::::::::::::::::::::::: TITLE CAR SHOPPING :::::::::::::::::
                header: new Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.red,
                  ),
                  padding: new EdgeInsets.all(10),
                  //alignment: Alignment.centerLeft,
                  child: _titleCarShopping(
                      Icons.shopping_cart_rounded,
                      "Carrinho"
                  ),
                ),

                content: Column(
                  children: [

                    Consumer<ModelsMoreListen>(builder: (context, musics, child) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: GridView.builder(
                          //controller: scrollController,
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.all(10.0),
                          itemCount: musics.moreListen.length,
                          itemBuilder: (ctx, i){
                            return
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  //::::::::::::::::: ITEM SHOPPING ::::::::::::::::::
                                  _itemCarShopping(
                                      musics.moreListen[i].imageSinger,
                                      musics.moreListen[i].nameSinger
                                  ),


                                  Row(
                                    children: [
                                      //::::::::::::::::: PRICE ITEM SHOPPING ::::::::::::
                                      _priceCarShopping(
                                          "120.000Kz"
                                      ),

                                      //::::::::::::: ICON DELETE ITEM :::::::::::::
                                      Icon(Icons.delete,size: 30,)
                                    ],
                                  ),


                                ],
                              );
                          },
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 8 / 1,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                        ),
                      );
                    }),

                    //::::::::::::::::::::: DELIVERY SHOPPING ::::::::::::::::::
                    _deliveryShopping(Icons.delivery_dining, "Entrega", "200.000Kz"),

                    SizedBox(height: MediaQuery.of(context).size.width / 8,),
                    //::::::::::::::::::::::::: TOTAL ::::::::::::::::::::::::::
                    _totalShopping("Total", "200.000Kz"),

                    SizedBox(height: MediaQuery.of(context).size.width / 7,),

                    //:::::::::::::::::::::::: FOOTER ::::::::::::::::::::::::::
                    _buttonShopping(),

                  ],
                ),
              );
            },
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }

  //*************************** TITLE CAR SHOPPING ************************** */
  _titleCarShopping(IconData iconCarShopping, String descriptionCarShopping){
    return Container(
      padding: EdgeInsets.all(0),
      child: Row(

        children: [

          //::::::::::::::::::::::::::::::: IMAGE ::::::::::::::::::::::::::::::
          Icon(
            iconCarShopping,
            //Icons.shopping_cart_rounded,
            size: 40,
          ),

          //:::::::::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::
          SizedBox(width: 10,),

          //::::::::::::::::::::::::::::::: DESCRIPTION ::::::::::::::::::::::::
          Text(
            descriptionCarShopping,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 34
            ),
          ),
        ],
      ),
    );
  }

  //**************************** ITEM CAR SHOPPING ************************** */
  _itemCarShopping(String imgItemCarShopping, String descriptionItemCarShopping){
    return Row(

      children: [

        //::::::::::::::::::::::::::::::: IMAGE ::::::::::::::::::::::::::::::::
        Container(
          width: 50,
          height: 50,
          //margin: EdgeInsets.only(right: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(imgItemCarShopping),
                  fit: BoxFit.fill
              )
          ),
        ),

        SizedBox(width: 10,),

        //::::::::::::::::::::::::::::::: DESCRIPTION ::::::::::::::::::::::::::
        Text(
          descriptionItemCarShopping,
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

  //**************************** DELIVERY SHOPPING ************************** */
  _deliveryShopping(IconData iconDeliveryShopping, String descriptionDeliveryShopping, String priceDeliveryShopping){
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //::::::::::::::::::::::::::::::: IMAGE ::::::::::::::::::::::::::::::
              Icon(
                iconDeliveryShopping,
                //Icons.delivery_dining,
                size: 30,
              ),

              //:::::::::::::::::::::::::::::::: SPACE :::::::::::::::::::::::::::::
              SizedBox(width: 10,),

              //::::::::::::::::::::::::::::::: DESCRIPTION ::::::::::::::::::::::::
              Text(
                descriptionDeliveryShopping,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poor Richard',
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),
              ),
            ],
          ),

          //::::::::::::::::::::::::::::::: PRICE ::::::::::::::::::::::::::::::::
          Text(
            priceDeliveryShopping,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 14
            ),
          ),
        ],
      ),
    );
  }

  //**************************** TOTAL SHOPPING ***************************** */
  _totalShopping(String descriptionDeliveryShopping, String priceDeliveryShopping){
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //::::::::::::::::::::::::::::: DESCRIPTION ::::::::::::::::::::::::::
          Text(
            descriptionDeliveryShopping,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poor Richard',
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),

          //::::::::::::::::::::::::::::::: PRICE ::::::::::::::::::::::::::::::::
          Text(
            priceDeliveryShopping,
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

  //*************************** BUTTON SHOPPING ***************************** */
  _buttonShopping(){
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10),),
        color: Colors.white,
      ),
      padding: new EdgeInsets.all(10),
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
    );
  }

}
