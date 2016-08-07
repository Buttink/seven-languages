class CsvReader

  def self.open(path, &onOpen)
    file = File.open(path)
    begin
      headers = file.take(1).flat_map { |t| t.split(",").map { |h| h.strip() } }
      content = file.map { |t| t.split(",").map { |c| c.strip() } }.map { |t| CsvRow.create(headers, t) }
      onOpen.call(
          CsvReader.new(
              headers,
              content))
    ensure
      file.close
    end
  end

  include Enumerable

  def initialize(headers, content)
    @headers = headers
    @content = content
  end

  def each(&block)
    @content.each(&block)
  end

  attr_accessor :headers

  private :initialize
end

class CsvRow

  def self.create headers, content
    CsvRow.new(headers.zip(content).map { |h, c| [h, c] }.to_h)
  end

  def initialize content_map
    @map = content_map
  end

  def method_missing name, *args, &block
    name = name.to_s
    if @map.has_key?(name)
      return @map[name]
    end

    super
  end

  def to_s
    @map.to_s
  end

  attr_accessor :headers

  private :initialize
end
