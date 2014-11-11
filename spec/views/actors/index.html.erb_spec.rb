require 'rails_helper'

RSpec.describe "actors/index", :type => :view do
  before(:each) do
    assign(:actors, [
			create(:actor),
			create(:actor),
    ])
  end

  it "renders a list of actors" do
    render
  end
end
