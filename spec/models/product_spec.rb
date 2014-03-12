require 'spec_helper'

describe Product do
  subject(:product) { Product.save title: 'test' }
  it { should validate_presence_of(:title) }
end
