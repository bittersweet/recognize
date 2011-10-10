#!/usr/bin/env ruby
require 'rubygems'
require "opencv"

if ARGV.length < 2
  puts "Usage: your_app_name source dest"
  exit
end

data = "./data/haarcascades/haarcascade_frontalface_alt.xml"
detector = OpenCV::CvHaarClassifierCascade::load(data)
image = OpenCV::IplImage.load(ARGV[0])
detector.detect_objects(image) do |region|
  color = OpenCV::CvColor::Blue
  image.rectangle! region.top_left, region.bottom_right, :color => color
end
image.save_image(ARGV[1])
