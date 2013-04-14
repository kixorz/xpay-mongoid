Xpay::Engine.routes.draw do
	root :to => 'payment#payment'
	match 'payment', :to => 'payment#payment', :via => :post
	match 'delivery', :to => 'delivery#delivery', :via => :post
end
