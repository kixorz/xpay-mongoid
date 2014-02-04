class Delivery
	include Mongoid::Document
	include Mongoid::Timestamps
	store_in collection: "xpay_deliveries"

	#http://www.xpay.cz/download/Xpay_tech_delivery.cz.pdf
	field :delivery_id, type: Integer
	field :session_id, type: String
	field :delivery_status, type: String

	index({ delivery_id: 1 }, { unique: true })
	index({ session_id: 1 }, { background: true })
	index({ delivery_status: 1 }, { background: true })

	def self.is_confirmed(payment)
		self.where(
			:delivery_id => payment[:payment_id],
			:delivery_status => 'fully-delivered'	#this doesn't work with undelivered SMS
		).exists?
	end
end