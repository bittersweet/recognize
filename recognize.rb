#!/usr/bin/env ruby
require 'rubygems'
require "opencv"

data = "./data/haarcascades/haarcascade_frontalface_alt.xml"
detector = OpenCV::CvHaarClassifierCascade::load(data)
image = OpenCV::IplImage.load(ARGV[0])
objects = detector.detect_objects(image)

p "Faces found: #{objects.length}"

if objects.length > 0
  objects.each do |region|
    color = OpenCV::CvColor::Blue
    image.rectangle! region.top_left, region.bottom_right, :color => color
  end
  image.save_image("processed_#{ARGV[0]}")
end
