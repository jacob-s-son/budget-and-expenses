require 'nokogiri'

class XmlExporter
  def self.to_xml(exportable)
    ref_to_namespace = exportable.to_s.underscore.downcase.to_sym
    exportable_columns = exportable.column_names - exportable.reflect_on_all_associations.map { |ref| ref.foreign_key.to_s }.uniq - ["id"]
    
    b = Nokogiri::XML::Builder.new
    b.RDF("xmlns:rdf" => "http://www.w3.org/1999/02/22-rdf-syntax-ns#", "xmlns:#{exportable.namespace_ref}" => "#{exportable.class_namespace}#") {
      b.parent.namespace = b.parent.add_namespace_definition("rdf", "http://www.w3.org/2003/05/soap-envelope")
      exportable.all.each do |inst|
        b['rdf'].Description("rdf:about" => inst.object_path ) {
          exportable_columns.each do |key|
            b[exportable.namespace_ref].send(key, ( inst.send(key) ) )
          end
          
          #m.class.reflect_on_all_associations(:has_many)
          [:has_many, :has_and_belongs_to_many].each do |assoc_type|
            exportable.reflect_on_all_associations(assoc_type).each do |assoc_ref|
              puts assoc_ref.name
              puts inst.send(assoc_ref.name.to_s).inspect
              inst.send(assoc_ref.name).each do |assoc|
                b[ref_to_namespace].send(assoc.to_s.singularize, ( assoc.object_path ) )
              end
            end
          end
        }
      end
    }
    # File.open("category.xml", "w") {|f| f.write(b.to_xml) }
    b.to_xml
  end
end