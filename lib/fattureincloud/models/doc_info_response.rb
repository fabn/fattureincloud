=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module FattureInCloud
  class DocInfoResponse
    # Numero suggerito per la creazione di un ddt (ottenuto come: massimo dell'anno +1)
    attr_accessor :ddt_numero_successivo

    # Numerazioni utilizzate nell'anno specificato e relativi numeri successivi suggeriti
    attr_accessor :numerazioni

    # Identificativo del template documento predefinito
    attr_accessor :default_id_template

    # Identificativo del template documento predefinito
    attr_accessor :default_ddt_id_template

    # Identificativo del template documento predefinito
    attr_accessor :default_ftacc_id_template

    # Codice iva default
    attr_accessor :default_cod_iva

    # Note a pié pagina predefinite
    attr_accessor :default_note

    # Percentuale cassa previdenziale predefinita
    attr_accessor :default_cassa_previdenziale

    # Percentuale rivalsa INPS predefinita
    attr_accessor :default_rivalsa_previdenziale

    # Percentuale ritenuta d'acconto predefinita
    attr_accessor :default_ritenuta_acconto

    # Percentuale imponibile ritenuta d'acconto predefinita
    attr_accessor :default_imponibile_ritenuta

    # Percentuale altra ritenuta predefinita
    attr_accessor :default_altra_ritenuta

    # Indica se l'ultimo documento è stato emesso utilizzando un calcolo basato sui prezzi netti (false) o lordi (true)
    attr_accessor :default_prezzi_ivati

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ddt_numero_successivo' => :'ddt_numero_successivo',
        :'numerazioni' => :'numerazioni',
        :'default_id_template' => :'default_id_template',
        :'default_ddt_id_template' => :'default_ddt_id_template',
        :'default_ftacc_id_template' => :'default_ftacc_id_template',
        :'default_cod_iva' => :'default_cod_iva',
        :'default_note' => :'default_note',
        :'default_cassa_previdenziale' => :'default_cassa_previdenziale',
        :'default_rivalsa_previdenziale' => :'default_rivalsa_previdenziale',
        :'default_ritenuta_acconto' => :'default_ritenuta_acconto',
        :'default_imponibile_ritenuta' => :'default_imponibile_ritenuta',
        :'default_altra_ritenuta' => :'default_altra_ritenuta',
        :'default_prezzi_ivati' => :'default_prezzi_ivati'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ddt_numero_successivo' => :'String',
        :'numerazioni' => :'DocInfoNumerazione',
        :'default_id_template' => :'String',
        :'default_ddt_id_template' => :'String',
        :'default_ftacc_id_template' => :'String',
        :'default_cod_iva' => :'Integer',
        :'default_note' => :'String',
        :'default_cassa_previdenziale' => :'Float',
        :'default_rivalsa_previdenziale' => :'Float',
        :'default_ritenuta_acconto' => :'Float',
        :'default_imponibile_ritenuta' => :'Float',
        :'default_altra_ritenuta' => :'Float',
        :'default_prezzi_ivati' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ddt_numero_successivo')
        self.ddt_numero_successivo = attributes[:'ddt_numero_successivo']
      else
        self.ddt_numero_successivo = '1'
      end

      if attributes.has_key?(:'numerazioni')
        self.numerazioni = attributes[:'numerazioni']
      end

      if attributes.has_key?(:'default_id_template')
        self.default_id_template = attributes[:'default_id_template']
      else
        self.default_id_template = '0'
      end

      if attributes.has_key?(:'default_ddt_id_template')
        self.default_ddt_id_template = attributes[:'default_ddt_id_template']
      else
        self.default_ddt_id_template = '0'
      end

      if attributes.has_key?(:'default_ftacc_id_template')
        self.default_ftacc_id_template = attributes[:'default_ftacc_id_template']
      else
        self.default_ftacc_id_template = '0'
      end

      if attributes.has_key?(:'default_cod_iva')
        self.default_cod_iva = attributes[:'default_cod_iva']
      else
        self.default_cod_iva = 0
      end

      if attributes.has_key?(:'default_note')
        self.default_note = attributes[:'default_note']
      else
        self.default_note = ''
      end

      if attributes.has_key?(:'default_cassa_previdenziale')
        self.default_cassa_previdenziale = attributes[:'default_cassa_previdenziale']
      else
        self.default_cassa_previdenziale = 0.0
      end

      if attributes.has_key?(:'default_rivalsa_previdenziale')
        self.default_rivalsa_previdenziale = attributes[:'default_rivalsa_previdenziale']
      else
        self.default_rivalsa_previdenziale = 0.0
      end

      if attributes.has_key?(:'default_ritenuta_acconto')
        self.default_ritenuta_acconto = attributes[:'default_ritenuta_acconto']
      else
        self.default_ritenuta_acconto = 0.0
      end

      if attributes.has_key?(:'default_imponibile_ritenuta')
        self.default_imponibile_ritenuta = attributes[:'default_imponibile_ritenuta']
      else
        self.default_imponibile_ritenuta = 100.0
      end

      if attributes.has_key?(:'default_altra_ritenuta')
        self.default_altra_ritenuta = attributes[:'default_altra_ritenuta']
      else
        self.default_altra_ritenuta = 0.0
      end

      if attributes.has_key?(:'default_prezzi_ivati')
        self.default_prezzi_ivati = attributes[:'default_prezzi_ivati']
      else
        self.default_prezzi_ivati = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ddt_numero_successivo.nil?
        invalid_properties.push('invalid value for "ddt_numero_successivo", ddt_numero_successivo cannot be nil.')
      end

      if @numerazioni.nil?
        invalid_properties.push('invalid value for "numerazioni", numerazioni cannot be nil.')
      end

      if @default_id_template.nil?
        invalid_properties.push('invalid value for "default_id_template", default_id_template cannot be nil.')
      end

      if @default_ddt_id_template.nil?
        invalid_properties.push('invalid value for "default_ddt_id_template", default_ddt_id_template cannot be nil.')
      end

      if @default_ftacc_id_template.nil?
        invalid_properties.push('invalid value for "default_ftacc_id_template", default_ftacc_id_template cannot be nil.')
      end

      if @default_note.nil?
        invalid_properties.push('invalid value for "default_note", default_note cannot be nil.')
      end

      if @default_cassa_previdenziale.nil?
        invalid_properties.push('invalid value for "default_cassa_previdenziale", default_cassa_previdenziale cannot be nil.')
      end

      if @default_rivalsa_previdenziale.nil?
        invalid_properties.push('invalid value for "default_rivalsa_previdenziale", default_rivalsa_previdenziale cannot be nil.')
      end

      if @default_ritenuta_acconto.nil?
        invalid_properties.push('invalid value for "default_ritenuta_acconto", default_ritenuta_acconto cannot be nil.')
      end

      if @default_imponibile_ritenuta.nil?
        invalid_properties.push('invalid value for "default_imponibile_ritenuta", default_imponibile_ritenuta cannot be nil.')
      end

      if @default_altra_ritenuta.nil?
        invalid_properties.push('invalid value for "default_altra_ritenuta", default_altra_ritenuta cannot be nil.')
      end

      if @default_prezzi_ivati.nil?
        invalid_properties.push('invalid value for "default_prezzi_ivati", default_prezzi_ivati cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ddt_numero_successivo.nil?
      return false if @numerazioni.nil?
      return false if @default_id_template.nil?
      return false if @default_ddt_id_template.nil?
      return false if @default_ftacc_id_template.nil?
      return false if @default_note.nil?
      return false if @default_cassa_previdenziale.nil?
      return false if @default_rivalsa_previdenziale.nil?
      return false if @default_ritenuta_acconto.nil?
      return false if @default_imponibile_ritenuta.nil?
      return false if @default_altra_ritenuta.nil?
      return false if @default_prezzi_ivati.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ddt_numero_successivo == o.ddt_numero_successivo &&
          numerazioni == o.numerazioni &&
          default_id_template == o.default_id_template &&
          default_ddt_id_template == o.default_ddt_id_template &&
          default_ftacc_id_template == o.default_ftacc_id_template &&
          default_cod_iva == o.default_cod_iva &&
          default_note == o.default_note &&
          default_cassa_previdenziale == o.default_cassa_previdenziale &&
          default_rivalsa_previdenziale == o.default_rivalsa_previdenziale &&
          default_ritenuta_acconto == o.default_ritenuta_acconto &&
          default_imponibile_ritenuta == o.default_imponibile_ritenuta &&
          default_altra_ritenuta == o.default_altra_ritenuta &&
          default_prezzi_ivati == o.default_prezzi_ivati
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ddt_numero_successivo, numerazioni, default_id_template, default_ddt_id_template, default_ftacc_id_template, default_cod_iva, default_note, default_cassa_previdenziale, default_rivalsa_previdenziale, default_ritenuta_acconto, default_imponibile_ritenuta, default_altra_ritenuta, default_prezzi_ivati].hash
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
