class Xpay::PaymentController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def payment
		#http://www.xpay.cz/download/Xpay_tech_transaction.cz.pdf

		input = {
			:payment_id					=> params[:ID], #using this to pair payment and delivery
			:session_id					=> params[:sessionID],
			:transaction_id			=> params[:transactionID],
			#:transaction_type		=> params[:action], #cannot be used due to rails reserved params
			:project_id					=> params[:projectID],
			:method_id					=> params[:paymentMethod],
			:amount							=> params[:amount],
			:amount_total				=> params[:totalAmount],
			:currency						=> params[:currency],

			:service_number			=> params[:serviceNumber],
			:phone_number				=> params[:phoneNumber],
			:operator						=> params[:phoneOperator],

			:username						=> params[:username],
			:password						=> params[:password],
			:keyword						=> params[:keyword],
			:sms_text_modified	=> params[:modified],
			:sms_text_raw				=> params[:raw],
			:test								=> params[:test] == 1
		}

		payment = Payment.new input
		payment.save!

		puts 'xpay payment...controller response check'
		if respond_to?('xpay_payment')
			puts 'controller response call'
			response = xpay_payment payment
			@error = response[:error]
			@answer = response[:answer]
			puts 'controller response finished'
		end

		respond_to do |format|
			format.text
		end
	end
end