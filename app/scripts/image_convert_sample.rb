base_image = Magick::ImageList.new('app/assets/images/base.png') # ベースイメージの読み込み

title1 = "hogehoge"
title2 = "fugafuga"
title3 = "日本語にほんご"

draw = Magick::Draw.new
# 画像、幅、高さ、X座標、Y座標, 文字列
draw.annotate(base_image, 0, 0, 40, 40, title1) do |options|
  options.font_family = 'Helvetica'
  #options.fill = 'white'
  #options.stroke = 'transparent'
  options.font = 'app/assets/fonts/NotoSansJP-Bold.otf'
  options.pointsize = 32
  #options.font_weight = Magick::BoldWeight
  #options.gravity = Magick::NorthGravity
  #options.gravity   = Magick::CenterGravity 
end

# 画像、幅、高さ、X座標、Y座標, 文字列
draw.annotate(base_image, 15, 0, 40, 120, title2) do |options|
  options.font_family = 'Helvetica'
  #options.fill = 'white'
  #options.stroke = 'transparent'
  options.font = 'app/assets/fonts/NotoSansJP-Bold.otf'
  options.pointsize = 32
  #options.font_weight = Magick::BoldWeight
  #options.gravity = Magick::NorthGravity
  #options.gravity   = Magick::CenterGravity 
end

# 画像、幅、高さ、X座標、Y座標, 文字列
draw.annotate(base_image, 15, 0, 40, 200, title3) do |options|
  options.font_family = 'Helvetica'
  #options.fill = 'white'
  #options.stroke = 'transparent'
  options.font = 'app/assets/fonts/NotoSansJP-Bold.otf'
  options.pointsize = 32
  #options.font_weight = Magick::BoldWeight
  #options.gravity = Magick::NorthGravity
  #options.gravity   = Magick::CenterGravity 
end



# file write
suffix = Time.current.strftime("%Y%m%dT%H%M%S")
base_image.write("app/assets/images/output_#{suffix}.png")

puts "open app/assets/images/output_#{suffix}.png"
