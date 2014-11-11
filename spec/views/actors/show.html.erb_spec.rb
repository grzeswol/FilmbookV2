require 'rails_helper'

RSpec.describe "actors/show", :type => :view do
  before(:each) do
    @actor = create(:actor)
  end

  it "renders attributes in <p>" do
    render
  end
end
