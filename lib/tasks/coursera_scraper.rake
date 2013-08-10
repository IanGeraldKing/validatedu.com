namespace :coursera_scraper do
  desc "TODO"
  task read_api: :environment do
  	require 'json'
  	require 'open-uri'

  	url = 'https://www.coursera.org/maestro/api/topic/list?full=1'
  	raw_data = open(url).read
  	JSON.parse(raw_data).each do |data|
  		course = Course.new name: data["name"]
  		url = 'https://www.coursera.org/maestro/api/topic/information?topic-id=' + data["short_name"]
  		course_data = JSON.parse(open(url).read)
  		course.image_url = course_data["photo"]
  		course.save!
  	end
  end

end
