require 'rails_helper'

RSpec.describe "actors/new", :type => :view do
  before(:each) do
    assign(:actor, build(:actor))
  end

  it "renders new actor form" do
    render

    assert_select "form[action=?][method=?]", actors_path, "post" do
    end
  end
end
