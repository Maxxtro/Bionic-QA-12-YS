function Main()
{
//Start program:    
  pognali()     

//Using DDT method with ready data in file "Sergey_hw2.txt."  
  var file = Files.FileNameByName("Sergey_hw2.txt"); 
  Log.Message("Creating driver");
  var driver = DDT.CSVDriver(file);
  Log.AppendFolder("Creating users");
  
//Using DDT to get every value in file with its position. 
  while (!driver.EOF())
  {
    var name = driver.Value(0);  
    var product = driver.Value(1);
    var quantity = driver.Value(2); 
    var date = driver.Value(3);
    var street = driver.Value(4);
    var city = driver.Value(5);
    var state = driver.Value(6); 
    var ZIP = driver.Value(7); 
    var card = driver.Value(8);
    var card_no = driver.Value(9); 
    var ex_date = driver.Value(10); 
    var price = driver.Value(11); 
    var discount = driver.Value(12); 
    var total = driver.Value(13); 
      
//Starting to create our users: 
    Create_user(product, quantity, price, discount, total, date, name, city, street, state, ZIP, card, card_no, ex_date);
    driver.Next();      
  }
  Log.PopLogFolder();

//Delete all our users:    
    delete_all_items();

//Close program:  
    priehali();
  
}

function pognali() {
TestedApps.Orders.Run();  
}

function Create_user(product, quantity, price, discount, total, date, name, city, street, state, ZIP, card, card_no, ex_date)
{
    var groupBox; 
    var orders;
    var mainForm;
    var orderForm;
    var numericUpDown;
    var textBox;
    
    Log.AppendFolder("Creating user" + ' ' +name);

//Create new order:
      orders = Aliases.Orders;
      mainForm = orders.MainForm; 
      orders.MainForm.MainMenu.Click("Orders|New order...");

//Start to fill our forms with needed data from file:          
      orderForm = orders.OrderForm;
      groupBox = orderForm.Group;
         groupBox.ProductNames.ClickItem(product);
      numericUpDown = groupBox.Quantity;
         numericUpDown.wValue = quantity;
      textBox = orderForm.Group.Price;
         textBox.wText = price;
      textBox = groupBox.Discount;
          textBox.wText = discount;
      textBox = groupBox.Customer;
          groupBox.Date.wDate = date;
          textBox.wText = name;
      aqObject.CompareProperty(Aliases.Orders.OrderForm.Group.Customer.wText, cmpEqual, name); //Check if Name is equal to our input 
      textBox = groupBox.Street;
         textBox.wText = street;
      textBox = groupBox.City;
          textBox.wText = city;
      textBox = groupBox.State;
          textBox.wText = state;
      textBox = groupBox.Zip;
          textBox.wText = ZIP;
      groupBox.WinFormsObject(card).ClickButton()
      textBox = groupBox.CardNo;
          textBox.wText = card_no;
          groupBox.ExpDate.wDate = ex_date;
      orderForm.ButtonOK.ClickButton(); 
  Log.PopLogFolder()
}
 
function delete_all_items()
{

  var  orders;
  var  toolBar;
  var  dlgConfirmation;
  var  btnYes;
  var i;
  Log.AppendFolder("Deleting all data");
 
 //Delete all orders, where 8 is a number of orders. 
  for (i=0; i<=8; i++) {
    orders = Aliases.Orders(i);
    toolBar = orders.MainForm.ToolBar;
    toolBar.ClickItem(6, false);
    dlgConfirmation = orders.dlgConfirmation;
    btnYes = dlgConfirmation.btnYes;
    btnYes.ClickButton();
    }
   Log.PopLogFolder();
}

function priehali()
{
  var  orders;
  Log.AppendFolder("Program closed");
  orders = Aliases.Orders;
  orders.MainForm.Close();
  orders.dlgConfirmation.btnNo.ClickButton();
  Log.PopLogFolder(); 
}