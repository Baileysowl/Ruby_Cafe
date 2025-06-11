Hello, welcome to Ruby Cafe! This is a command-line Ruby application that simulates a coffee shop where users can view a menu, place orders, make payments, and recieve receipts. Below is an overview of the application's features and functionalities.

1. Menu Display
The application displays a menu of available drinks and their prices when it starts.

Menu items include:

Espresso - $2.50

Latte - $3.50

Cappuccino - $4.00

Mocha - $4.50

Tea - $2.00

2. Taking Orders
Users can enter item names to add them to their order.

For each item, the user is prompted to enter the quantity.

Invalid items should show an error message.

Typing done completes the order entry.

3. Order Calculation
The system calculates the total cost based on the selected items and quantities.

The order data is stored in an internal structure.

4. Receipt Generation
A receipt is printed showing each item, quantity, individual cost, and total cost.

5. Payment Handling
The user is prompted to enter a payment amount.

If payment is equal to or more than the total, the system calculates and displays change.

If payment is insufficient, the transaction is canceled.

6. Customer Loop
After each transaction, the system asks whether to serve another customer.

If yes, a new order starts.

If no, the application exits with a thank-you message.

