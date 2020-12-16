require './Series'

series = Series.new('1234')

print series.series

series.series = '5678'

print series.series

print series.equals?('5678')