require 'pry'

def consolidate_cart(cart)
  # code here
  hash = {}
  cart.each do |produce_list|
    produce_list.each do |produce, price_info|
      if hash[produce].nil?
        hash[produce] = price_info.merge({:count => 1})
      else
        hash[produce][:count] += 1
      end
    end
  end
  hash
end

def apply_coupons(cart, coupons)
  # code here
  hash = cart
  cart.each do |produce, info|
  coupons.each do |coupon_info|
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
end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
