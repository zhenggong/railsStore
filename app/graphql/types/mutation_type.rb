module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_micropost, mutation: Mutations::CreateMicropost
    field :create_lmicropost, mutation: Mutations::CreateLmicropost
    field :create_product, mutation: Mutations::CreateProduct
  end
end
