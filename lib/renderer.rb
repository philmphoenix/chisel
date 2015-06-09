class Renderer
  def self.render(chunked_text)
    rendered = chunked_text.map do |chunk|
      count = chunk.chars.count { |char| char == "#" }
      chunk_without_hashtags = chunk.chars.reject { |char| char == "#" }
      "<#{self.header(count)}>#{chunk_without_hashtags.join}</#{self.header(count)}>"
    end
  end

  def self.header(count)
    if count == 0
      "p"
    else
      "h#{count}"
    end
  end
end
