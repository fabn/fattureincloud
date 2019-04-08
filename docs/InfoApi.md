# FattureInCloud::InfoApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**info_lista**](InfoApi.md#info_lista) | **POST** /info/account | Informazioni


# **info_lista**
> InfoListaResponse info_lista(body)

Informazioni

Restituisce informazioni riguardanti l'account, i valori fissi e quelli personali, ad esempio il nome, le liste di valute, codici iva, paesi etc. I campi supportati sono: nome, durata_licenza, tipo_licenza, lista_valute, lista_iva, lista_paesi,lista_template, lista_conti, lista_metodi_pagamento.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::InfoApi.new

body = FattureInCloud::InfoListaRequest.new # InfoListaRequest | Corpo richiesta


begin
  #Informazioni
  result = api_instance.info_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling InfoApi->info_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InfoListaRequest**](InfoListaRequest.md)| Corpo richiesta | 

### Return type

[**InfoListaResponse**](InfoListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



