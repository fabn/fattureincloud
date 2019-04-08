=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module FattureInCloud
  class InfoMetodo
    # Identificativo del metodo di pagamento
    attr_accessor :id

    # Nome del template
    attr_accessor :nome_metodo

    # Nome campo
    attr_accessor :campo1

    # Descrizione del campo
    attr_accessor :desc1

    # Nome campo
    attr_accessor :campo2

    # Descrizione del campo
    attr_accessor :desc2

    # Nome campo
    attr_accessor :campo3

    # Descrizione del campo
    attr_accessor :desc3

    # Nome campo
    attr_accessor :campo4

    # Descrizione del campo
    attr_accessor :desc4

    # Nome campo
    attr_accessor :campo5

    # Descrizione del campo
    attr_accessor :desc5

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'nome_metodo' => :'nome_metodo',
        :'campo1' => :'campo1',
        :'desc1' => :'desc1',
        :'campo2' => :'campo2',
        :'desc2' => :'desc2',
        :'campo3' => :'campo3',
        :'desc3' => :'desc3',
        :'campo4' => :'campo4',
        :'desc4' => :'desc4',
        :'campo5' => :'campo5',
        :'desc5' => :'desc5'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'nome_metodo' => :'String',
        :'campo1' => :'String',
        :'desc1' => :'String',
        :'campo2' => :'String',
        :'desc2' => :'String',
        :'campo3' => :'String',
        :'desc3' => :'String',
        :'campo4' => :'String',
        :'desc4' => :'String',
        :'campo5' => :'String',
        :'desc5' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = 11
      end

      if attributes.has_key?(:'nome_metodo')
        self.nome_metodo = attributes[:'nome_metodo']
      else
        self.nome_metodo = 'New Standard S1'
      end

      if attributes.has_key?(:'campo1')
        self.campo1 = attributes[:'campo1']
      else
        self.campo1 = 'IBAN'
      end

      if attributes.has_key?(:'desc1')
        self.desc1 = attributes[:'desc1']
      else
        self.desc1 = 'IT02L1234512345123456789012'
      end

      if attributes.has_key?(:'campo2')
        self.campo2 = attributes[:'campo2']
      else
        self.campo2 = 'Intestatario'
      end

      if attributes.has_key?(:'desc2')
        self.desc2 = attributes[:'desc2']
      else
        self.desc2 = 'Mario Rossi'
      end

      if attributes.has_key?(:'campo3')
        self.campo3 = attributes[:'campo3']
      else
        self.campo3 = ''
      end

      if attributes.has_key?(:'desc3')
        self.desc3 = attributes[:'desc3']
      else
        self.desc3 = ''
      end

      if attributes.has_key?(:'campo4')
        self.campo4 = attributes[:'campo4']
      else
        self.campo4 = ''
      end

      if attributes.has_key?(:'desc4')
        self.desc4 = attributes[:'desc4']
      else
        self.desc4 = ''
      end

      if attributes.has_key?(:'campo5')
        self.campo5 = attributes[:'campo5']
      else
        self.campo5 = ''
      end

      if attributes.has_key?(:'desc5')
        self.desc5 = attributes[:'desc5']
      else
        self.desc5 = ''
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @nome_metodo.nil?
        invalid_properties.push('invalid value for "nome_metodo", nome_metodo cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @nome_metodo.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          nome_metodo == o.nome_metodo &&
          campo1 == o.campo1 &&
          desc1 == o.desc1 &&
          campo2 == o.campo2 &&
          desc2 == o.desc2 &&
          campo3 == o.campo3 &&
          desc3 == o.desc3 &&
          campo4 == o.campo4 &&
          desc4 == o.desc4 &&
          campo5 == o.campo5 &&
          desc5 == o.desc5
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, nome_metodo, campo1, desc1, campo2, desc2, campo3, desc3, campo4, desc4, campo5, desc5].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = FattureInCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end