Xpay::Engine.routes.draw do
	root :to => 'payment#payment'
	match 'payment', :to => 'payment#payment', :via => :post
end
