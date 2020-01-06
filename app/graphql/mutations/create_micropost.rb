class Mutations::CreateMicropost < Mutations::BaseMutation
    argument :content, String, required: true
    argument :picture, String, required: true
    argument :user_id, Int, required: true

    field :micropost, Types::MicropostType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, content:, picture:)
        micropost = Micropost.new(user_id: user_id, content: content, picture: picture)
        if micropost.save
            {
                micropost: micropost,
                errors: []
            }
        else
            {
                micropost: nil,
                errors: micropost.errors.full_messages
            }
        end
    end
end
