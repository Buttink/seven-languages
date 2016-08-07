
require_relative 'CsvReader'

CsvReader.open("test.csv"){|reader|
  reader.each{ |row| puts "%s %s" % [row.first, row.last] }
}
