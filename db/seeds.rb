brand_detail = [
  ['Dr.Dre', 'www.google.com', '']
]
brand_detail.each do |title, link|
  Brand.create(title: title, link: link)
end
