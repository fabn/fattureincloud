=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module FattureInCloud
  class DocListaRequest
    attr_accessor :anno

    # Restringe la ricerca ai clienti che contengono questa stringa nel nome
    attr_accessor :cliente

    # Restringe la ricerca ai fornitori che contengono questa stringa nel nome
    attr_accessor :fornitore

    # Restringe la ricerca al cliente con questo id [solo per tipo-doc!=\"ordforn\"]
    attr_accessor :id_cliente

    # Restringe la ricerca al cliente con questo id [solo per tipo-doc=\"ordforn\"]
    attr_accessor :id_fornitore

    # Elenca solo i documenti saldati completamente (true) o non saldati/saldati parzialmente (false) [Solo per fatture, ricevute, note di credito, ordini e pro forma] 
    attr_accessor :saldato

    # Restringe la ricerca ai documenti che contengono questa stringa nell'oggetto, sia quello interno che quello visibile in fattura
    attr_accessor :oggetto

    # Elenca tutti i documenti contenenti un DDT (true) o solo i DDT singoli (false) [Solo per ddt]
    attr_accessor :ogni_ddt

    # Restringe la ricerca ai documenti emessi nel formato FatturaPA (true) oppure no (false); se non valorizzato vengono restituiti tutti
    attr_accessor :pa

    # [Solo se PA=true] Restringe la ricerca ai documenti emessi verso Pubbliche Amministrazioni (\"PA\") oppure a privati (\"B2B\"); se non valorizzato vengono restituiti entrambi
    attr_accessor :pa_tipo_cliente

    # Specifica il numero di pagina dei risultati (se non specificato vale 1)
    attr_accessor :pagina

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'anno' => :'anno',
        :'cliente' => :'cliente',
        :'fornitore' => :'fornitore',
        :'id_cliente' => :'id_cliente',
        :'id_fornitore' => :'id_fornitore',
        :'saldato' => :'saldato',
        :'oggetto' => :'oggetto',
        :'ogni_ddt' => :'ogni_ddt',
        :'pa' => :'PA',
        :'pa_tipo_cliente' => :'PA_tipo_cliente',
        :'pagina' => :'pagina'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'anno' => :'Integer',
        :'cliente' => :'String',
        :'fornitore' => :'String',
        :'id_cliente' => :'String',
        :'id_fornitore' => :'String',
        :'saldato' => :'BOOLEAN',
        :'oggetto' => :'String',
        :'ogni_ddt' => :'BOOLEAN',
        :'pa' => :'BOOLEAN',
        :'pa_tipo_cliente' => :'String',
        :'pagina' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'anno')
        self.anno = attributes[:'anno']
      else
        self.anno = 2017
      end

      if attributes.has_key?(:'cliente')
        self.cliente = attributes[:'cliente']
      else
        self.cliente = ''
      end

      if attributes.has_key?(:'fornitore')
        self.fornitore = attributes[:'fornitore']
      else
        self.fornitore = ''
      end

      if attributes.has_key?(:'id_cliente')
        self.id_cliente = attributes[:'id_cliente']
      else
        self.id_cliente = ''
      end

      if attributes.has_key?(:'id_fornitore')
        self.id_fornitore = attributes[:'id_fornitore']
      else
        self.id_fornitore = ''
      end

      if attributes.has_key?(:'saldato')
        self.saldato = attributes[:'saldato']
      else
        self.saldato = false
      end

      if attributes.has_key?(:'oggetto')
        self.oggetto = attributes[:'oggetto']
      else
        self.oggetto = ''
      end

      if attributes.has_key?(:'ogni_ddt')
        self.ogni_ddt = attributes[:'ogni_ddt']
      else
        self.ogni_ddt = false
      end

      if attributes.has_key?(:'PA')
        self.pa = attributes[:'PA']
      else
        self.pa = false
      end

      if attributes.has_key?(:'PA_tipo_cliente')
        self.pa_tipo_cliente = attributes[:'PA_tipo_cliente']
      else
        self.pa_tipo_cliente = ''
      end

      if attributes.has_key?(:'pagina')
        self.pagina = attributes[:'pagina']
      else
        self.pagina = 1
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @anno.nil?
        invalid_properties.push('invalid value for "anno", anno cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @anno.nil?
      pa_tipo_cliente_validator = EnumAttributeValidator.new('String', ['PA', 'B2B'])
      return false unless pa_tipo_cliente_validator.valid?(@pa_tipo_cliente)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pa_tipo_cliente Object to be assigned
    def pa_tipo_cliente=(pa_tipo_cliente)
      validator = EnumAttributeValidator.new('String', ['PA', 'B2B'])
      unless validator.valid?(pa_tipo_cliente)
        fail ArgumentError, 'invalid value for "pa_tipo_cliente", must be one of #{validator.allowable_values}.'
      end
      @pa_tipo_cliente = pa_tipo_cliente
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          anno == o.anno &&
          cliente == o.cliente &&
          fornitore == o.fornitore &&
          id_cliente == o.id_cliente &&
          id_fornitore == o.id_fornitore &&
          saldato == o.saldato &&
          oggetto == o.oggetto &&
          ogni_ddt == o.ogni_ddt &&
          pa == o.pa &&
          pa_tipo_cliente == o.pa_tipo_cliente &&
          pagina == o.pagina
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [anno, cliente, fornitore, id_cliente, id_fornitore, saldato, oggetto, ogni_ddt, pa, pa_tipo_cliente, pagina].hash
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
