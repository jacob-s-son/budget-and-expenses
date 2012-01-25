class DeclarationStatement < ActiveRecord::Base
  belongs_to :declaration_category
  
  # def self.to_xml
  #   b = Nokogiri::XML::Builder.new
  #   b.RDF("xmlns:rdf" => "http://www.w3.org/1999/02/22-rdf-syntax-ns#", "xmlns:ds" => "http://www.declaration.fake/ds#") {
  #     b.parent.namespace = b.parent.add_namespace_definition("rdf", "http://www.w3.org/2003/05/soap-envelope")
  #     DeclarationStatement.all.each do |s|
  #       b['rdf'].Description("rdf:about" => "http://www.declaration.fake/ds/#{s.id}") {
  #         s.attributes.each do |key, val|
  #           b["ds"].send(key, val) unless key.to_s == "id"
  #         end
  #       }
  #     end
  #   }
  #   File.open("statement.xml", "w") {|f| f.write(b.to_xml) }
  # end
end