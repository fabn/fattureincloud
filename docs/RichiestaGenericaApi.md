# FattureInCloud::RichiestaGenericaApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**j_son_request**](RichiestaGenericaApi.md#j_son_request) | **POST** /richiesta/info | Modello richiesta JSON


# **j_son_request**
> j_son_request(body)

Modello richiesta JSON

Modello di una richiesta generica in formato JSON per API di Fatture In Cloud. Utilizzala per verificare la correttezza dei tuoi parametri e le richieste che ti rimangono.

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::RichiestaGenericaApi.new

body = FattureInCloud::JSONRequest.new # JSONRequest | Corpo della richiesta che contiene tutti i parametri in formato JSON


begin
  #Modello richiesta JSON
  api_instance.j_son_request(body)
rescue FattureInCloud::ApiError => e
  puts "Exception when calling RichiestaGenericaApi->j_son_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JSONRequest**](JSONRequest.md)| Corpo della richiesta che contiene tutti i parametri in formato JSON | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



