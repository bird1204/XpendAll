class ShopsController < ApplicationController
	def index
		#product={:shop_id => 1,:provider_id=>1,:name =>"test",:category=>"test",:quantity=>1,:taken => false,:enabled => true}
		#shop={:provider_id => 1,:name=>"shop_test",:address=>"shop_address",:country => "shop_country",:region=>"shop_region",:category => 1 ,:enabled =>true}
		#provider={:device_id=>1,:device_type => 1,:os=>1,:enabled=>true}
		#rank={:shop_id=>1,:provider_id=>1,:degree=>5,:enabled=>true}

    @shops=Shop.where(:enabled=>true)
    @display=Array.new()
    @shops.each do |shop|
      inventory=shop.products.where(:taken=>false).where(:enabled=>true).sum(:quantity)
      provider=shop.provider.device_id
      rank=shop.ranks.where(:enabled=>true).average(:degree).to_i
      @display << {:name=>shop.name,:inventory => inventory,:provider => provider,:updated_at => shop.updated_at,:rank => rank}
    end
    p @display
	end
end
