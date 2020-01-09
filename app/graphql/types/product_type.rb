module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :lmicropost_id, Integer, null: false
    field :link, String, null: false
    field :picture, String, null: false
    field :title, String, null: false
    field :price, Float, null: false
    field :pricecompare, Float, null: false
  end
end
