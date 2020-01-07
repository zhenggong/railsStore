module Types
  class LmicropostType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Int, null: true
    field :starttime, GraphQL::Types::ISO8601DateTime, null: false
    field :picture, String, null: true
    field :link, String, null: true
    field :title, String, null: true
    field :products, [Types::ProductType], null: false
  end
end
