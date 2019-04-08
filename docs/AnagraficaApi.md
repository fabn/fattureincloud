# FattureInCloud::AnagraficaApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**anagrafica_elimina**](AnagraficaApi.md#anagrafica_elimina) | **POST** /{soggetto}/elimina | Elimina cliente o fornitore
[**anagrafica_lista**](AnagraficaApi.md#anagrafica_lista) | **POST** /{soggetto}/lista | Elenco clienti o fornitori
[**anagrafica_modifica**](AnagraficaApi.md#anagrafica_modifica) | **POST** /{soggetto}/modifica | Modifica cliente o fornitore
[**anagrafica_nuovo_lista**](AnagraficaApi.md#anagrafica_nuovo_lista) | **POST** /{soggetto}/importa | Importazione multipla clienti o fornitori
[**anagrafica_nuovo_singolo**](AnagraficaApi.md#anagrafica_nuovo_singolo) | **POST** /{soggetto}/nuovo | Nuovo cliente o fornitore singolo


# **anagrafica_elimina**
> GenericSuccessResponse anagrafica_elimina(soggetto, body)

Elimina cliente o fornitore

Elimina definitivamente un cliente o fornitore.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AnagraficaApi.new

soggetto = 'soggetto_example' # String | Soggetto di interesse

body = FattureInCloud::AnagraficaEliminaRequest.new # AnagraficaEliminaRequest | Corpo richiesta


begin
  #Elimina cliente o fornitore
  result = api_instance.anagrafica_elimina(soggetto, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AnagraficaApi->anagrafica_elimina: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **soggetto** | **String**| Soggetto di interesse | 
 **body** | [**AnagraficaEliminaRequest**](AnagraficaEliminaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **anagrafica_lista**
> AnagraficaListaResponse anagrafica_lista(soggetto, body)

Elenco clienti o fornitori

Restituisce la lista contenente i dati di clienti o fornitori. I risultati possono essere filtrati (vedi modello richiesta) e vengono organizzati in pagine per evitare risposte troppo pesanti (attualmente 500 risultati per pagina).

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AnagraficaApi.new

soggetto = 'soggetto_example' # String | Soggetto di interesse

body = FattureInCloud::AnagraficaListaRequest.new # AnagraficaListaRequest | Corpo richiesta


begin
  #Elenco clienti o fornitori
  result = api_instance.anagrafica_lista(soggetto, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AnagraficaApi->anagrafica_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **soggetto** | **String**| Soggetto di interesse | 
 **body** | [**AnagraficaListaRequest**](AnagraficaListaRequest.md)| Corpo richiesta | 

### Return type

[**AnagraficaListaResponse**](AnagraficaListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **anagrafica_modifica**
> GenericSuccessResponse anagrafica_modifica(soggetto, body)

Modifica cliente o fornitore

Modifica un cliente o fornitore esistente. In caso di parametri non specificati il corrispondente valore già presente rimane invariato.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AnagraficaApi.new

soggetto = 'soggetto_example' # String | Soggetto di interesse

body = FattureInCloud::AnagraficaModificaRequest.new # AnagraficaModificaRequest | Corpo richiesta


begin
  #Modifica cliente o fornitore
  result = api_instance.anagrafica_modifica(soggetto, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AnagraficaApi->anagrafica_modifica: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **soggetto** | **String**| Soggetto di interesse | 
 **body** | [**AnagraficaModificaRequest**](AnagraficaModificaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **anagrafica_nuovo_lista**
> GenericSuccessResponse anagrafica_nuovo_lista(soggetto, body)

Importazione multipla clienti o fornitori

Crea nuovi clienti o fornitori in blocco. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AnagraficaApi.new

soggetto = 'soggetto_example' # String | Soggetto di interesse

body = FattureInCloud::AnagraficaNuovoListaRequest.new # AnagraficaNuovoListaRequest | Corpo richiesta


begin
  #Importazione multipla clienti o fornitori
  result = api_instance.anagrafica_nuovo_lista(soggetto, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AnagraficaApi->anagrafica_nuovo_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **soggetto** | **String**| Soggetto di interesse | 
 **body** | [**AnagraficaNuovoListaRequest**](AnagraficaNuovoListaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **anagrafica_nuovo_singolo**
> AnagraficaNuovoSingoloResponse anagrafica_nuovo_singolo(soggetto, body)

Nuovo cliente o fornitore singolo

Crea un nuovo cliente o fornitore. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AnagraficaApi.new

soggetto = 'soggetto_example' # String | Soggetto di interesse

body = FattureInCloud::AnagraficaNuovoSingoloRequest.new # AnagraficaNuovoSingoloRequest | Corpo richiesta


begin
  #Nuovo cliente o fornitore singolo
  result = api_instance.anagrafica_nuovo_singolo(soggetto, body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AnagraficaApi->anagrafica_nuovo_singolo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **soggetto** | **String**| Soggetto di interesse | 
 **body** | [**AnagraficaNuovoSingoloRequest**](AnagraficaNuovoSingoloRequest.md)| Corpo richiesta | 

### Return type

[**AnagraficaNuovoSingoloResponse**](AnagraficaNuovoSingoloResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



