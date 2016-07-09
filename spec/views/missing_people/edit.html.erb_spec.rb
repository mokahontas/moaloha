require 'rails_helper'

RSpec.describe "missing_people/edit", type: :view do
  before(:each) do
    @missing_person = assign(:missing_person, MissingPerson.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :sex => "MyString",
      :location => "MyText",
      :island => "MyString",
      :height => "MyString",
      :weight => "MyString",
      :image => "MyText",
      :eye_color => "MyString",
      :information => "MyText",
      :middle_name => "MyString",
      :nickname => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :ethnicity => "MyString",
      :age => 1,
      :circumstances => "MyText"
    ))
  end

  it "renders the edit missing_person form" do
    render

    assert_select "form[action=?][method=?]", missing_person_path(@missing_person), "post" do

      assert_select "input#missing_person_first_name[name=?]", "missing_person[first_name]"

      assert_select "input#missing_person_last_name[name=?]", "missing_person[last_name]"

      assert_select "input#missing_person_sex[name=?]", "missing_person[sex]"

      assert_select "textarea#missing_person_location[name=?]", "missing_person[location]"

      assert_select "input#missing_person_island[name=?]", "missing_person[island]"

      assert_select "input#missing_person_height[name=?]", "missing_person[height]"

      assert_select "input#missing_person_weight[name=?]", "missing_person[weight]"

      assert_select "textarea#missing_person_image[name=?]", "missing_person[image]"

      assert_select "input#missing_person_eye_color[name=?]", "missing_person[eye_color]"

      assert_select "textarea#missing_person_information[name=?]", "missing_person[information]"

      assert_select "input#missing_person_middle_name[name=?]", "missing_person[middle_name]"

      assert_select "input#missing_person_nickname[name=?]", "missing_person[nickname]"

      assert_select "input#missing_person_longitude[name=?]", "missing_person[longitude]"

      assert_select "input#missing_person_latitude[name=?]", "missing_person[latitude]"

      assert_select "input#missing_person_ethnicity[name=?]", "missing_person[ethnicity]"

      assert_select "input#missing_person_age[name=?]", "missing_person[age]"

      assert_select "textarea#missing_person_circumstances[name=?]", "missing_person[circumstances]"
    end
  end
end
