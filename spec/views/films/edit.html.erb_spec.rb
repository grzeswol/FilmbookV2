require 'rails_helper'

RSpec.describe "films/edit", :type => :view do
  before(:each) do
    @film = assign(:film, Film.create!(
      :title => "MyString",
      :director => "MyString",
      :year => 1
    ))
  end

  it "renders the edit film form" do
    render

    assert_select "form[action=?][method=?]", film_path(@film), "post" do

      assert_select "input#film_title[name=?]", "film[title]"

      assert_select "input#film_director[name=?]", "film[director]"

      assert_select "input#film_year[name=?]", "film[year]"
    end
  end
end
