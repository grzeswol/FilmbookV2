require 'rails_helper'

RSpec.describe "films/index", :type => :view do
  before(:each) do
    assign(:films, [
      create(:film),
			create(:film)
    ])
  end

  it "renders a list of films" do
    render
    assert_select "tr>td", :text => "Film".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => 1990.to_s, :count => 2
  end
end
