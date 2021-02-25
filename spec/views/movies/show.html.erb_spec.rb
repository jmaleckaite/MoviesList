require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      name: "Name",
      year: "Year",
      genre: "Genre",
      director: "Director",
      description: "Description",
      additional_information: "Additional Information"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Additional Information/)
  end
end
