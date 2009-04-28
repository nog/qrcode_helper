require 'uri'

module QRCodeHelper
  def qrcode_image_tag(text, size, options={})
    image_tag(qrcode_url(text, size), options)
  end

  def qrcode_url(text, size)
    size = size.to_s
    chl = URI.encode(text, /[^\w\d]/n)
    "http://chart.apis.google.com/chart?chs=#{size}x#{size}&cht=qr&chl=#{chl}"
  end
end
