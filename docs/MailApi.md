# FattureInCloud::MailApi

All URIs are relative to *https://api.fattureincloud.it/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mail_lista**](MailApi.md#mail_lista) | **POST** /mail/lista | Elenco mail


# **mail_lista**
> MailListaResponse mail_lista(body)

Elenco mail

Restituisce la lista contenente le mail ordinate per data, dalla più recente alla più vecchia. I risultati possono essere filtrati per mittente, destinatario, contenuto, data e stato e vengono organizzati in pagine per evitare risposte troppo pesanti (50 risultati per pagina).

### Example
```ruby
# load the gem
require 'fattureincloud'

api_instance = FattureInCloud::MailApi.new

body = FattureInCloud::MailListaRequest.new # MailListaRequest | Corpo richiesta


begin
  #Elenco mail
  result = api_instance.mail_lista(body)
  p result
rescue FattureInCloud::ApiError => e
  puts "Exception when calling MailApi->mail_lista: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MailListaRequest**](MailListaRequest.md)| Corpo richiesta | 

### Return type

[**MailListaResponse**](MailListaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



