require 'rails_helper'

describe Instrument do
  it { should validate_presence_of :brand }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should have_many :reviews }
end
