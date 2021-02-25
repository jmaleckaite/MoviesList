require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        name: "Name",
        year: "Year",
        genre: "Genre",
        director: "Director",
        description: "Description",
        additional_information: "Additional Information"
      ),
      Movie.create!(
        name: "Name",
        year: "Year",
        genre: "Genre",
        director: "Director",
        description: "Description",
        additional_information: "Additional Information"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Year".to_s, count: 2
    assert_select "tr>td", text: "Genre".to_s, count: 2
    assert_select "tr>td", text: "Director".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "Additional Information".to_s, count: 2
  end
end
