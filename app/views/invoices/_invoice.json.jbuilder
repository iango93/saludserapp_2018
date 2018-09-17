json.extract! invoice, :id, :customer_id, :company_id, :headquarter_id, :payment_method_id, :staff_id, :state_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
