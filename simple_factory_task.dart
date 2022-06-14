main()
{
  SimplePizzaFactor pizzaFactor = SimplePizzaFactor();
  Pizza? pizza1 = pizzaFactor.getPizzaType('CHEESEPIZZA');
  pizza1!.cut();
}
 class Pizza
{
 void prepare(){}
 void bake(){}
 void cut(){}
 void box(){}
}

class CheesePizza implements Pizza{
 @override
  void prepare() {
   print('Cheese Pizza is prepared');
  }
  @override
  void bake() {
    print('Cheese Pizza is baked');
  }
  @override
  void cut() {
    print('Cheese Pizza is Cut');
  }
  @override
  void box() {
    print('Cheese Pizza is box');
  }
}
class VeggiePizza implements Pizza{

  @override
  void prepare() {
    print('Veggle Pizza Pizza is prepared');
  }
  @override
  void bake() {
    print('Veggle Pizza Pizza is baked');
  }
  @override
  void cut() {
    print('Veggle Pizza Pizza is Cut');
  }
  @override
  void box() {
    print('Veggle Pizza is box');
  }
}
class ClaimPizza implements Pizza{
  @override
  void prepare() {
    print('Claim Pizza Pizza is prepared');
  }
  @override
  void bake() {
    print('Claim Pizza Pizza is baked');
  }
  @override
  void cut() {
    print('Claim Pizza Pizza is Cut');
  }
  @override
  void box() {
    print('Claim Pizza is box');
  }
}
class PepperoniPizza implements Pizza{

  @override
  void prepare() {
    print('Pepperoni Pizza Pizza Pizza is prepared');
  }
  @override
  void bake() {
    print('Pepperoni Pizza Pizza Pizza is baked');
  }
  @override
  void cut() {
    print('Pepperoni Pizza Pizza Pizza is Cut');
  }
  @override
  void box() {
    print('Pepperoni Pizza Pizza is box');
  }
}

class SimplePizzaFactor
{
   Pizza? getPizzaType(String pizzaType)
  {
    if(pizzaType == null)
    {
      return null;
    }
    if(pizzaType == 'CHEESEPIZZA')
    {
      return CheesePizza();
    }
    else if(pizzaType == 'VEGGIEPIZZA')
    {
      return VeggiePizza();
    }
    else if(pizzaType == 'CLAIMPIZZA')
    {
      return ClaimPizza();
    }
    else if(pizzaType == 'PEPPERONIPIZZA')
    {
      return PepperoniPizza();
    }
    }
}


