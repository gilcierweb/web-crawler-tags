module TagsHelper
  def clear_tags(tag)
    tag.split(',').join(",<br> ").gsub(/^\["+|\"]+$/, "").gsub('"', '').gsub('\n', '').gsub('\t', '').html_safe
  end
end