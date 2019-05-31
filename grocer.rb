require 'pry'

def consolidate_cart(cart)
  # code here
  cart.each_with_object({}) do |grocery, hash|
    #grocery = {"TEMPEH"=>{:price=>3.0, :clearance=>true}}
    #hash = {}
    grocery.each do |item, item_info|
    #item = "TEMPEH"
    #item_info = {:price=>3.0, :clearance=>true}
      if hash[item]
        item_info[:count] += 1
      else
        item_info[:count] = 1
        hash[item] = item_info
      end
    end
  end
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon_info|
    item_name = coupon_info[:item]
   if cart[item_name] && cart[item_name][:count] >= coupon_info[:num]
     if cart["#{item_name} W/COUPON"]
      cart["#{item_name} W/COUPON"][:count] += 1
      else
        cart["#{item_name} W/COUPON"] = {:count => 1, :price => coupon_info[:cost], :clearance => cart[item_name][:clearance]}
      end
      cart[item_name][:count] -= coupon_info[:num]
    end
  end
  cart
end



def apply_clearance(cart)
  # code here
  cart.each do |item, item_info|
    if item_info[:clearance] == true
      discount_price = item_info[:price] * 0.80

  binding.pry
    end
  end
end

def checkout(cart, coupons)
  # code here
end
