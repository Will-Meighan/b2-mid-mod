require 'rails_helper'

describe "validations" do
  it {should validate_presence_of :name}
end
