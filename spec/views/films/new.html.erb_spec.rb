require 'rails_helper'

RSpec.describe "films/new", :type => :view do
  before(:each) do
    assign(:film, Film.new(
      :title => "MyString",
      :director => "MyString",
      :year => 1
    ))
  end

  it "renders new film form" do
    render

    assert_select "form[action=?][method=?]", films_path, "post" do

      assert_select "input#film_title[name=?]", "film[title]"

      assert_select "input#film_director[name=?]", "film[director]"

      assert_select "input#film_year[name=?]", "film[year]"
    end
  end
end
