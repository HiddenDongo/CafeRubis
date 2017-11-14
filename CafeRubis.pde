//Kalyan Kola Cahill
//C16357813

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void setup()
{
  size(800,400);
  loadData();
  printProducts();
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