# Shopping Basket Code Test  

You have been asked to model a shopping basket.  

You must be able to:
* add items to the shopping basket,
* remove items from the shopping basket,
* empty the shopping basket.

Additionally, you must be able to calculate the total value of the shopping basket. This should account for:
* buy-one-get-one-free discounts on items,
* 10% off on totals greater than £20 (after previous discount is applied),
* 2% off on total for customers with loyalty cards (after all other discounts are applied).  

You must be able to validate that the code works through passing tests.

What is being looked for:  
Evidence of 'solid' coding techniques and test driven development.

# Reflections and commentary on the code. 

On the whole, I am very pleased with this project, I followed TDD very closely and almost always wrote a test first. I really tried to break up my code in a logical way and obey the single responsibility principle. Breaking up the basket and the checkout logic worked very well. Something that I think could be improved in terms of the single responsibility would be making separate deal classes that manage the specific logic of each deal, also in terms of open/close it would be good to be able easily add new items by extending a template much like abstract classes in Java. 
