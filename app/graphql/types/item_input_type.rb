class Types::ItemInputType < Types::BaseInputObject
    description "Attributes for creating or updating an Item"
    argument :id, ID, required: false
    argument :title, String, required: false
    argument :description, String, required: false
    argument :image_url, String, required: false
    argument :artist_id, Integer, required: false
    argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
  end