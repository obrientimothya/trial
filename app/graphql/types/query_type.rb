Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # fetch all products
  field :products do
    type types[Types::ProductType]
    description "Returns all Product records from the database."
    resolve ->(obj, args, ctx) { Product.all }
  end

end
