module Types
    class QueryType < Types::BaseObject
        # Add root-level fields here.
        # They will be entry points for queries on your schema.
        
        # TODO: remove me
        field :test_field, String, null: false,
        description: "An example field added by the generator"
        def test_field
            "Hello World!"
        end
        
    field :user, Types::UserType, null: false do
        description 'ユーザ情報を1件取得する'
        argument :id, Int, required: true, description: 'ユーザID'
    end
    def user(id:)
        User.find(id)
    end
    
    field :users, [Types::UserType], null: false, description: 'ユーザ情報を全件取得する'
    def users
        User.all
    end

    field :microposts, [Types::MicropostType], null: false, description: 'ユーザ情報を全件取得する'
    def microposts
        Micropost.all
    end
    
    def micropost(id:)
        Micropost.find(id)
    end
    
    field :products, [Types::ProductType], null: false, description: 'ユーザ情報を全件取得する'
    def products
        Product.all
    end
    
    def product(id:)
        Product.find(id)
    end

    
    field :lmicroposts, [Types::LmicropostType], null: false, description: 'ユーザ情報を全件取得する'
    def lmicroposts
        Lmicropost.all
    end
    
    field :lmicropost, Types::LmicropostType, null: false do
        description 'ユーザ情報を1件取得する'
        argument :id, Int, required: true, description: 'ユーザID'
    end
    def lmicropost(id:)
        Lmicropost.find(id)
    end
    
end
end
