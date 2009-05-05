module Nokogiri
  module LibXML
    class XmlSchema < FFI::ManagedStruct
      
      layout :dummy, :int, 0 # to avoid @layout warnings

      def self.release ptr
        LibXML.xmlSchemaFree(ptr)
      end

    end
  end
end