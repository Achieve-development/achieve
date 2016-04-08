# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base  

 # リサイズしたり画像形式を変更するのに必要
  include CarrierWave::RMagick

 # 画像の上限を700pxにする
  process :resize_to_limit => [700, 700]

  # 保存形式をJPGにする
  process :convert => 'jpg'

  # サムネイルを生成する設定
  version :thumb do
    process :resize_to_limit => [73, 73]
  end

  # jpg,jpeg,gif,pngしか受け付けない
  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
  def store_dir
    "uploads/#{model.id}"
  end
 
  def cache_dir
    "tmp/uploads/cache/#{model.id}"
  end
  
end