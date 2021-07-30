class RequestSerializer < ActiveModel::Serializer
  attributes  :id, 
              :user_id, 
              :name, 
              :email, 
              :telephone, 
              :marital_status, 
              :children, 
              :work, 
              :reason_header, 
              :reason_body, 
              :amount, 
              :auto_address

  belongs_to :user

end
