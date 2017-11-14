//Kalyan Kola Cahill
//C16357813

//Creating object arrays 'products' and 'bill' of class type Product
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void setup()
{
  size(800,400);
  //Load Data into products from loadData() function
  loadData();
  //Print Products to Console from printProducts() function
  printProducts();
  //Print Products to Screen from displayProducts() function
  displayProducts();
}

void draw()
{
  displayBill();
}

void loadData()
{
  //creating table and loading from cafe.csv within data folder
  Table table = loadTable("cafe.csv", "header");
  
  //for loop to load each row of data from cafe.csv into a new class object
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
}

void printProducts()
{
  //For loop to print products to console
  for(Product p:products)
  {
    println(p.toString());
  }
}

void displayProducts()
{
  float xpos = width/16;
  float ypos = height/8;
  textSize(15);
  //For loop to display menu options from products
  for(Product p:products)
  {
    fill(255, 255, 255);
    rect(xpos, ypos - height/16, width/3, height/10);
    fill(0);
    textAlign(LEFT);
    text(p.name, xpos + xpos/16, ypos);
    textAlign(RIGHT);
    //Utilizing nf to display only 2 decimals
    String popd = nf(p.price, 1, 2);
    text(popd, xpos + width/3 - width/36, ypos);
    ypos += height/8;
  }
}

void displayBill()
{
  //Creating Bill Display Rectangle
  fill(255, 255, 255);
  rect(width/2, height/8 - height/16, 4*width/9, height - height/8);
  fill(0);
  textAlign(CENTER);
  text("Your Bill:",width/2 + 2*width/9, height/8);
  
  float xbill = width/2 + width/26;
  float ybill = height/8 + height/14;
  
  //Displaying elements within Bill
  for(Product b:bill)
  {
    textAlign(LEFT);
    text(b.name, xbill, ybill);
    textAlign(RIGHT);
    //Utilizing nf to display 2 decimals
    String bopt = nf(b.price, 1, 2);
    text(bopt, xbill+width/3 ,ybill);
    ybill += height/14;
  }
  
  //For loop to calculate total bill price
  float billTotal = 0;
  for(Product b:bill)
  {
    billTotal += b.price;
  }
  
  //Utilizing nf to display 2 decimals
  String bstr = nf(billTotal, 2, 2);
  textAlign(CENTER);
  text(bstr, width/2 + 2*width/9, height- height/8);
}


/*Mouse Pressed Function for allowing user to select objects from menu
The first line of each if statement creates a new Product object based
on the product selected. The second line adds this product to the bill array.*/
void mousePressed()
{
  if(mousePressed)
  {
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 && mouseY<height/8 - height/16 + height/10)
    {
      Product prod = new Product("Americano", 2.5);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + height/10 && mouseY<height/8 - height/16 + 2*height/10)
    {
      Product prod = new Product("Cappuccino", 2.8);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 3*height/10 && mouseY<height/8 - height/16 + 4*height/10)
    {
      Product prod = new Product("Latte", 2.8);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 4*height/10 && mouseY<height/8 - height/16 + 5*height/10)
    {
      Product prod = new Product("Roibois Tea", 2.9);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 5*height/10 && mouseY<height/8 - height/16 + 6*height/10)
    {
      Product prod = new Product("Lemon & Ginger tea", 2.9);
      bill.add(prod);
    }    
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 6*height/10 && mouseY<height/8 - height/16 + 7*height/10)
    {
      Product prod = new Product("Chardonnay", 6.5);
      bill.add(prod);
    }    
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 7*height/10 && mouseY<height/8 - height/16 + 8*height/10)
    {
      Product prod = new Product("Prosecco", 7.2);
      bill.add(prod);
    }    
  }
}