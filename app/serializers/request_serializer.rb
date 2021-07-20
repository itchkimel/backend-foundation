class RequestSerializer < ActiveModel::Serializer
  # attributes :id
  belongs_to :user

end
