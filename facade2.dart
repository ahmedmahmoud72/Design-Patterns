void main()
{
  OrderFacade client_order = OrderFacade();
  client_order.placeOrder();

}


class Inventory
{
  void checkInventory()
  {
    print('Checking Inventory');
  }
}
class Payment
{
  void deductPayment()
  {
    print('Deducting Payment');
  }
}
class OrderFacade
{
  Inventory? inventory;
  Payment? payment;
  OrderFacade()
  {
    inventory = Inventory();
    payment = Payment();
  }
  void placeOrder ()
  {
    inventory!.checkInventory();
    payment!.deductPayment();
  }
}
