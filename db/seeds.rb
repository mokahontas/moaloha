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
# create_table "users", force: :cascade do |t|
#   t.string   "name"
#   t.string   "email"
#   t.string   "password_digest"
#   t.boolean  "admin"
#   t.datetime "created_at",      null: false
#   t.datetime "updated_at",      null: false
User.destroy_all
User.create :name => 'Lex', :email => 'lex@ga.co', :password_digest => 'chicken', :admin => 'true'

# MissingPerson.create :first_name => '', :last_name => '', :sex => '', :age => '', :middle_name => '', :nickname => '', :location => '', :island => '', :height => '', :weight => '', :image => '', :eye_color => '', :information => '', :date => '', :longitude => '', :latitude => '', :ethnicity => '', :circumstances => ''

MissingPerson.destroy_all

MissingPerson.create :first_name => 'Moreira', :last_name => 'Monsalve', :sex => 'Female', :age => '46', :middle_name => 'Elena', :nickname => 'Mo', :location => '10 Piwai Lane', :island => 'Maui', :eye_color => 'brown', :information => '', :date => '01/12/2014', :longitude => '', :latitude => '', :ethnicity => 'Hispanic Caucasion', :link => 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fmowatchmoreiramonsalve%2F&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1776990429249548', :hair_color => 'brown', :namus_id => '23732'

MissingPerson.create :first_name => 'Carly', :last_name => 'Scott', :sex => 'Female', :age => '28', :middle_name => 'Joann', :nickname => 'Charli', :location => 'Haiku', :island => 'Maui', :image => 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/1458524_646586072080685_6323848319806635311_n.jpg?oh=294a931bc70a95347dea83a99747e00d&oe=582836D9&__gda__=1479239817_fd3f64ca5e7de8bb6e2fa5bdbfe9efd9', :eye_color => 'green', :information => '', :longitude => '', :latitude => '', :ethnicity => 'caucasian', :circumstances => 'Carly Joann Scott was last seen Sunday 2/9/2014 in Haiku, Maui', :link => 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFindCharliScott%2F&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1776990429249548', :hair_color => 'red/auburn', :namus_id => '23930'

MissingPerson.create :first_name => 'Billy', :last_name => 'Oliveira', :sex => 'Male', :age => '39', :middle_name => '', :nickname => '', :location => '1464 Hana Highway', :island => 'Maui', :height => '', :weight => '180', :image => 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xta1/v/t1.0-9/12066014_901315979947014_1531084860651429267_n.jpg?oh=8618df31ce9e99ce133b65ffa5e5b519&oe=57FB88D9&__gda__=1479690064_91326ba65a02e9090f0f10ba11701362', :eye_color => 'brown', :information => '', :date => Date.new(2015, 07, 13), :longitude => '', :latitude => '', :ethnicity => 'Hawaiian', :circumstances => 'Billy Oliveira has been missing from his home in Nahiku, Maui since Monday July 13, 2015', :link => 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhelpfindbillyoliveira%2F&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1776990429249548', :hair_color => 'black'

