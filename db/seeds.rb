# create_table "missing_people", force: :cascade do |t|
#   t.string   "first_name"
#   t.string   "last_name"
#   t.string   "sex"
#   t.text     "location"
#   t.string   "island"
#   t.string   "height"
#   t.string   "weight"
#   t.text     "image"
#   t.string   "eye_color"
#   t.text     "information"
#   t.string   "middle_name"
#   t.string   "nickname"
#   t.datetime "date"
#   t.float    "longitude"
#   t.float    "latitude"
#   t.string   "ethnicity"
#   t.integer  "age"
#   t.text     "circumstances"

# Missing_people.create :first_name => '', :last_name => '', :sex => '', :age => '', :middle_name => '', :nickname => '', :location => '', :island => '', :height => '', :weight => '', :image => '', :eye_color => '', :information => '', :date => '', :longitude => '', :latitude => '', :ethnicity => '', :circumstance => ''

MissingPerson.destroy_all

moreira = MissingPerson.create :first_name => 'Moreira', :last_name => 'Monsalve', :sex => 'Female', :age => '46', :middle_name => 'Elena', :nickname => 'Mo', :location => '10 Piwai Lane', :island => 'Maui', :height => '67', :weight => '170', :image => 'https://scontent-syd1-1.xx.fbcdn.net/v/t1.0-9/11219685_10204953554503189_3281976997439619978_n.jpg?oh=582857f20ec2c27313ef2bff1f281738&oe=5801B58A', :eye_color => 'brown', :information => '', :date => '', :longitude => '', :latitude => '', :ethnicity => 'Hispanic Caucasion', :circumstances => 'Last seen at her ex-boyfriend s house in Wailuku around 10pm'
