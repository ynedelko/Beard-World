require 'rails_helper'

describe Review do
  it { should validate_presence_of :user}
  it { should validate_presence_of :text}
  it { should belong_to :beard}
end
