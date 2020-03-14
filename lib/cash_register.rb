class CashRegister
  
  attr_accessor :total, :discount, :items


  def initialize(num=0)
  
      @total=0 
      @discount=num
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
    
    @previous_total=@total
    @total=@total- ((@discount/100) * @total).to_i
    
    if @total<@previous_total
      puts "After the discount, the total comes to $#{@total}."
      return @total
    else
      puts ""


  end

  def total
    @total
  end 

  def items 
    @items
  end 
  
  
end
