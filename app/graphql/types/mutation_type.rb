module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_micropost, mutation: Mutations::CreateMicropost
  end
end
