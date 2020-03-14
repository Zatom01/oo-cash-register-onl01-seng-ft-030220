class CashRegister
  
  attr_accessor :total, :discount, :items, :price


  def initialize(num=0)
  
      @total=0 
      @discount=num
      @items=[]
      
      
      
  end 

  def add_item(title,price,quantity=1)
    @price=price
    num=quantity
    
    num.times do 
      @items << title 
    end 
    
    @total=@total + (price * quantity)
    
    
  end 

  def apply_discount

    @disc_amount=( @discount * @price ) / 100

    @total=@total - @disc_amount
    if @disc_amount > 0
      return "After the discount, the total comes to $#{@total}."
    elsif @discount==0
    
      return "There is no discount to apply."
    end 


  end

  def total
    @total
  end 

  def items 
    @items
  end 
  
  
end