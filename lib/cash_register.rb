class CashRegister
  
  attr_accessor :total, :discount, :items, :price


  def initialize(num=0)
  
      @total=0
      @discount=num
      @items=[]
      @items_price=[]
      @items_quantity=[]
      
  end 

  def add_item(title,price,quantity=1)
    @price=price
    num=quantity

    
    num.times do 
      @items << title
      @items_price << price
      @items_quantity << quantity
    end 
    
    @total=@total + (price * quantity)
  
  end 



  def apply_discount

    @disc_amount=( @discount * @price ) / 100
  
    @total=@total - @disc_amount
    if @disc_amount > 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end 
  end



  def total
    @total
  end 
  
  

  def items 
    @items
  end 
  
  
  def void_last_transaction
    
    @total = @total - ( @items_price[-1] * @items_quantity )
  end 
  
end