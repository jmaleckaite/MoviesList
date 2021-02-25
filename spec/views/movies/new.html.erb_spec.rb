require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      name: "MyString",
      year: "MyString",
      genre: "MyString",
      director: "MyString",
      description: "MyString",
      additional_information: "MyString"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[name]"

      assert_select "input[name=?]", "movie[year]"

      assert_select "input[name=?]", "movie[genre]"

      assert_select "input[name=?]", "movie[director]"

      assert_select "input[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[additional_information]"
    end
  end
end
