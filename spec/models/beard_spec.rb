require 'rails_helper'

describe Beard do
  it { should validate_presence_of :name }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :image_url }
end
