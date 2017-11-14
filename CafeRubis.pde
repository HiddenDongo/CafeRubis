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
    fill(0, 255, 0);
    rect(xpos, ypos - height/16, width/3, height/10);
    fill(255, 0, 255);
    textAlign(LEFT);
    text(p.name, xpos + xpos/16, ypos);
    textAlign(RIGHT);
    text(p.price, xpos + width/3 - width/36, ypos);
    ypos += height/8;
  }
}

void mousePressed()
{
  if(mousePressed)
  {
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 && mouseY<height/8 - height/16 + height/10)
    {
      Product prod = products.get(0);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + height/10 && mouseY<height/8 - height/16 + 2*height/10)
    {
      Product prod = products.get(1);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 2*height/10 && mouseY<height/8 - height/16 + 3*height/10)
    {
      Product prod = products.get(2);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 3*height/10 && mouseY<height/8 - height/16 + 4*height/10)
    {
      Product prod = products.get(3);
      bill.add(prod);
    }
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 4*height/10 && mouseY<height/8 - height/16 + 5*height/10)
    {
      Product prod = products.get(4);
      bill.add(prod);
    }    
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 5*height/10 && mouseY<height/8 - height/16 + 6*height/10)
    {
      Product prod = products.get(5);
      bill.add(prod);
    }    
    if(mouseX>width/16 && mouseX<width/16 + width/3 && mouseY>height/8 - height/16 + 6*height/10 && mouseY<height/8 - height/16 + 7*height/10)
    {
      Product prod = products.get(6);
      bill.add(prod);
    }    
  }
}