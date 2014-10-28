require 'rails_helper'

RSpec.describe "films/edit", :type => :view do
  before(:each) do
    @film = create(:film)
  end

  it "renders the edit film form" do
    render

    assert_select "form[action=?][method=?]", film_path(@film), "post" do

      assert_select "input#film_title[name=?]", "film[title]"

      assert_select "input#film_director[name=?]", "film[director]"

      assert_select "input#film_year[name=?]", "film[year]"

      assert_select "input#film_image[name=?]", "film[image]"
    end
  end
end
