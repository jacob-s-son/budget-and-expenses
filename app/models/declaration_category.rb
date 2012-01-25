class DeclarationCategory < ActiveRecord::Base
  has_many :declaration_statements
  has_many :subcategories, :class_name => "DeclarationCategory", :foreign_key => :parent_category_id
  belongs_to :parent_category, :class_name => "DeclarationCategory", :foreign_key => :parent_category_id
  
  # NONE_EXPORTABLE_COLUMNS = ["id","parent_category_id"]
  # 
  # def self.exportable_values
  #   column_names - NONE_EXPORTABLE_COLUMNS
  # end
  # 
  # def self.assocs
  #    [ "subcategories" ]
  # end
  # 
  # def self.to_xml
  #   b = Nokogiri::XML::Builder.new
  #   b.RDF("xmlns:rdf" => "http://www.w3.org/1999/02/22-rdf-syntax-ns#", "xmlns:dc" => "#{OBJECT_URLS[:dc]}#") {
  #     b.parent.namespace = b.parent.add_namespace_definition("rdf", "http://www.w3.org/2003/05/soap-envelope")
  #     DeclarationCategory.all.each do |c|
  #       b['rdf'].Description("rdf:about" => "#{OBJECT_URLS[:dc]}/#{c.id}") {
  #         c.class.exportable_values.each do |key|
  #           b["dc"].send(key, ( c.send(key) ) )
  #         end
  #         
  #         c.class.assocs.each do |a|
  #           c.send(a).each do |assoc|
  #             b["dc"].send("subcategory", ( c.send(key) ) )
  #           end
  #         end
  #       }
  #     end
  #   }
  #   File.open("category.xml", "w") {|f| f.write(b.to_xml) }
  # end
end
  