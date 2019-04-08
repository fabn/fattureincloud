# FattureInCloud::CorrispettiviApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**corrispettivi_elimina**](CorrispettiviApi.md#corrispettivi_elimina) | **POST** /corrispettivi/elimina | Elimina registrazione
[**corrispettivi_lista**](CorrispettiviApi.md#corrispettivi_lista) | **POST** /corrispettivi/lista | Elenco registrazioni
[**corrispettivi_modifica**](CorrispettiviApi.md#corrispettivi_modifica) | **POST** /corrispettivi/modifica | Modifica registrazione
[**corrispettivi_nuovo**](CorrispettiviApi.md#corrispettivi_nuovo) | **POST** /corrispettivi/nuovo | Nuova registrazione


# **corrispettivi_elimina**
> GenericSuccessResponse corrispettivi_elimina(body)

Elimina registrazione

Elimina definitivamente un corrispettivo.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::CorrispettiviApi.new

body = FattureInCloud::CorrispettiviEliminaRequest.new # CorrispettiviEliminaRequest | Corpo richiesta


begin
  #Elimina registrazione
  result = api_instance.corrispettivi_elimina(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling CorrispettiviApi->corrispettivi_elimina: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CorrispettiviEliminaRequest**](CorrispettiviEliminaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corrispettivi_lista**
> CorrispettiviListaResponse corrispettivi_lista(body)

Elenco registrazioni

Restituisce la lista dei corrispettivi per l'anno specificato.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::CorrispettiviApi.new

body = FattureInCloud::CorrispettiviListaRequest.new # CorrispettiviListaRequest | Filtri per la ricerca dei corrispettivi


begin
  #Elenco registrazioni
  result = api_instance.corrispettivi_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling CorrispettiviApi->corrispettivi_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CorrispettiviListaRequest**](CorrispettiviListaRequest.md)| Filtri per la ricerca dei corrispettivi | 

### Return type

[**CorrispettiviListaResponse**](CorrispettiviListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corrispettivi_modifica**
> CorrispettiviNuovoResponse corrispettivi_modifica(body)

Modifica registrazione

Modifica un corrispettivo esistente. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::CorrispettiviApi.new

body = FattureInCloud::CorrispettiviModificaRequest.new # CorrispettiviModificaRequest | Corpo richiesta


begin
  #Modifica registrazione
  result = api_instance.corrispettivi_modifica(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling CorrispettiviApi->corrispettivi_modifica: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CorrispettiviModificaRequest**](CorrispettiviModificaRequest.md)| Corpo richiesta | 

### Return type

[**CorrispettiviNuovoResponse**](CorrispettiviNuovoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **corrispettivi_nuovo**
> CorrispettiviNuovoResponse corrispettivi_nuovo(body)

Nuova registrazione

Aggiunge un nuovo corrispettivo. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::CorrispettiviApi.new

body = FattureInCloud::CorrispettiviNuovoRequest.new # CorrispettiviNuovoRequest | Corpo richiesta


begin
  #Nuova registrazione
  result = api_instance.corrispettivi_nuovo(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling CorrispettiviApi->corrispettivi_nuovo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CorrispettiviNuovoRequest**](CorrispettiviNuovoRequest.md)| Corpo richiesta | 

### Return type

[**CorrispettiviNuovoResponse**](CorrispettiviNuovoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



