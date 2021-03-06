=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module FattureInCloud
  class MagazzinoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Dettagli arrivo merce
    # Restituisce i dettagli dell'arrivo merce richiesto.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ArriviDettagliResponse]
    def arrivi_dettagli(body, opts = {})
      data, _status_code, _headers = arrivi_dettagli_with_http_info(body, opts)
      data
    end

    # Dettagli arrivo merce
    # Restituisce i dettagli dell&#39;arrivo merce richiesto.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArriviDettagliResponse, Fixnum, Hash)>] ArriviDettagliResponse data, response status code and response headers
    def arrivi_dettagli_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MagazzinoApi.arrivi_dettagli ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MagazzinoApi.arrivi_dettagli"
      end
      # resource path
      local_var_path = '/arrivimerce/dettagli'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ArriviDettagliResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MagazzinoApi#arrivi_dettagli\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Elenco arrivi merce
    # Restituisce la lista degli arrivi merce per l'anno di competenza specificato.
    # @param body Filtri per la ricerca dei documenti
    # @param [Hash] opts the optional parameters
    # @return [ArriviListaResponse]
    def arrivi_lista(body, opts = {})
      data, _status_code, _headers = arrivi_lista_with_http_info(body, opts)
      data
    end

    # Elenco arrivi merce
    # Restituisce la lista degli arrivi merce per l&#39;anno di competenza specificato.
    # @param body Filtri per la ricerca dei documenti
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArriviListaResponse, Fixnum, Hash)>] ArriviListaResponse data, response status code and response headers
    def arrivi_lista_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MagazzinoApi.arrivi_lista ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MagazzinoApi.arrivi_lista"
      end
      # resource path
      local_var_path = '/arrivimerce/lista'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ArriviListaResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MagazzinoApi#arrivi_lista\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
