# FattureInCloud::ProdottiApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prodotti_elimina**](ProdottiApi.md#prodotti_elimina) | **POST** /prodotti/elimina | Elimina prodotto
[**prodotti_lista**](ProdottiApi.md#prodotti_lista) | **POST** /prodotti/lista | Elenco prodotti
[**prodotti_modifica**](ProdottiApi.md#prodotti_modifica) | **POST** /prodotti/modifica | Modifica prodotto
[**prodotti_nuovo_lista**](ProdottiApi.md#prodotti_nuovo_lista) | **POST** /prodotti/importa | Importazione multipla prodotti
[**prodotto_nuovo_singolo**](ProdottiApi.md#prodotto_nuovo_singolo) | **POST** /prodotti/nuovo | Nuovo prodotto singolo


# **prodotti_elimina**
> GenericSuccessResponse prodotti_elimina(body)

Elimina prodotto

Elimina definitivamente un prodotto.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::ProdottiApi.new

body = FattureInCloud::ProdottiEliminaRequest.new # ProdottiEliminaRequest | Corpo richiesta


begin
  #Elimina prodotto
  result = api_instance.prodotti_elimina(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling ProdottiApi->prodotti_elimina: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProdottiEliminaRequest**](ProdottiEliminaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **prodotti_lista**
> ProdottiListaResponse prodotti_lista(body)

Elenco prodotti

Restituisce la lista contenente i prodotti. I risultati possono essere filtrati (vedi modello richiesta) e vengono organizzati in pagine per evitare risposte troppo pesanti (attualmente 500 risultati per pagina).

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::ProdottiApi.new

body = FattureInCloud::ProdottiListaRequest.new # ProdottiListaRequest | Corpo richiesta


begin
  #Elenco prodotti
  result = api_instance.prodotti_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling ProdottiApi->prodotti_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProdottiListaRequest**](ProdottiListaRequest.md)| Corpo richiesta | 

### Return type

[**ProdottiListaResponse**](ProdottiListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **prodotti_modifica**
> GenericSuccessResponse prodotti_modifica(body)

Modifica prodotto

Modifica un prodotto esistente. In caso di parametri non specificati il corrispondente valore già presente rimane invariato.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::ProdottiApi.new

body = FattureInCloud::ProdottiModificaRequest.new # ProdottiModificaRequest | Corpo richiesta


begin
  #Modifica prodotto
  result = api_instance.prodotti_modifica(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling ProdottiApi->prodotti_modifica: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProdottiModificaRequest**](ProdottiModificaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **prodotti_nuovo_lista**
> GenericSuccessResponse prodotti_nuovo_lista(body)

Importazione multipla prodotti

Crea nuovi prodotti in blocco. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::ProdottiApi.new

body = FattureInCloud::ProdottiNuovoListaRequest.new # ProdottiNuovoListaRequest | Corpo richiesta


begin
  #Importazione multipla prodotti
  result = api_instance.prodotti_nuovo_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling ProdottiApi->prodotti_nuovo_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProdottiNuovoListaRequest**](ProdottiNuovoListaRequest.md)| Corpo richiesta | 

### Return type

[**GenericSuccessResponse**](GenericSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **prodotto_nuovo_singolo**
> ProdottiNuovoSingoloResponse prodotto_nuovo_singolo(body)

Nuovo prodotto singolo

Crea un nuovo prodotto. In caso di parametri non specificati vengono assunti quelli predefiniti.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::ProdottiApi.new

body = FattureInCloud::ProdottiNuovoSingoloRequest.new # ProdottiNuovoSingoloRequest | Corpo richiesta


begin
  #Nuovo prodotto singolo
  result = api_instance.prodotto_nuovo_singolo(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling ProdottiApi->prodotto_nuovo_singolo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProdottiNuovoSingoloRequest**](ProdottiNuovoSingoloRequest.md)| Corpo richiesta | 

### Return type

[**ProdottiNuovoSingoloResponse**](ProdottiNuovoSingoloResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



