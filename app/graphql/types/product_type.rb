Types::ProductType = GraphQL::ObjectType.define do
  name "Product"
  field :title, types.String
  field :price, types.Float
end
