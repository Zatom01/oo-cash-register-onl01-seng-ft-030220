class CashRegister
  
  attr_accessor :total, :discount, :items, :price


  def initialize(num=0)
  
      @total=0 
      @discount=num
      @items=[]
      @tot_arr=[]
      
      
  end 

  def add_item(title,quantity=1,price)
    @price=price

    return @total= @total + (quantity * price)
    # @similar_arr=[] 
    # while quantity!=0 do
    #   @similar_arr << title
    #   quantity -= 1 
    # end

    # @similar_arr.each do |e|
    #   @items << e 
    # end 

    
  end 

  def apply_discount

    @disc_amount=( @discount * @price ) / 100

    @total=@total - @disc_amount
    if @disc_amount > 0
      puts "After the discount, the total comes to $#{@total}."
      return @total
    else
      puts "There is no discount to apply."
      return @total
    end 



  end

  def total
    @total
  end 

  def items 
    @items
  end 
  
  
end