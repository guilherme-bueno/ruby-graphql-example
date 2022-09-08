module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_item, Types::ItemType, null: false do
      argument :item, Types::ItemInputType
    end

    def create_item(item:)
      model = Item.new(item.to_h)
      model.save()
      puts "Model: #{model.to_json}"
      model
    end

  end
end


