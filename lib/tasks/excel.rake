namespace :excel do    
  desc "scrapes tenders with params passed - country, date_from, to_page"
  task :scrape, [ :folder_path ] => [ :environment ] do |t, args|
     args.with_defaults(:folder_path => "#{Rails.root}/xls")
    
    Dir.chdir args.folder_path
    Dir.glob("*.xls").each do | xls |
      ExcelParser.parse_doc xls
    end
  end
end