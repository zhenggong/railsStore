
class Mutations::CreateProduct < Mutations::BaseMutation
    argument :title, String, required: true
    argument :picture, String, required: true
    argument :link, String, required: true
    argument :user_id, Int, required: true
    argument :lmicropost_id, Int, required: true
    argument :price, Float, required: true
    argument :pricecompare, Float, required: true
    field :product, Types::ProductType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, title:, lmicropost_id:, price:, pricecompare:, picture:, link:)
        product = Product.new(user_id: user_id, picture: picture, lmicropost_id: lmicropost_id, title: title, lmicropost_id: lmicropost_id, price: price, pricecompare: pricecompare, link: link)
        if product.save
            {
                product: product,
                errors: []
            }
        else
            {
                product: nil,
                errors: product.errors.full_messages
            }
        end
    end
end
