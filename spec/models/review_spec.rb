require 'rails_helper'

describe Review do
  it { should belong_to :user }
  it { should belong_to :instrument }
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
end
