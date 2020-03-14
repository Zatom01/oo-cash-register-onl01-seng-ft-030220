class CashRegister
  
  attr_accessor :total, :discount, :items, :price


  def initialize(num=0)
  
      @total=0
      @discount=num
      @items=[]
      @items_price=[]
      
      
      
  end 

  def add_item(title,price,quantity=1)
    @price=price
    num=quantity

    
    num.times do 
      @items << title
      @items_price << price
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
    @total.to_i
  end 

  def items 
    @items
  end 
  
  def void_last_transaction
    last_transaction= @items[-1] * @items_price [-1]
    @total = @total - last_transaction
    @total
  end 
  
end