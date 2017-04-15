class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :owner_id, :borrower_id
  has_one :item
end
