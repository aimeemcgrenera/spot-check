require 'csv'

COLUMNS = [
  'row_id',
  'status',
  'zone',
  'odd_even',
  'address_range_low',
  'address_range_high',
  'street_direction',
  'street_name',
  'street_type',
  'second_street_direction',
  'buffer',
  'ward_low',
  'ward_low'
]

print "\nSeeding..."

dir = File.dirname(File.expand_path(__FILE__))
lineno = 1
CSV.foreach(File.join(dir, 'zones-raw.csv'), 'r:ISO8859-1') do |row|
  lineno = $.

  next if lineno == 1
  print '.' if lineno % 1000 == 0

  # Humanize descriptions
  row[1] = row[1].capitalize.gsub(/([\,\/])\s*/, '\1 ').gsub(/\s*\&\s*/, ' \1 ')

  entry = {}

  COLUMNS.each_with_index do |column, idx|
    entry[column] = row[idx]
  end

  Zone.create!(entry)
end

print "done."
print "\n#{lineno} zone entries imported."
