
require_relative 'CsvReader'

CsvReader.open(ARGV[0]){|reader|
  reader.each{ |row| puts "%s: '%s'" % [row.first, row.last] }
}
