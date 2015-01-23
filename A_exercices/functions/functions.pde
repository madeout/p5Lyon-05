// Functions execute a list of instructions when you call it

// To declare a function:
void myFunction()
{
  // Add instructions here
  rect(width/2, height/2, 45, 45);
}

int squareSize = 25;
void setup()
{
  // To call a function:
  myFunction();
  mySecondFunction(squareSize);
  
  println(localVariable);
}

// You can also give a value to a function, it's called a parameter
void mySecondFunction(int parameter)
{
  rect(width/2, height/2, parameter, parameter);
}

// When you create a variable in the main, you can access it everywhere
// When you create a variable in a function, you can access it only inside this function. This accessibility is called scope
void myThirdFunction()
{
  int localVariable = 1;
  println(localVariable);
}
