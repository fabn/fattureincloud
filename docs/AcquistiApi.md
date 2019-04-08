# FattureInCloud::AcquistiApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquisti_dettagli**](AcquistiApi.md#acquisti_dettagli) | **POST** /acquisti/dettagli | Dettagli documento
[**acquisti_elimina**](AcquistiApi.md#acquisti_elimina) | **POST** /acquisti/elimina | Elimina acquisto
[**acquisti_lista**](AcquistiApi.md#acquisti_lista) | **POST** /acquisti/lista | Elenco documenti
[**acquisti_modifica**](AcquistiApi.md#acquisti_modifica) | **POST** /acquisti/modifica | Modifica acquisto
[**acquisti_nuovo**](AcquistiApi.md#acquisti_nuovo) | **POST** /acquisti/nuovo | Nuovo acquisto


# **acquisti_dettagli**
> AcquistiDettagliResponse acquisti_dettagli(body)

Dettagli documento

Restituisce i dettagli del documento richiesto.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AcquistiApi.new

body = FattureInCloud::AcquistiDettagliRequest.new # AcquistiDettagliRequest | 


begin
  #Dettagli documento
  result = api_instance.acquisti_dettagli(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AcquistiApi->acquisti_dettagli: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcquistiDettagliRequest**](AcquistiDettagliRequest.md)|  | 

### Return type

[**AcquistiDettagliResponse**](AcquistiDettagliResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **acquisti_elimina**
> GenericSuccessResponse acquisti_elimina(body)

Elimina acquisto

Elimina definitivamente un acquisto (spesa o nota di credito passiva).

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AcquistiApi.new

body = FattureInCloud::AcquistiEliminaRequest.new # AcquistiEliminaRequest | Corpo richiesta


begin
  #Elimina acquisto
  result = api_instance.acquisti_elimina(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AcquistiApi->acquisti_elimina: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcquistiEliminaRequest**](AcquistiEliminaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **acquisti_lista**
> AcquistiListaResponse acquisti_lista(body)

Elenco documenti

Restituisce la lista dei documenti per l'anno di competenza specificato.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AcquistiApi.new

body = FattureInCloud::AcquistiListaRequest.new # AcquistiListaRequest | Filtri per la ricerca dei documenti


begin
  #Elenco documenti
  result = api_instance.acquisti_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AcquistiApi->acquisti_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcquistiListaRequest**](AcquistiListaRequest.md)| Filtri per la ricerca dei documenti | 

### Return type

[**AcquistiListaResponse**](AcquistiListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **acquisti_modifica**
> AcquistiModificaResponse acquisti_modifica(body)

Modifica acquisto

Modifica un acquisto esistente. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AcquistiApi.new

body = FattureInCloud::AcquistiModificaRequest.new # AcquistiModificaRequest | Corpo richiesta


begin
  #Modifica acquisto
  result = api_instance.acquisti_modifica(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AcquistiApi->acquisti_modifica: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcquistiModificaRequest**](AcquistiModificaRequest.md)| Corpo richiesta | 

### Return type

[**AcquistiModificaResponse**](AcquistiModificaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **acquisti_nuovo**
> AcquistiNuovoResponse acquisti_nuovo(body)

Nuovo acquisto

Aggiunge un nuovo acquisto. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::AcquistiApi.new

body = FattureInCloud::AcquistiNuovoRequest.new # AcquistiNuovoRequest | Corpo richiesta


begin
  #Nuovo acquisto
  result = api_instance.acquisti_nuovo(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling AcquistiApi->acquisti_nuovo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcquistiNuovoRequest**](AcquistiNuovoRequest.md)| Corpo richiesta | 

### Return type

[**AcquistiNuovoResponse**](AcquistiNuovoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



