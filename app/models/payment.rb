class Payment
	include Mongoid::Document
	include Mongoid::Timestamps
	store_in collection: "xpay_payments"

	#http://www.xpay.cz/download/Xpay_tech_transaction.cz.pdf
	field :payment_id, type: Integer
	field :session_id, type: String
	field :transaction_id, type: String
	field :transaction_type, type: String
	field :project_id, type: Integer
	field :method_id, type: Integer
	field :amount, type: Integer
	field :amount_total, type:Integer
	field :currency, type: String

	field :service_number, type: String
	field :phone_number, type: String
	field :operator, type: String

	field :username, type: String
	field :password, type: String
	field :keyword, type: String
	field :sms_text_modified, type: String
	field :sms_text_raw, type: String
	field :test, type: Boolean

	index({ payment_id: 1 }, { unique: true })
	index({ keyword: 1 }, { background: true })
end