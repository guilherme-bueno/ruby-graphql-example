module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    
    field :items, [Types::ItemType], null: false,  description: "Return a list of items"
    def items
      Item.all
    end 

    field :ping, String, null: false,
      description: "An example field added by the generator"
    def ping
      "Pong - from GraphQL endpoint"
    end

    field :search, [Types::ItemType], null: false, description: "Search endpoint" do
      argument :text, String, "Search text"
    end
    def search(text:)
      Item.all
    end
  end
end
