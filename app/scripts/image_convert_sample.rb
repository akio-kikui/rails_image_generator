base_image = Magick::ImageList.new('app/assets/images/base.png') # ベースイメージの読み込み

title = "hogehoge"

draw = Magick::Draw.new
# 画像、幅、高さ、X座標、Y座標, 文字列
draw.annotate(base_image, 15, 0, 75, 75, title) do |options|
  options.font_family = 'Helvetica'
  #options.fill = 'white'
  #options.stroke = 'transparent'
  options.pointsize = 64
  #options.font_weight = Magick::BoldWeight
  #options.gravity = Magick::NorthGravity
end

# file write
suffix = Time.current.strftime("%Y%m%dT%H%M%S")
base_image.write("app/assets/images/output_#{suffix}.png")

puts "open app/assets/images/output_#{suffix}.png"
