require './Series'
require './Display'

series = Series.new('3857')
display = Display.new

print series.series

display.hint(series.full_comparison('3875'))
