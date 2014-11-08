High-level overview of how it was built:
- feed data into program
- understand what three things needed to be printed out
 - items purchased with respective after tax price
 - total dollar value of sales tax
 - total cost
- identify which items needed to be taxed and/or duty added and append that price
- calculate the total sales tax
- calculate total cost
- print

***

## How To Run The Program

After you cd into the directory inside of your terminal, you can run the program by typing in
- ruby receipt.rb ___FILENAME___
 - inside of the data folder there are three files that contain the product sets as outline by the question below. The filenames are: 
  - items_1.txt
  - items_2.txt
  - items_3.txt
 
 -in order to run the program, the program needs a data file, so if you substitute ___FILENAME___ for any of the three        filenames above you will be able to run the program successfully 

 - example:  ruby receipt.rb items_2.txt

***

## Question - SALES TAXES 
 
Basic sales tax is applicable at a rate of 10% on all goods, except books, food,
and medical 
products that are exempt. Import duty is an additional sales tax applicable on
all imported 
goods at a rate of 5%, with no exemptions. 
 
When I purchase items I receive a receipt which lists the name of all the items
and their price 
(including tax), finishing with the total cost of the items, and the total
amounts of sales taxes 
paid. The rounding rules for sales tax are that for a tax rate of n%, a shelf
price of p contains 
(np/100 rounded up to the nearest 0.05) amount of sales tax. 
 
Write an application that prints out the receipt details for these shopping
baskets... 
 
INPUT: 
 
Input 1: 
1 book at 12.49 
1 music CD at 14.99 
1 chocolate bar at 0.85 
 
Input 2: 
1 imported box of chocolates at 10.00 
1 imported bottle of perfume at 47.50 
 
Input 3: 
1 imported bottle of perfume at 27.99 
1 bottle of perfume at 18.99 
1 packet of headache pills at 9.75 
1 box of imported chocolates at 11.25 
 
OUTPUT 
 
Output 1: 
1 book : 12.49 
1 music CD: 16.49 
1 chocolate bar: 0.85 
Sales Taxes: 1.50 
Total: 29.83 
 
Output 2: 
1 imported box of chocolates: 10.50 
1 imported bottle of perfume: 54.65 
Sales Taxes: 7.65 
Total: 65.15 
 
Output 3: 
1 imported bottle of perfume: 32.19 
1 bottle of perfume: 20.89 
1 packet of headache pills: 9.75 
1 imported box of chocolates: 11.85 
Sales Taxes: 6.70 
Total: 74.68 
