module TagsHelper
  def clear_tags(tag)
    tag.split(',').join(",<br> ").gsub(/^\["+|\"]+$/, "").gsub('"', '').gsub('\n', '').html_safe
  end
end