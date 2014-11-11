require 'rails_helper'

RSpec.describe "actors/edit", :type => :view do
  before(:each) do
    @actor = create(:actor)
  end

  it "renders the edit actor form" do
    render

    assert_select "form[action=?][method=?]", actor_path(@actor), "post" do
    end
  end
end
