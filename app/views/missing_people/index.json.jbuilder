json.array!(@missing_people) do |missing_person|
  json.extract! missing_person, :id, :first_name, :last_name, :sex, :location, :island, :height, :weight, :image, :eye_color, :information, :middle_name, :nickname, :date, :longitude, :latitude, :ethnicity, :age, :circumstances
  json.url missing_person_url(missing_person, format: :json)
end
