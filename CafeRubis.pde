//Kalyan Kola Cahill
//C16357813

ArrayList<Product> products;
ArrayList<Product> bill;

void setup()
{
  size(800,400);
  loadData();
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