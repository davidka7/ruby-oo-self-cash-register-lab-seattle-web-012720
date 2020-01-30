require "pry"
class CashRegister
    def initialize(discount=nil)
        @total=0
        @discount=discount
        @items = []
#binding.pry
    end

    attr_reader :discount
    attr_accessor :total, :add_item, :apply_discount, :items, :void_last_transaction

   # def total
#@total
   #end

    def add_item(title, price, quantity=1)
      
       @void_last_transaction=price*quantity
      quantity.times do 
        @items << title
      end
      self.total+=price*quantity
      #binding.pry
    end     
        
    def apply_discount
        #binding.pry
        if @discount 
            @discount = @discount/100.to_f
            @total= @total -(@total*@discount)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
        
    end

    def items
        @items
        #binding.pry
    end

    def void_last_transaction
@total -=@void_last_transaction

    end
end
