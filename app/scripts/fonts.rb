puts "RMagick fonts"
Magick.fonts.each do |font|
  puts font.name
end
