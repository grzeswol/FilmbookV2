require 'rails_helper'

RSpec.describe "films/show", :type => :view do
  before(:each) do
    @film = create(:film)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Film/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/film.jpg/)
    expect(rendered).to match(/1990/)
  end
end
