import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> lisImage = [
      "https://www.mytrendyphone.eu/images/Waterproof-Smartwatch-with-Heart-Rate-K12-IP68-Bluetooth-4-Black-10092020-01A-p.jpg",
      "https://rukminim2.flixcart.com/image/416/416/k6mibgw0/smartwatch/c/s/h/t500-orange-silicone-strap-iron-shield-original-imafpfvjuhtghnjf.jpeg",
      "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/12/_108216432.jpg",
      "http://p-ph.ipricegroup.com/uploaded_535638c5d8ba3fdf3f2102cb0e8e6694.jpg",
      "https://assets.mspimages.in/c/tr:w-375,h-330,c-at_max/4457-186-1.jpg",
      "https://m.media-amazon.com/images/I/71QVxMNPW4L._SX679_.jpg"
    ];
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Wishlist",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: Colors.black87,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart, color: Colors.black87)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.black,
                      ),
                      hintText: 'Search Product',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          height: 4 / 5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Container(
            // width: double.infinity,
            child: ListView.builder(
              itemCount: lisImage.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 125,
                                    width: 125,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                      ),
                                      child: Image.network(lisImage[index]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: Text(
                                            "IWO 8 Smart watch Apple iWatch Mirror"),
                                      ),
                                      SizedBox(height: 5),
                                      Text("For Android iPhone"),
                                      SizedBox(height: 5),
                                      Text(
                                        "price : \$ 499.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.add_location,
                                              color: Colors.black54),
                                          Text('Brooklyn')
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 22,
                                          ),
                                          Icon(Icons.star,
                                              color: Colors.orange, size: 22),
                                          Icon(Icons.star,
                                              color: Colors.orange, size: 22),
                                          Icon(Icons.star,
                                              color: Colors.orange, size: 22),
                                          Icon(Icons.star,
                                              color: Colors.orange, size: 22),
                                          SizedBox(width: 10),
                                          Text(
                                            "(212)",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black54),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "659 sale",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    FocusScopeNode currentFocus =
                                        FocusScope.of(context);

                                    if (!currentFocus.hasPrimaryFocus) {
                                      currentFocus.unfocus();
                                    }
                                    showAlertDialog(context);
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black54),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    FocusScopeNode currentFocus =
                                        FocusScope.of(context);
                                    if (!currentFocus.hasPrimaryFocus) {
                                      currentFocus.unfocus();
                                    }
                                    Fluttertoast.showToast(
                                        msg:
                                            "Item has been added to Shopping Cart");
                                  },
                                  child: Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.cyan, width: 1.5),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Center(
                                      child: Text(
                                        "Add to Shopping Cart",
                                        style: TextStyle(
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text('Delete Wishlist'),
    content: Text('Are you sure to delete this item from your Wishlist?'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          'No',
          style: TextStyle(color: Colors.cyan),
        ),
      ),
      TextButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "Item deleted");
          Navigator.pop(context);
        },
        child: Text(
          'Yes',
          style: TextStyle(color: Colors.cyan),
        ),
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext) {
      return alert;
    },
  );
}
