#Code Design
#A program's design refers to the manner in which you, the programmer, organize and arrange its code . 

#As programmers, we must code for the future. 
#It means that, inevitably, our programs will grow and require change

#Let's say you build an amazing application for a client who then changes their mind about an important feature. What do you do? Scrap all of your work and begin again? By writing code that is flexible and accommodates change, you won't have to.

# The Single Responsibility Principle and Separation of Concerns

#The single responsibility principle is the idea that classes in object-oriented programming should have one job, one responsibility, and their services (i.e., methods) should be aligned with that responsibility. This principle goes hand in hand with the separation of concerns: the idea that the various responsibilities, or concerns, of a computer program should be separated out into discrete sections.

#Let's take the example of an online shopping web application. Such an application has a number of jobs to handle: we need to have users that sign in and purchase items; we have the items themselves that we are selling; we likely have a shopping cart as well. We could develop an application that takes care of all of these jobs in the following manner:


class MyStore

    def sign_in(user)
      @user = user
    end
  
    def current_user
      @user
    end
  
    def item(item)
      @item = item
    end
  
    def item_price=(price)
      @item_price = price
    end
  
    def shopping_cart
      @shopping_cart = []
    end
  
    def add_item_to_cart(item)
      @shopping_cart << item
    end
  
    ...
  
  end

#   As you can see, our code starts to get out of control relatively quickly. What happens when our program needs to grow to accommodate a feature like coupons? Will we continue to add code to this one file? What happens if our program breaks? How will we determine which of our many methods is responsible for the bug? What if we need to change a particular feature of our app? How can we be sure that we've tracked down all of the affected methods?

# Instead, we want to separate the concerns, or responsibilities, of such an application, wrapping each concern in its own class that produces its own objects.

# We could write a User class, an Item class and a ShoppingCart class. The User class should be responsible for assigning a user a name and other details and signing a user in and out. The Item class should have methods that describe an item's attributes, including its price. The ShoppingCart class can collect individual item objects and total their price at the time of checkout.

# By creating classes with their own responsibilities, we create an application that is organized and logical, and accommodates future change. We also create a program that doesn't give us a headache to even look at.


#Abstraction and Don't Repeat Yourself (DRY)

#Lately, our client has been offering a variety of discounts. At the time of checkout, a user can tell our application that they have a 10, 25, or 50 percent discount. So, our program needs to determine if a user has a discount and then apply it, if present. Let's take a look at the #checkout method of our ShoppingCart class.

