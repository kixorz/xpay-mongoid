class Xpay::DeliveryController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def delivery
		#http://www.xpay.cz/download/Xpay_tech_delivery.cz.pdf

		input = {
			:delivery_id				=> params[:ID], #using this to pair payment and delivery
			:session_id					=> params[:sessionID],
			:delivery_status		=> params[:deliveryStatus]
		}

		delivery = Delivery.new input
		delivery.save!

		if respond_to?(:xpay_delivery)
			@error = xpay_delivery delivery
		end

		respond_to do |format|
			format.text
		end
	end
end