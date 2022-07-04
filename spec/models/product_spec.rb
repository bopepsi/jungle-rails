require 'rails_helper'

RSpec.describe Product, type: :model do
    describe 'Validations' do
        it 'should have a name for new records' do
            @product = Product.new 
            @product.name = 'toy'
            expect(@product.name).to be_present
          end
          it 'should have a price for new records' do
            @product = Product.new 
            @product.price = 1000
            expect(@product.price).to be_present
          end
          it 'should have a quantity for new records' do
            @product = Product.new 
            @product.quantity = 10
            expect(@product.quantity).to be_present
          end
          it 'should have a category for new records' do
            @product = Product.new 
            @product.category = Category.new
            expect(@product.category).to be_present
          end
          it 'should have a error for new records not assign value' do
            @product = Product.new 
            expect(@product.category).to be_nil
          end
    end
end