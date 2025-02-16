class DeliveryDateCalculator {

  /// Calculate the delivery date based on the order date, working days, and auto-increment days
  static DateTime calculateDeliveryDate(DateTime orderDate, int workingDays, int autoIncrementDays) {
    DateTime deliveryDate = orderDate.add(Duration(days: autoIncrementDays));

    while (!isWorkingDay(deliveryDate, workingDays)) {
      deliveryDate = deliveryDate.add(Duration(days: 1));
    }

    return deliveryDate;
  }

  static bool isWorkingDay(DateTime date, int workingDays) {
    // Assuming weekends (Saturday, Sunday) are non-working days
    return date.weekday <= workingDays;
  }
}

void main() {
  DateTime orderDate = DateTime(2025, 2, 14); // Example order date
  int workingDays = 5; // Monday to Friday
  int autoIncrementDays = 2;

  DateTime deliveryDate = DeliveryDateCalculator.calculateDeliveryDate(orderDate, workingDays, autoIncrementDays);
  print("Expected Delivery Date: ${deliveryDate.toLocal()}");
}
