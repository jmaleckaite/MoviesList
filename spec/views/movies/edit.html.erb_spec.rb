require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      name: "MyString",
      year: "MyString",
      genre: "MyString",
      director: "MyString",
      description: "MyString",
      additional_information: "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input[name=?]", "movie[name]"

      assert_select "input[name=?]", "movie[year]"

      assert_select "input[name=?]", "movie[genre]"

      assert_select "input[name=?]", "movie[director]"

      assert_select "input[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[additional_information]"
    end
  end
end
