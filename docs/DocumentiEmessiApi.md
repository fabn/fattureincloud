# FattureInCloud::DocumentiEmessiApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**doc_dettagli**](DocumentiEmessiApi.md#doc_dettagli) | **POST** /{tipo-doc}/dettagli | Dettagli documento
[**doc_elimina**](DocumentiEmessiApi.md#doc_elimina) | **POST** /{tipo-doc}/elimina | Elimina documento
[**doc_info**](DocumentiEmessiApi.md#doc_info) | **POST** /{tipo-doc}/info | Informazioni e dati predefiniti
[**doc_infomail**](DocumentiEmessiApi.md#doc_infomail) | **POST** /{tipo-doc}/infomail | Informazioni invio tramite e-mail
[**doc_inviamail**](DocumentiEmessiApi.md#doc_inviamail) | **POST** /{tipo-doc}/inviamail | Invio documento tramite e-mail
[**doc_lista**](DocumentiEmessiApi.md#doc_lista) | **POST** /{tipo-doc}/lista | Elenco documenti
[**doc_modifica**](DocumentiEmessiApi.md#doc_modifica) | **POST** /{tipo-doc}/modifica | Modifica documento
[**doc_nuovo**](DocumentiEmessiApi.md#doc_nuovo) | **POST** /{tipo-doc}/nuovo | Nuovo documento


# **doc_dettagli**
> DocDettagliResponse doc_dettagli(tipo_doc, body)

Dettagli documento

Restituisce i dettagli del documento richiesto.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocDettagliRequest.new # DocDettagliRequest | 


begin
  #Dettagli documento
  result = api_instance.doc_dettagli(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_dettagli: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocDettagliRequest**](DocDettagliRequest.md)|  | 

### Return type

[**DocDettagliResponse**](DocDettagliResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_elimina**
> GenericSuccessResponse doc_elimina(tipo_doc, body)

Elimina documento

Elimina definitivamente un documento.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocEliminaRequest.new # DocEliminaRequest | Corpo richiesta


begin
  #Elimina documento
  result = api_instance.doc_elimina(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_elimina: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocEliminaRequest**](DocEliminaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_info**
> DocInfoResponse doc_info(tipo_doc, body)

Informazioni e dati predefiniti

Restituisce informazioni utili alla creazione e alla modifica di un documento, tra cui le impostazioni predefinite e le numerazioni utilizzate.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocInfoRequest.new # DocInfoRequest | Parametri necessari per ottenere le informazioni


begin
  #Informazioni e dati predefiniti
  result = api_instance.doc_info(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocInfoRequest**](DocInfoRequest.md)| Parametri necessari per ottenere le informazioni | 

### Return type

[**DocInfoResponse**](DocInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_infomail**
> DocInfomailResponse doc_infomail(tipo_doc, body)

Informazioni invio tramite e-mail

Restituisce informazioni predefinite e/o utili per l'invio tramite e-mail del documento.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocInfomailRequest.new # DocInfomailRequest | Parametri necessari per ottenere le informazioni


begin
  #Informazioni invio tramite e-mail
  result = api_instance.doc_infomail(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_infomail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocInfomailRequest**](DocInfomailRequest.md)| Parametri necessari per ottenere le informazioni | 

### Return type

[**DocInfomailResponse**](DocInfomailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_inviamail**
> GenericSuccessResponse doc_inviamail(tipo_doc, body)

Invio documento tramite e-mail

Effettua l'invio del documento tramite e-mail. Vedi anche  la funzione /infomail per maggiori informazioni.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocInviamailRequest.new # DocInviamailRequest | Parametri necessari per l'invio


begin
  #Invio documento tramite e-mail
  result = api_instance.doc_inviamail(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_inviamail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocInviamailRequest**](DocInviamailRequest.md)| Parametri necessari per l&#39;invio | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_lista**
> DocListaResponse doc_lista(tipo_doc, body)

Elenco documenti

Restituisce la lista delle fatture o dei documenti richiesti per l'anno di competenza specificato. I risultati possono essere filtrati (vedi modello richiesta) e vengono organizzati in pagine per evitare risposte troppo pesanti (attualmente 250 risultati per pagina).

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia di documenti da cercare

body = FattureInCloud::DocListaRequest.new # DocListaRequest | Filtri per la ricerca dei documenti


begin
  #Elenco documenti
  result = api_instance.doc_lista(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia di documenti da cercare | 
 **body** | [**DocListaRequest**](DocListaRequest.md)| Filtri per la ricerca dei documenti | 

### Return type

[**DocListaResponse**](DocListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_modifica**
> GenericSuccessResponse doc_modifica(tipo_doc, body)

Modifica documento

Modifica un documento esistente. In caso di parametri non specificati il corrispondente valore già presente rimane invariato.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocModificaRequest.new # DocModificaRequest | Corpo richiesta


begin
  #Modifica documento
  result = api_instance.doc_modifica(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_modifica: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocModificaRequest**](DocModificaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doc_nuovo**
> DocNuovoResponse doc_nuovo(tipo_doc, body)

Nuovo documento

Crea un nuovo documento. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::DocumentiEmessiApi.new

tipo_doc = 'tipo_doc_example' # String | Tipologia del documento

body = FattureInCloud::DocNuovoRequest.new # DocNuovoRequest | Corpo richiesta


begin
  #Nuovo documento
  result = api_instance.doc_nuovo(tipo_doc, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling DocumentiEmessiApi->doc_nuovo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tipo_doc** | **String**| Tipologia del documento | 
 **body** | [**DocNuovoRequest**](DocNuovoRequest.md)| Corpo richiesta | 

### Return type

[**DocNuovoResponse**](DocNuovoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



