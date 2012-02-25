module ApplicationHelper
  def title
    base_title = "Look, I said aliens are invading our planet..."
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
