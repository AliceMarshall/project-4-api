class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :owner_id, :borrower_id
  belongs_to :item
end
