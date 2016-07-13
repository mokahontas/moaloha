namespace :people do
  desc "TODO"
  task data: :environment do

    require 'nokogiri'
    require 'open-uri'
    require 'pry'
    base_url = "https://www.findthemissing.org/en/cases/"
    puts "People raked."
    img_url = "https://www.findthemissing.org/en/photos/full/"
    @all_people = MissingPerson.all
    @all_people.each do |p|
      puts ""
      puts p.first_name
      if p.namus_id.present?
        @person_id = p.namus_id
      else next
      end


      index = Nokogiri::HTML( open( "#{base_url}#{@person_id}" ) )
      begin
        p.height = index.css("#case_information div.column2-unit-right table tr:nth-child(6) .view_field").text
        p.weight = index.css("#case_information div.column2-unit-right table tr:nth-child(7) .view_field").text
        p.circumstances = index.css("#case_Circumstances").text
        p.hair_color = index.css("#physical_characteristics div:nth-child(2) tr:nth-child(1) td.view_field").text
        p.eye_color = index.css("#physical_characteristics div:nth-child(2) tr:nth-child(5) td.view_field").text
        p.image = (img_url + index.css("body .page-container .main .main-navigation dl:nth-child(3) .photo img").attr("src").value.gsub(/\D/, ''))
        p.date = Date.parse index.css("#case_information table tr:nth-child(6) td.view_field").text
      rescue
      end
      # img_index = Nokogiri::HTML( open( img_url + p.image ) )
      puts p.date
      puts p.image
      puts p.height
      puts p.weight
      puts p.hair_color
      puts p.eye_color
      puts p.circumstances
      puts ""
      p.save

    end
###################################################
# rescue OpenURI::HTTPError => e
# if e.message == '404 Not Found'
# # handle 404 error
# else
#   raise e
# end
    #first_name index.css(".view_field")[1].text => Cornelia
    #height index.css("#case_information div.column2-unit-right table tr:nth-child(6) .view_field").text
    #weight index.css("#case_information div.column2-unit-right table tr:nth-child(7) .view_field").text
    #image index.css("body .page-container .main .main-navigation dl:nth-child(3) .photo img").attr("src").value
    #circumstances index.css("#case_Circumstances").text
    #date index.css("#case_information table tr:nth-child(6) td.view_field").text
    #hair_color index.css("#physical_characteristics div:nth-child(2) tr:nth-child(1) td.view_field").text
    #eye_color index.css("#physical_characteristics div:nth-child(2) tr:nth-child(5) td.view_field").text
################################################
    # @person = MissingPerson.last


    # @person = MissingPerson.find_by(:firstname == "Menelek")
    # # namus_id="8455" Menelek
    # person_id = @person.namus_id.to_s
    #
    # index = Nokogiri::HTML( open( base_url + person_id ) )
    # # img = index.css("body .page-container .main .main-navigation dl:nth-child(3) .photo img").attr("src").value.gsub(/\D/, '')
    #
    # date = index.css("#case_information table tr:nth-child(6) td.view_field").text
    # date = Date.parse date
    # puts date

# binding.pry
  end

end
