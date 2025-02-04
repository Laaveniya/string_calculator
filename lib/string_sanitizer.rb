module StringSanitizer

  private

  def sanitize_string(string)
    get_delimiter(string).each do |delimiter|
      string = string.gsub(/^\/\/.*\n/, "").gsub(delimiter, ',')
    end

    string.split(',')
  end

  def get_delimiter(string)
    return ["\n"] unless string.start_with?('//')

    delimiters = string.lines.first.scan(/\[(.*?)\]/).flatten
    delimiters.empty? ? [string.lines.first[2]] : delimiters
  end
end
