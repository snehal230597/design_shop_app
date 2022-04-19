
class NotificationModel {
  final String? title, subtitle;
  final DateTime? date;
      NotificationModel({this.title, this.date, this.subtitle});
}

class NotificationData {
 List<NotificationModel> notificationData =  [
   NotificationModel(title : 'Order Completed',date: DateTime.now(), subtitle: 'Your Order Is Completed'),
   NotificationModel(title : 'Order Arrived',date: DateTime.now(), subtitle: 'Your Order Is arrived'),
   NotificationModel(title : 'Flash Sale',date: DateTime.now(), subtitle: 'Your Order Is Completed'),
   NotificationModel(title : 'Order Sent',date: DateTime.now(), subtitle: 'Your Order Is is being shipped'),
   NotificationModel(title : 'Reddy to Pick Up',date: DateTime.now(), subtitle: 'Your Order Is reddy to picked up by the courier'),
   NotificationModel(title : 'Trending product',date: DateTime.now(), subtitle: 'Your Order Is Completed'),
   NotificationModel(title : 'Order processed',date: DateTime.now(), subtitle: 'your order is being prossed'),
   NotificationModel(title : 'Payment Received',date: DateTime.now(), subtitle: 'payment has been recevied'),
   NotificationModel(title : 'Waiting for Payment',date: DateTime.now(), subtitle: 'we are waiting for you payment'),
   NotificationModel(title : 'Order placed',date: DateTime.now(), subtitle: 'we have received your order'),
  ];
}