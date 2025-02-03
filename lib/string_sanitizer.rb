module StringSanitizer

  private

  def sanitize_string(string)
    delimiter = "\n"
    delimiter = string.lines.first[2] if string.start_with?('//')
    string.gsub(delimiter, ',')
  end
end
