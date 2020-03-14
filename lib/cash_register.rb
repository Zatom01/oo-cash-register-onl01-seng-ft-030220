class CashRegister
  
  attr_accessor :total, :discount, :items


  def initialize(num=0)
    @total=num
    @discount=20
    @items=[]
  end 

  def add_item(title,quantity=1,price)
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
    @total=@total- (0.2 * @total).to_i
    puts "After the discount, the total comes to $#{@total}."
    return @total
  end 

  def total
    @total
  end 

  def items 
    @items
  end 
  
  
end