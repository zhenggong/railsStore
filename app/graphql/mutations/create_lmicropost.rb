class Mutations::CreateLmicropost < Mutations::BaseMutation
    argument :title, String, required: true
    argument :picture, String, required: true
    argument :user_id, Int, required: true
    argument :link, String, required: true
    argument :starttime, GraphQL::Types::ISO8601DateTime, required: true
    field :lmicropost, Types::LmicropostType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, title:, picture:, link:, starttime:)
        lmicropost = Lmicropost.new(user_id: user_id, title: title, picture: picture, link: link , starttime: starttime)
        if lmicropost.save
            {
                lmicropost: lmicropost,
                errors: []
            }
        else
            {
                lmicropost: nil,
                errors: lmicropost.errors.full_messages
            }
        end
    end
end
