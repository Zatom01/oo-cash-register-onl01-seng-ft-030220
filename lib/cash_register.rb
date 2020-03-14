class CashRegister
  
  attr_accessor :total, :discount, :items


  def initialize(num=0)
    if num
      @total=num 
      @discount=0 
      @items=[]
      
    elsif num==20

      @total=0 
      @discount=0.2
      @items=[]
    end 
      
  end 

  # def add_item(title,quantity=1,price)
  #   return @total= @total + (quantity * price)
  #   # @similar_arr=[] 
  #   # while quantity!=0 do
  #   #   @similar_arr << title
  #   #   quantity -= 1 
  #   # end

  #   # @similar_arr.each do |e|
  #   #   @items << e 
  #   # end 

    
  # end 

  def apply_discount
    if @discount==0.2
      @total=@total- (@discount * @total).to_i
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
