class Product < ActiveRecord::Base
  def paypal_url(return_url) 
	values = { 
	:business => 'xxxxxxxx@xxx.com',
        :cmd => '_cart',
	:upload => 1,
	:return => return_url,
	}	
        values.merge!({ 
	"amount_1" => '200',
	"item_name_1" => 'name',
	"item_number_1" => 'id',
	"quantity_1" => '1'
	})
         # For test transactions use this URL
	"https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
 end 

end
