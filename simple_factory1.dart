void main()
{
  BuyerFactory buyerFactory = BuyerFactory();
  Buyer? cash = buyerFactory.createBuyer('cash');
  cash!.payment();
  Buyer? visa = buyerFactory.createBuyer('visa');
  visa!.payment();

}
class Buyer
{
  void payment(){}
}
class SingleOnlineBuyers implements Buyer
{
    @override
  void payment()
  {
    print('Visa Payment');
  }
}
class SingleOfflineBuyers implements Buyer
{
  @override
  void payment()
  {
    print('Cash Payment');
  }
}

class BuyerFactory {
  Buyer? createBuyer(String type)
  {
    if(type.toUpperCase() == 'VISA')
    {
      return SingleOnlineBuyers();
    }
    else if(type.toUpperCase() == 'CASH')
    {
      return SingleOfflineBuyers();
    }
    return null;
  }
}