MissingPerson.create :first_name => 'Noah P.', :last_name => 'Montemayor', :namus_id => '34283', :sex => 'Male', :age => 16, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Jr', :last_name => 'Castillo', :namus_id => '32070', :sex => 'Male', :age => 56, :location => 'Kilauea, HI', :ethnicity => 'Other'
MissingPerson.create :first_name => 'Loren J.', :last_name => 'SALIS', :namus_id => '30339', :sex => 'Male', :age => 55, :location => 'Hawi, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Tristan R.', :last_name => 'Postadan', :namus_id => '30837', :sex => 'Male', :age => 20, :location => 'Captain Cook, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Mack', :last_name => 'Kilion', :namus_id => '28512', :sex => 'Male', :age => 28, :location => 'Kailua Kona , HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Ronald S.', :last_name => 'Bartel', :namus_id => '28499', :sex => 'Male', :age => 50, :location => 'Lihue, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Casey L.', :last_name => 'Cloyd', :namus_id => '22693', :sex => 'Male', :age => 63, :location => 'Ocean View , HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Steven', :last_name => 'Wycoff', :namus_id => '20904', :sex => 'Male', :age => 66, :location => 'Waikoloa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Richard', :last_name => 'Agor', :namus_id => '26345', :sex => 'Male', :age => 34, :location => 'Kekaha, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'John A.', :last_name => 'Spillane', :namus_id => '23931', :sex => 'Male', :age => 62, :location => 'Honokaa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Scott H.', :last_name => 'Akina', :namus_id => '20235', :sex => 'Male', :age => 56, :location => 'Kilauea, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'John F.', :last_name => 'Eckert', :namus_id => '19171', :sex => 'Male', :age => 47, :location => 'Kailua-Kona, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Ilya N.', :last_name => 'Lomov', :namus_id => '20115', :sex => 'Male', :age => 42, :location => 'Haena, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Charles E.', :last_name => 'Slezak', :namus_id => '13180', :sex => 'Male', :age => 67, :location => 'Koloa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Rollin C.', :last_name => 'Fabiana', :namus_id => '12264', :sex => 'Male', :age => 46, :location => 'Lihue, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Roseanna', :last_name => 'Pontorno', :namus_id => '11876', :sex => 'Female', :age => 61, :location => 'Koloa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Gordon K.', :last_name => 'Kealoha', :namus_id => '12555', :sex => 'Male', :age => 59, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Naomi M.', :last_name => 'Sanders', :namus_id => '12325', :sex => 'Female', :age => 42, :location => 'Kealakekua , HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Vladimir', :last_name => 'Horak', :namus_id => '10602', :sex => 'Male', :age => 63, :location => 'Kalaheo, HI', :ethnicity => 'Unsure'
MissingPerson.create :first_name => 'Menelek M.', :last_name => 'Brown', :namus_id => '8455', :sex => 'Male', :age => 27, :location => 'Pearl Harbor , HI', :ethnicity => 'Black/African American'
MissingPerson.create :first_name => 'Laura', :last_name => 'Vogel', :namus_id => '5315', :sex => 'Female', :age => 43, :location => 'Haiku, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Daniel', :last_name => 'Lambertson', :namus_id => '5038', :sex => 'Male', :age => 39, :location => 'Aiea, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Samuel W.', :last_name => 'Bower ', :namus_id => '3959', :sex => 'Male', :age => 58, :location => 'Kailua-Kona, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Tomoko ', :last_name => 'Ioh ', :namus_id => '3957', :sex => 'Female', :age => 41, :location => 'Kailua-Kona, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Aaron G.', :last_name => 'Lamson', :namus_id => '10010', :sex => 'Male', :age => 34, :location => 'Moloaa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Marlo K.', :last_name => 'Moku', :namus_id => '5176', :sex => 'Female', :age => 33, :location => 'Hilo, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Kimberly', :last_name => 'Jacobs', :namus_id => '1393', :sex => 'Female', :age => 47, :location => 'Waikiki, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Jesse G.', :last_name => 'Pinegar', :namus_id => '7464', :sex => 'Male', :age => 22, :location => 'Waiahuakua Valley, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Beverly M.', :last_name => 'Chandler', :namus_id => '5672', :sex => 'Female', :age => 52, :location => 'Wainae, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Sean', :last_name => 'Ryan', :namus_id => '1166', :sex => 'Male', :age => 23, :location => 'Keeau, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Kimberly A.', :last_name => 'Cardarella', :namus_id => '551', :sex => 'Female', :age => 35, :location => 'Pahoa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Antonio', :last_name => 'Castro', :namus_id => '1265', :sex => 'Male', :age => 75, :location => 'South Kihei, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Susan M.', :last_name => 'Scanlan', :namus_id => '12702', :sex => 'Female', :age => 54, :location => 'Koloa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Piotr', :last_name => 'Drabik', :namus_id => '10108', :sex => 'Male', :age => 34, :location => 'Lihue, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Daniel J.', :last_name => 'Marks', :namus_id => '591', :sex => 'Male', :age => 24, :location => 'Kauai, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Robert', :last_name => 'Amaral', :namus_id => '1282', :sex => 'Male', :age => 77,:location => 'Lanai, HI', :ethnicity => 'Other'
MissingPerson.create :first_name => 'Lee-Ann', :last_name => 'Lauaki', :namus_id => '1283', :sex => 'Female', :age => 31, :location => 'Maui, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Daniel P.', :last_name => 'DeSimone', :namus_id => '554', :sex => 'Male', :age => 45, :location => 'Pahoa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Gilbert P.', :last_name => 'Caravallo', :namus_id => '549', :sex => 'Male', :age => 35, :location => 'Pearl City, HI', :ethnicity => 'Other'
MissingPerson.create :first_name => 'Francesca A.', :last_name => 'O Brien', :namus_id => '596', :sex => 'Female', :age => 55, :location => 'Pahoa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Courtney', :last_name => 'Marcher', :namus_id => '590', :sex => 'Female', :age => 22, :location => 'Velzeyland, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Michael A.', :last_name => 'Elenes ', :namus_id => '4316', :sex => 'Male', :age => 51, :location => 'South Kohala, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Hank', :last_name => 'Roberts Sr.', :namus_id => '4312', :sex => 'Male', :age => 71, :location => 'Kalapana, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Bradford T.', :last_name => 'Turek', :namus_id => '2749', :sex => 'Male', :age => 28, :location => 'Kauai, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Astara A.', :last_name => 'Evenstar ', :namus_id => '4274', :sex => 'Female', :age => 15, :location => 'Maui County, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Cristian A.', :last_name => 'Sedeno', :namus_id => '8960', :sex => 'Female', :age => 15, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Timothy J.', :last_name => 'Lynch', :namus_id => '557', :sex => 'Male', :age => 44, :location => 'Hawaii National Park, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Christopher M.', :last_name => 'Bacsain', :namus_id => '488', :sex => 'Male', :age => 32, :location => 'Lihue, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'John T.', :last_name => 'Madigan III', :namus_id => '587', :sex => 'Male', :age => 52, :location => 'Paia, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Victorio A.', :last_name => 'Santiago', :namus_id => '3969', :sex => 'Male', :age => 38, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Daniel B.', :last_name => 'Santiago', :namus_id => '2762', :sex => 'Male', :age => 7, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Noel B.', :last_name => 'Santiago', :namus_id => '2763', :sex => 'Male', :age => 11, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Priscilla S.', :last_name => 'Martinez', :namus_id => '1284', :sex => 'Female', :age => 54, :location => 'Honokowai, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Jeffrey A.', :last_name => 'Henderson', :namus_id => '556', :sex => 'Male', :age => 48, :location => 'Kona, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Carlos V.', :last_name => 'Carrillo', :namus_id => '553', :sex => 'Male', :age => 28, :location => 'Honolulu, HI, HI', :ethnicity => 'Other'
MissingPerson.create :first_name => 'Davis T.', :last_name => 'Cortez', :namus_id => '12306', :sex => 'Male', :age => 27, :location => 'Kapaa, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Phillip G.', :last_name => 'Mounts', :namus_id => '485', :sex => 'Male', :age => 20, :location => 'Lihue, HI, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Melanie R.', :last_name => 'Summer', :namus_id => '11699', :sex => 'Female', :age => 49, :location => 'Lihue, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Peter J.', :last_name => 'Kema', :namus_id => '6258', :sex => 'Male', :age => 6, :location => 'Big Island, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Sarah M.', :last_name => 'Elgohary', :namus_id => '1955', :sex => 'Female', :age => 3, :location => 'Honolulu, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Benjamin R.', :last_name => 'Sjoberg', :namus_id => '1019', :sex => 'Male', :age => 23, :location => 'islands of Kauai and Niihau, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Steven W.', :last_name => 'Branston', :namus_id => '4470', :sex => 'Male', :age => 20, :location => 'Honolulu, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Mark K.', :last_name => 'Cajski ', :namus_id => '4462', :sex => 'Male', :age => 20, :location => 'Hilo, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Noquisi-Ama', :last_name => 'Blossom ', :namus_id => '4385', :sex => 'Female', :age => 15, :location => 'Makawao, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Jeffrey J.', :last_name => 'Zoltowski', :namus_id => '601', :sex => 'Male', :age => 23, :location => 'Wailua, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Jason R.', :last_name => 'Jeffers', :namus_id => '27037', :sex => 'Male', :age => 19, :location => 'Honolulu, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Thomas A.', :last_name => 'Hanson', :namus_id => '2967', :sex => 'Male', :age => 27, :location => 'Waipahu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Jie Z.', :last_name => 'Li', :namus_id => '6301', :sex => 'Female', :age => 12, :location => 'Honolulu, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Gary', :last_name => 'Hayward', :namus_id => '11951', :sex => 'Male', :age => 36, :location => 'Poipu, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Stacey H.', :last_name => 'Kelekoma', :namus_id => '4590', :sex => 'Female', :age => 14, :location => 'Anahola, HI', :ethnicity => 'Asian or Pacific Islander'
MissingPerson.create :first_name => 'Alan F.', :last_name => 'Chapman', :namus_id => '10923', :sex => 'Male', :age => 36, :location => 'Koloa, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Greg P.', :last_name => 'Farmer', :namus_id => '5151', :sex => 'Male', :age => 30, :location => 'Maui, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Robert E.', :last_name => 'Spurlock', :namus_id => '600', :sex => 'Male', :age => 19, :location => 'Schofield, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Charlotte M.', :last_name => 'Moriarty', :namus_id => '595', :sex => 'Female', :age => 31, :location => 'Hauula, HI, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'John M.', :last_name => 'McMinn', :namus_id => '19254', :sex => 'Male', :age => 26, :location => 'Hanalei, HI', :ethnicity => 'White'
MissingPerson.create :first_name => 'Cordelia', :last_name => 'McMinn', :namus_id => '19259', :sex => 'Female', :age => 26, :location => 'Hanalei, HI', :ethnicity => 'White'
