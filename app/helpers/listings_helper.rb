module ListingsHelper
      def format_condition(condition)
        
        condition.split("_").map {|word| word.capitalize}.join(" ")
      end 
    
      def format_price(price)
        "$#{price/ 100.0}"
      end 
end
