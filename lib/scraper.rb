require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

puts doc.css(".title-3Kf9MY")
headers = doc.css(".title-3Kf9MY")

headers.each { |header| puts header.text unless header.text == "In the news"}