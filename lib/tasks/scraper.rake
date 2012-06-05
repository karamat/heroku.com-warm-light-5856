require 'open-uri'

desc "Rake task to scrape web pages and fetch information in them."
task :spider => :environment do
  yml_settings = YAML::load(File.open(Rails.root.join('config/scraper.yml')))
  yml_settings.each do |key,val|
    if val['enable'] == true
 
      most_runs_url = "http://stats.espncricinfo.com/ci/engine/records/batting/most_runs_career.html?id=6787;type=tournament"
      get_most_runs(most_runs_url)
    end 
  end
end

def get_most_runs(most_runs_url)
  document = Nokogiri::HTML(open(most_runs_url))
  columns = ['Player', 'Mat', 'Inns', 'NO', 'Runs', 'HS', 'Ave', 'BF', 'SR', '100', '50', '0', '4s', '6s']
  data = []
  table = document.css('table.engineTable').first
  num_rows = table.css('tbody tr.data2').length
  num_rows.times do |i|
    row = {}
    table.css('tbody tr.data2')[i].css('td').each_with_index do |col,index| 
      row[columns[index]]||=col.text
    end
    data << row
  end
  data.each do |row|
    puts row.inspect
  end
end

def download_html_page(file_path, url)
  page = Mechanize.new.get(url)
  File.open(file_path,'w') {|file| file.puts page.content}
end

def get_file_name(directory, url)
  "#{directory}#{url.split('/').last.gsub(/\W/,'')}"
end
