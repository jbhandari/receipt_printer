### Philips- medSage screening

***
This program was created without implementing test driven development(TDD). The Metis program utilized error driven development, however we were told to pursue test driven development once the program was over. I am currently learning about TDD through thoughtbot's online TDD workshop through their Learn workshop series. I estimate that by June 1, 2014, I will begin implementing TDD practices into my code. 

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

## Question 

PROBLEM TWO: SALES TAXES 
 
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
