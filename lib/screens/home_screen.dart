import 'package:design_shop_app/screens/chat_screen.dart';
import 'package:design_shop_app/screens/coupan_screen.dart';
import 'package:design_shop_app/screens/notification_screen.dart';
import 'package:design_shop_app/screens/product_detail_screen.dart';
import 'package:design_shop_app/widget/list_home.dart';
import 'package:design_shop_app/widget/list_home2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> iconWidget = [
      Icon(Icons.laptop, size: 40, color: Colors.red),
      Icon(Icons.ac_unit, size: 40, color: Colors.green),
      Icon(Icons.car_rental, size: 40, color: Colors.greenAccent),
      Icon(Icons.add_to_drive_rounded, size: 40, color: Colors.black),
      Icon(Icons.airline_seat_individual_suite_rounded,
          size: 40, color: Colors.blue),
      Icon(Icons.home, size: 40, color: Colors.pink),
      Icon(Icons.lock_clock, size: 40, color: Colors.amber),
      Icon(Icons.watch, size: 40, color: Colors.purple),
    ];

    List<String> tshirt = [
      "https://cdn.shopify.com/s/files/1/0070/7032/files/tshirt-business8-min_838a2996-f195-4c1d-a4d1-034bc0a9a095.jpg",
      "https://5.imimg.com/data5/SV/XT/MY-55472971/black-t-shirt-500x500.png",
      "https://teeshopper.b-cdn.net/product_page_asset/images/Full-Sleeve-T-shirt---Adidas_meta.png",
      "https://www.vintagefootballshirts.com/uploads/products/images/2012-13-ajax-adidas-away-shirt-35640-1.jpg"
    ];

    List<Widget> items = [
      buildPage(
          "https://image.shutterstock.com/z/stock-vector-home-appliance-electronic-sale-banner-or-poster-design-with-discount-offer-and-firecrackers-for-1501450061.jpg"),
      buildPage(
          "https://data1.ibtimes.co.in/en/full/639791/flipkart-electronics-sale.png"),
      buildPage(
          "https://www.sbicard.com/sbi-card-en/assets/media/images/personal/offers/categories/shopping/pai/d-pai.jpg"),
      buildPage(
          "https://cdn.shopify.com/s/files/1/2459/1583/articles/Blog_Cover_31914c9e-72e8-4852-ae24-f549493d5d18.jpg"),
      buildPage(
          "https://www.shopickr.com/wp-content/uploads/2016/05/snapdeal-mega-electronics-sale-may-2016.jpg"),
      buildPage(
          "https://cdn4.vectorstock.com/i/1000x1000/92/48/biggest-electronics-sale-banner-poster-flyer-vector-14299248.jpg"),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 00,
        title: Container(
          height: 40,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,

              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),

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
                  fontSize: 15, height: 3, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen() ));
                },
                icon: Icon(Icons.sms, size: 28),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => NotificationScreen()));
                },
                icon: Icon(Icons.notification_add, size: 28),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: PageView(
                          children: items,
                          controller: _controller,
                        ),
                      ),
                      ScrollingPageIndicator(
                        dotColor: Colors.grey,
                        dotSelectedColor: Colors.black,
                        dotSize: 6,
                        dotSelectedSize: 8,
                        dotSpacing: 12,
                        controller: _controller,
                        itemCount: items.length,
                        orientation: Axis.horizontal,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => CoupanScreen()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: MediaQuery.of(context).size.height * 0.06,
                  //width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'There are 10 coupan waiting',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 17),
                        ),
                        Icon(
                          Icons.price_change,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: iconWidget.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      iconWidget[index],
                      //Divider(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Text(
                        'price: 95.5\$',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 1, crossAxisSpacing: 5),
                padding: EdgeInsets.all(2),
                shrinkWrap: true,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Flash sale',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Flash sale ends in'),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Text(
                            '02',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        ':',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Text(
                            '45',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        ':',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Text(
                            '50',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            ListHomeScreen(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    'Trending product',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ProductDetailScreen(image: tshirt[index]),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 1,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          height: 65,
                          width:  65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(tshirt[index]),
                              ),
                            ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.030),
                            Text(
                              'Addidas T-Shirt',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Text(
                              '12.7k product',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.green),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 1.4,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
              ),
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              shrinkWrap: true,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Last Search',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            ListHomeScreen2(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Category For You",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.greenAccent,
              child: Image.network(
                'https://cdn.mos.cms.futurecdn.net/uou9SehiuptjQ6dADvQv3k-1200-80.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Recomended product",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GridView.builder(
              itemCount: 4,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailScreen(
                            image:
                                "https://www.techinn.com/f/13819/138192974/sony-kd43x81j-43-4k-led-tv.jpg"),
                      ),
                    );
                  },
                  child: Container(
                 //   margin: EdgeInsets.zero,
                    child: Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 1,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white60),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.network(
                                  'https://www.techinn.com/f/13819/138192974/sony-kd43x81j-43-4k-led-tv.jpg'),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 20,
                                child: Image.network(
                                    'https://www.gsma.com/futurenetworks/wp-content/uploads/2020/04/HD-Logo.png'),
                              ),
                              Container(
                                height: 20,
                                child: Image.network(
                                    'https://1000logos.net/wp-content/uploads/2019/12/HDMI-Logo.jpg'),
                              ),
                              Container(
                                height: 20,
                                child: Image.network(
                                    'https://thumbs.dreamstime.com/b/quadhd-k-icon-golden-vector-illustration-isolated-transparent-background-quadhd-k-icon-golden-vector-illustration-isolated-149770151.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sony 4K Smart LED 55.0 inch",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 12),
                                ),
                                Text(
                                  "HD digital - 55N4003",
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 12),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "price : \$ 699.69",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.62,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
                 padding: EdgeInsets.all(10),
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String image) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
        child: Image.network(image, fit: BoxFit.fill),
      ),
    );
  }
}
