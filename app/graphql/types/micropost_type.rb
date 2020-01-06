module Types
  class MicropostType < Types::BaseObject
    field :id, Int, null: false
    field :user, Types::UserType, null: false
    field :subject, String, null: false
    field :picture, String, null: true
    field :content, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
