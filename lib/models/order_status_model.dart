
class OrderList {
  final String? title, subtitle;
  final DateTime? date;

  OrderList({this.title, this.date, this.subtitle});

}

class OrderListData {
  List<OrderList> orderData = [
    OrderList(title: "Order Completed", date: DateTime.now(), subtitle: "Your order is completed"),
    OrderList(title: "Order Arrived", date: DateTime.now(), subtitle: "Your order has been arrived"),
    OrderList(title: "Order Sent", date: DateTime.now(), subtitle: "Your order is being shipped by courier"),
    OrderList(title: "Reddy to pickup", date: DateTime.now(), subtitle: "Your order is reddy to picked up"),
    OrderList(title: "Order Processed", date: DateTime.now(), subtitle: "Your order is being processed"),
    OrderList(title: "Payment Received", date: DateTime.now(), subtitle: "Payment has been received"),
    OrderList(title: "Waiting for Payment", date: DateTime.now(), subtitle: "We are waiting for your payment"),
    OrderList(title: "Order Placed", date: DateTime.now(), subtitle: "we have received your order"),
  ];

}