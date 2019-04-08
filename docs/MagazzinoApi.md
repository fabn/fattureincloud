# FattureInCloud::MagazzinoApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**arrivi_dettagli**](MagazzinoApi.md#arrivi_dettagli) | **POST** /arrivimerce/dettagli | Dettagli arrivo merce
[**arrivi_lista**](MagazzinoApi.md#arrivi_lista) | **POST** /arrivimerce/lista | Elenco arrivi merce


# **arrivi_dettagli**
> ArriviDettagliResponse arrivi_dettagli(body)

Dettagli arrivo merce

Restituisce i dettagli dell'arrivo merce richiesto.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::MagazzinoApi.new

body = FattureInCloud::ArriviDettagliRequest.new # ArriviDettagliRequest | 


begin
  #Dettagli arrivo merce
  result = api_instance.arrivi_dettagli(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling MagazzinoApi->arrivi_dettagli: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ArriviDettagliRequest**](ArriviDettagliRequest.md)|  | 

### Return type

[**ArriviDettagliResponse**](ArriviDettagliResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **arrivi_lista**
> ArriviListaResponse arrivi_lista(body)

Elenco arrivi merce

Restituisce la lista degli arrivi merce per l'anno di competenza specificato.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::MagazzinoApi.new

body = FattureInCloud::ArriviListaRequest.new # ArriviListaRequest | Filtri per la ricerca dei documenti


begin
  #Elenco arrivi merce
  result = api_instance.arrivi_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling MagazzinoApi->arrivi_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ArriviListaRequest**](ArriviListaRequest.md)| Filtri per la ricerca dei documenti | 

### Return type

[**ArriviListaResponse**](ArriviListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



