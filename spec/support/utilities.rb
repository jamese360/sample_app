def full_title(page_title)
  base_title = "Your robotic eye in the sky"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
