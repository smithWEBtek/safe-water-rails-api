require 'csv'

def load(file)
  csv_text = File.read(Rails.root.join('lib', 'seeds', "#{file}.csv"))
  csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')

  cols = []
  csv.first.to_hash.keys.each do |k|
    cols.push(k.downcase.gsub("#{file}.", '')) if k
  end
  binding.pry
  cols
end

def main 
  load('water_system')
end

main
