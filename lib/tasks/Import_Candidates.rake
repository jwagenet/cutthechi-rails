require 'csv'

namespace :csv do

  desc "Import Candidates from CSV"
  task :Import_Candidates => :environment do

    csv_file_path = 'Import_Candidates.csv'

    CSV.foreach(csv_file_path) do |row|
      Candidate.create!({
        :name => row[0],
        :photo => row[1],
        :comment=> row[2],
	:commit=> row[3],        
      })
      puts "Row #{row[0]} added!"
    end
  end
end