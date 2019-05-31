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
    binding.pry
   if coupon_info[:item] == produce && info[:count] >= coupon_info[:num]
     hash["#{produce} W/COUPON"]
  #   info[:count] = info[:count] - coupon_info[:num]
   #if hash[produce + "W/COUPON"]
    # hash[produce + "W/COUPON"][:count] += 1
   #else
    # hash[produce + " W/COUPON"] = {
    #   :price => coupon_info[:cost],
    #   :clearance => produce[:clearance],
    #   :count => 1}
    # end
  end
end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
