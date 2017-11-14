//Kalyan Kola Cahill
//C16357813

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void setup()
{
  size(800,400);
  loadData();
  printProducts();
  displayProducts();
}

void draw()
{
  displayBill();
}

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
}

void printProducts()
{
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
  for(Product p:products)
  {
    fill(255, 255, 255);
    rect(xpos, ypos - height/16, width/3, height/10);
    fill(0);
    textAlign(LEFT);
    text(p.name, xpos + xpos/16, ypos);
    textAlign(RIGHT);
    text(p.price, xpos + width/3 - width/36, ypos);
    ypos += height/8;
  }
}

void displayBill()
{
  fill(255, 255, 255);
  rect(width/2, height/8 - height/16, 4*width/9, height - height/8);
  fill(0);
  textAlign(CENTER);
  text("Your Bill:",width/2 + 2*width/9, height/8);
  
  float xbill = width/2 + width/26;
  float ybill = height/8 + height/14;
  
  for(Product b:bill)
  {
    textAlign(LEFT);
    text(b.name, xbill, ybill);
    textAlign(RIGHT);
    text(b.price, xbill+width/3 ,ybill);
    ybill += height/14;
  }
  
  float billTotal = 0;
  for(Product b:bill)
  {
    billTotal += b.price;
  }
  textAlign(CENTER);
  text(billTotal, width/2 + 2*width/9, height- height/8);
}


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