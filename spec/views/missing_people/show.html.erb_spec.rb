require 'rails_helper'

RSpec.describe "missing_people/show", type: :view do
  before(:each) do
    @missing_person = assign(:missing_person, MissingPerson.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :sex => "Sex",
      :location => "MyText",
      :island => "Island",
      :height => "Height",
      :weight => "Weight",
      :image => "MyText",
      :eye_color => "Eye Color",
      :information => "MyText",
      :middle_name => "Middle Name",
      :nickname => "Nickname",
      :longitude => 1.5,
      :latitude => 1.5,
      :ethnicity => "Ethnicity",
      :age => 1,
      :circumstances => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Island/)
    expect(rendered).to match(/Height/)
    expect(rendered).to match(/Weight/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Eye Color/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Ethnicity/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
