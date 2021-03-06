=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

# Common files
require 'fattureincloud/api_client'
require 'fattureincloud/api_error'
require 'fattureincloud/version'
require 'fattureincloud/configuration'

# Models
require 'fattureincloud/models/acquisti_articolo'
require 'fattureincloud/models/acquisti_detailed'
require 'fattureincloud/models/acquisti_dettagli_request'
require 'fattureincloud/models/acquisti_dettagli_response'
require 'fattureincloud/models/acquisti_elimina_request'
require 'fattureincloud/models/acquisti_light'
require 'fattureincloud/models/acquisti_lista_request'
require 'fattureincloud/models/acquisti_lista_response'
require 'fattureincloud/models/acquisti_modifica_request'
require 'fattureincloud/models/acquisti_modifica_response'
require 'fattureincloud/models/acquisti_nuovo_articolo'
require 'fattureincloud/models/acquisti_nuovo_request'
require 'fattureincloud/models/acquisti_nuovo_response'
require 'fattureincloud/models/anagrafica_cliente'
require 'fattureincloud/models/anagrafica_elimina_request'
require 'fattureincloud/models/anagrafica_fornitore'
require 'fattureincloud/models/anagrafica_lista_request'
require 'fattureincloud/models/anagrafica_lista_response'
require 'fattureincloud/models/anagrafica_modifica_request'
require 'fattureincloud/models/anagrafica_nuovo_lista_request'
require 'fattureincloud/models/anagrafica_nuovo_singolo_request'
require 'fattureincloud/models/anagrafica_nuovo_singolo_response'
require 'fattureincloud/models/arrivi_articolo'
require 'fattureincloud/models/arrivi_detailed'
require 'fattureincloud/models/arrivi_dettagli_request'
require 'fattureincloud/models/arrivi_dettagli_response'
require 'fattureincloud/models/arrivi_light'
require 'fattureincloud/models/arrivi_lista_request'
require 'fattureincloud/models/arrivi_lista_response'
require 'fattureincloud/models/corrispettivi_detailed'
require 'fattureincloud/models/corrispettivi_elimina_request'
require 'fattureincloud/models/corrispettivi_lista_request'
require 'fattureincloud/models/corrispettivi_lista_response'
require 'fattureincloud/models/corrispettivi_modifica_request'
require 'fattureincloud/models/corrispettivi_nuovo_request'
require 'fattureincloud/models/corrispettivi_nuovo_response'
require 'fattureincloud/models/corrispettivi_nuovo_riga'
require 'fattureincloud/models/corrispettivi_riga'
require 'fattureincloud/models/doc_articolo'
require 'fattureincloud/models/doc_detailed'
require 'fattureincloud/models/doc_dettagli_request'
require 'fattureincloud/models/doc_dettagli_response'
require 'fattureincloud/models/doc_elimina_request'
require 'fattureincloud/models/doc_info_numerazione'
require 'fattureincloud/models/doc_info_request'
require 'fattureincloud/models/doc_info_response'
require 'fattureincloud/models/doc_infomail_mail'
require 'fattureincloud/models/doc_infomail_request'
require 'fattureincloud/models/doc_infomail_response'
require 'fattureincloud/models/doc_inviamail_request'
require 'fattureincloud/models/doc_light'
require 'fattureincloud/models/doc_lista_request'
require 'fattureincloud/models/doc_lista_response'
require 'fattureincloud/models/doc_modifica_request'
require 'fattureincloud/models/doc_modifica_response'
require 'fattureincloud/models/doc_nuovo_articolo'
require 'fattureincloud/models/doc_nuovo_extra_anagrafica'
require 'fattureincloud/models/doc_nuovo_pagamento'
require 'fattureincloud/models/doc_nuovo_request'
require 'fattureincloud/models/doc_nuovo_response'
require 'fattureincloud/models/doc_pagamento'
require 'fattureincloud/models/generic_success_response'
require 'fattureincloud/models/info_conto'
require 'fattureincloud/models/info_iva'
require 'fattureincloud/models/info_lista_request'
require 'fattureincloud/models/info_lista_response'
require 'fattureincloud/models/info_metodo'
require 'fattureincloud/models/info_template'
require 'fattureincloud/models/info_valuta'
require 'fattureincloud/models/json_request'
require 'fattureincloud/models/mail'
require 'fattureincloud/models/mail_lista_request'
require 'fattureincloud/models/mail_lista_response'
require 'fattureincloud/models/prodotti_elimina_request'
require 'fattureincloud/models/prodotti_lista_request'
require 'fattureincloud/models/prodotti_lista_response'
require 'fattureincloud/models/prodotti_modifica_request'
require 'fattureincloud/models/prodotti_nuovo_lista_request'
require 'fattureincloud/models/prodotti_nuovo_singolo_request'
require 'fattureincloud/models/prodotti_nuovo_singolo_response'
require 'fattureincloud/models/prodotto'

# APIs
require 'fattureincloud/api/acquisti_api'
require 'fattureincloud/api/anagrafica_api'
require 'fattureincloud/api/corrispettivi_api'
require 'fattureincloud/api/documenti_emessi_api'
require 'fattureincloud/api/info_api'
require 'fattureincloud/api/magazzino_api'
require 'fattureincloud/api/mail_api'
require 'fattureincloud/api/prodotti_api'
require 'fattureincloud/api/richiesta_generica_api'

module FattureInCloud
  class << self
    # Customize default settings for the SDK using block.
    #   FattureInCloud.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
