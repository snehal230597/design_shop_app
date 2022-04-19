import 'package:design_shop_app/models/color_model.dart';
import 'package:design_shop_app/models/sizebox_model.dart';
import 'package:design_shop_app/widget/product_details_column.dart';
import 'package:flutter/material.dart';

class ProductDetailSizeBox extends StatefulWidget {
  const ProductDetailSizeBox({Key? key}) : super(key: key);

  @override
  State<ProductDetailSizeBox> createState() => _ProductDetailSizeBoxState();
}

class _ProductDetailSizeBoxState extends State<ProductDetailSizeBox> {
   int _id = 0;
   int _colorId = 0;
   String _title = "XS";
   String _colorTitle = "Red";
   Color _selectedColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Variant",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                     "Size : $_title" ,
                    //"Size: XS",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: SizeBoxData().sizeBox.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: (){
                          setState(() {
                            _id = SizeBoxData().sizeBox[index].id!;
                            _title = SizeBoxData().sizeBox[index].title!;

                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                            color:(_id == SizeBoxData().sizeBox[index].id!) ? Colors.cyan : Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border:Border.all(color: (_id != SizeBoxData().sizeBox[index].id!) ?  Colors.black12 : Colors.white)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                SizeBoxData().sizeBox[index].title!,
                                style: TextStyle(
                                    color: (_id == SizeBoxData().sizeBox[index].id!) ? Colors.white : Colors.black38,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Color : $_colorTitle",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: _selectedColor),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        childAspectRatio: 5/2.5,
                        crossAxisCount: 5),
                    itemCount: ColorBoxData().colorBox.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: (){
                          setState(() {
                            _colorId = ColorBoxData().colorBox[index].id!;
                            _colorTitle = ColorBoxData().colorBox[index].title!;
                            _selectedColor = ColorBoxData().colorBox[index].color!;
                          },);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                            color: _colorId == ColorBoxData().colorBox[index].id! ? Colors.cyan : Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: _colorId == ColorBoxData().colorBox[index].id! ? Colors.white : Colors.black12)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ColorBoxData().colorBox[index].title!,
                                softWrap: true,
                                style: TextStyle(
                                    color:_colorId == ColorBoxData().colorBox[index].id! ? Colors.white : Colors.black38,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.white,
          width: double.infinity,
        //  height: MediaQuery.of(context).size.height * 0.579,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Review", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("View All", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.cyan),),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 18,),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star_border_outlined, color: Colors.orange, size: 18),
                    SizedBox(width: 10),
                    Text("(45)", style: TextStyle(fontSize: 10, color: Colors.black54),)
                  ],
                ),
                Divider(color: Colors.black26,),
                ProductDetailsColumn(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
