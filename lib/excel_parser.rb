class ExcelParser
  
  def self.parse_doc(file_path)
    doc = Excel.new(file_path)
    debugger
    puts doc
  end
  
end