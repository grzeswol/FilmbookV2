require 'rails_helper'

RSpec.describe "films/index", :type => :view do
  before(:each) do
    assign(:films, [
      Film.create!(
        :title => "Title",
        :director => "Director",
        :year => 1
      ),
      Film.create!(
        :title => "Title",
        :director => "Director",
        :year => 1
      )
    ])
  end

  it "renders a list of films" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
