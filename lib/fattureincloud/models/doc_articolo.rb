=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module FattureInCloud
  class DocArticolo
    # Identificativo del prodotto (se nullo, non è presente tra i prodotti)
    attr_accessor :id

    # Codice prodotto
    attr_accessor :codice

    # Nome articolo
    attr_accessor :nome

    # Unità di misura per il prodotto
    attr_accessor :um

    # Quantità di prodotto
    attr_accessor :quantita

    # Descrizione del prodotto
    attr_accessor :descrizione

    # Categoria del prodotto (utilizzata per il piano dei conti)
    attr_accessor :categoria

    # Prezzo unitario netto (IVA esclusa)
    attr_accessor :prezzo_netto

    # Prezzo unitario lordo (comprensivo di IVA)
    attr_accessor :prezzo_lordo

    # Valore IVA (percentuale)
    attr_accessor :valore_iva

    # Descrizione della tipologia di IVA
    attr_accessor :desc_iva

    # [Non presente in ordforn e ddt] Indica se l'articolo è imponibile
    attr_accessor :tassabile

    # [Non presente in ddt] Sconto (percentuale)
    attr_accessor :sconto

    # [Non presente in ordforn e ddt] Indica se a questo articolo vengono applicate ritenute e contributi
    attr_accessor :applica_ra_contributi

    # Ordine dell'articolo in fattura (ordinamento ascendente)
    attr_accessor :ordine

    # [Non presente in ordforn e ddt] Evidenzia l'eventuale sconto in fattura
    attr_accessor :sconto_rosso

    # [Non presente in ordforn e ddt] Indica se l'articolo è incluso nel DDT (se presente, altrimenti non è significativo)
    attr_accessor :in_ddt

    # Indica se viene movimentato il magazzino (true: viene movimentato; false: non viene movimentato) [Non presente se in ordforn e ddt, oppure se il prodotto non è collegato all'elenco prodotti, oppure la funzionalità magazzino era disattiva al momento della creazione del documento]
    attr_accessor :magazzino

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'codice' => :'codice',
        :'nome' => :'nome',
        :'um' => :'um',
        :'quantita' => :'quantita',
        :'descrizione' => :'descrizione',
        :'categoria' => :'categoria',
        :'prezzo_netto' => :'prezzo_netto',
        :'prezzo_lordo' => :'prezzo_lordo',
        :'valore_iva' => :'valore_iva',
        :'desc_iva' => :'desc_iva',
        :'tassabile' => :'tassabile',
        :'sconto' => :'sconto',
        :'applica_ra_contributi' => :'applica_ra_contributi',
        :'ordine' => :'ordine',
        :'sconto_rosso' => :'sconto_rosso',
        :'in_ddt' => :'in_ddt',
        :'magazzino' => :'magazzino'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'codice' => :'String',
        :'nome' => :'String',
        :'um' => :'String',
        :'quantita' => :'Float',
        :'descrizione' => :'String',
        :'categoria' => :'String',
        :'prezzo_netto' => :'Float',
        :'prezzo_lordo' => :'Float',
        :'valore_iva' => :'Float',
        :'desc_iva' => :'String',
        :'tassabile' => :'BOOLEAN',
        :'sconto' => :'Float',
        :'applica_ra_contributi' => :'BOOLEAN',
        :'ordine' => :'Integer',
        :'sconto_rosso' => :'BOOLEAN',
        :'in_ddt' => :'BOOLEAN',
        :'magazzino' => :'BOOLEAN'
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
        self.id = '0'
      end

      if attributes.has_key?(:'codice')
        self.codice = attributes[:'codice']
      else
        self.codice = ''
      end

      if attributes.has_key?(:'nome')
        self.nome = attributes[:'nome']
      else
        self.nome = 'Articolo 1'
      end

      if attributes.has_key?(:'um')
        self.um = attributes[:'um']
      else
        self.um = ''
      end

      if attributes.has_key?(:'quantita')
        self.quantita = attributes[:'quantita']
      else
        self.quantita = 1.0
      end

      if attributes.has_key?(:'descrizione')
        self.descrizione = attributes[:'descrizione']
      else
        self.descrizione = ''
      end

      if attributes.has_key?(:'categoria')
        self.categoria = attributes[:'categoria']
      else
        self.categoria = ''
      end

      if attributes.has_key?(:'prezzo_netto')
        self.prezzo_netto = attributes[:'prezzo_netto']
      else
        self.prezzo_netto = 0.0
      end

      if attributes.has_key?(:'prezzo_lordo')
        self.prezzo_lordo = attributes[:'prezzo_lordo']
      else
        self.prezzo_lordo = 0.0
      end

      if attributes.has_key?(:'valore_iva')
        self.valore_iva = attributes[:'valore_iva']
      else
        self.valore_iva = 0.0
      end

      if attributes.has_key?(:'desc_iva')
        self.desc_iva = attributes[:'desc_iva']
      else
        self.desc_iva = ''
      end

      if attributes.has_key?(:'tassabile')
        self.tassabile = attributes[:'tassabile']
      else
        self.tassabile = true
      end

      if attributes.has_key?(:'sconto')
        self.sconto = attributes[:'sconto']
      else
        self.sconto = 0.0
      end

      if attributes.has_key?(:'applica_ra_contributi')
        self.applica_ra_contributi = attributes[:'applica_ra_contributi']
      else
        self.applica_ra_contributi = true
      end

      if attributes.has_key?(:'ordine')
        self.ordine = attributes[:'ordine']
      else
        self.ordine = 0
      end

      if attributes.has_key?(:'sconto_rosso')
        self.sconto_rosso = attributes[:'sconto_rosso']
      else
        self.sconto_rosso = false
      end

      if attributes.has_key?(:'in_ddt')
        self.in_ddt = attributes[:'in_ddt']
      else
        self.in_ddt = false
      end

      if attributes.has_key?(:'magazzino')
        self.magazzino = attributes[:'magazzino']
      else
        self.magazzino = true
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @codice.nil?
        invalid_properties.push('invalid value for "codice", codice cannot be nil.')
      end

      if @nome.nil?
        invalid_properties.push('invalid value for "nome", nome cannot be nil.')
      end

      if @um.nil?
        invalid_properties.push('invalid value for "um", um cannot be nil.')
      end

      if @quantita.nil?
        invalid_properties.push('invalid value for "quantita", quantita cannot be nil.')
      end

      if @descrizione.nil?
        invalid_properties.push('invalid value for "descrizione", descrizione cannot be nil.')
      end

      if @categoria.nil?
        invalid_properties.push('invalid value for "categoria", categoria cannot be nil.')
      end

      if @prezzo_netto.nil?
        invalid_properties.push('invalid value for "prezzo_netto", prezzo_netto cannot be nil.')
      end

      if @prezzo_lordo.nil?
        invalid_properties.push('invalid value for "prezzo_lordo", prezzo_lordo cannot be nil.')
      end

      if @valore_iva.nil?
        invalid_properties.push('invalid value for "valore_iva", valore_iva cannot be nil.')
      end

      if @desc_iva.nil?
        invalid_properties.push('invalid value for "desc_iva", desc_iva cannot be nil.')
      end

      if @tassabile.nil?
        invalid_properties.push('invalid value for "tassabile", tassabile cannot be nil.')
      end

      if @sconto.nil?
        invalid_properties.push('invalid value for "sconto", sconto cannot be nil.')
      end

      if @applica_ra_contributi.nil?
        invalid_properties.push('invalid value for "applica_ra_contributi", applica_ra_contributi cannot be nil.')
      end

      if @ordine.nil?
        invalid_properties.push('invalid value for "ordine", ordine cannot be nil.')
      end

      if @sconto_rosso.nil?
        invalid_properties.push('invalid value for "sconto_rosso", sconto_rosso cannot be nil.')
      end

      if @in_ddt.nil?
        invalid_properties.push('invalid value for "in_ddt", in_ddt cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @codice.nil?
      return false if @nome.nil?
      return false if @um.nil?
      return false if @quantita.nil?
      return false if @descrizione.nil?
      return false if @categoria.nil?
      return false if @prezzo_netto.nil?
      return false if @prezzo_lordo.nil?
      return false if @valore_iva.nil?
      return false if @desc_iva.nil?
      return false if @tassabile.nil?
      return false if @sconto.nil?
      return false if @applica_ra_contributi.nil?
      return false if @ordine.nil?
      return false if @sconto_rosso.nil?
      return false if @in_ddt.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          codice == o.codice &&
          nome == o.nome &&
          um == o.um &&
          quantita == o.quantita &&
          descrizione == o.descrizione &&
          categoria == o.categoria &&
          prezzo_netto == o.prezzo_netto &&
          prezzo_lordo == o.prezzo_lordo &&
          valore_iva == o.valore_iva &&
          desc_iva == o.desc_iva &&
          tassabile == o.tassabile &&
          sconto == o.sconto &&
          applica_ra_contributi == o.applica_ra_contributi &&
          ordine == o.ordine &&
          sconto_rosso == o.sconto_rosso &&
          in_ddt == o.in_ddt &&
          magazzino == o.magazzino
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, codice, nome, um, quantita, descrizione, categoria, prezzo_netto, prezzo_lordo, valore_iva, desc_iva, tassabile, sconto, applica_ra_contributi, ordine, sconto_rosso, in_ddt, magazzino].hash
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