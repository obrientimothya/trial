require 'rails_helper'

RSpec.describe Product, type: :model do
  
  # model tests
  
  it "is valid with correct attributes" do
    product = Product.new(title: 'Test Product', price: 123.45)
    expect(product).to be_valid
  end
  it "is not valid without a title" do
    product = Product.new(title: nil, price: 123.45)
    expect(product).to_not be_valid
  end
  it "is not valid with an empty price" do
    product = Product.new(title: "Test Product", price: nil)
    expect(product).to_not be_valid
  end
  it "is not valid without a numerical price" do
    product = Product.new(title: "Test Product", price: 'notvalid')
    expect(product).to_not be_valid
  end

  # GraphQL tests

  it "returns the correct title via graphql" do
    product = Product.new(title: "Test Product", price: 123.45)
    expect(TrialSchema.types["Product"].fields["title"].resolve(product,nil,nil)).to eq('Test Product')
  end
  it "returns the correct price via graphql" do
    product = Product.new(title: "Test Product", price: 123.45)
    expect(TrialSchema.types["Product"].fields["price"].resolve(product,nil,nil)).to eq(123.45)
  end

end
