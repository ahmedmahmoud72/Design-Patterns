void main()
{
  ShapeFactory shapeFactory = ShapeFactory();
  Shape? circle = shapeFactory.getShape('circle');
  circle!.draw();
}

class Shape
{
  void draw(){}
}
class Circle implements Shape
{
 @override
  void draw() {
    print('Circle');
  }
}
class Square implements Shape
{
 @override
  void draw() {
    print('Square');
  }
}
class Rectangle implements Shape
{
 @override
  void draw() {
    print('Rectangle');
  }
}

class ShapeFactory
{
  Shape? getShape(String shapeType)
  {
    if(shapeType.toUpperCase() == 'CIRCLE')
      {
        return Circle();
      }
    else if(shapeType.toUpperCase() == 'SQUARE')
      {
        return Square();
      }
    if(shapeType.toUpperCase() == 'RECTANGLE')
      {
        return Rectangle();
      }

  }
}
