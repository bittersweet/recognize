### installation

$ brew install opencv
$ git clone git://github.com/ser1zw/ruby-opencv.git
$ cd ruby-opencv
$ git checkout master  # for OpenCV 2.3 or later. To use OpenCV 2.2, type "git checkout OpenCV_2.2" instead
$ ruby extconf.rb --with-opencv-dir=/path/to/opencvdir
$ make
$ make install

### usage

$ ruby recognize original_file output_file
