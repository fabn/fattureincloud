# FattureInCloud::InfoListaResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **BOOLEAN** |  | [default to true]
**nome** | **String** | Nome o ragione sociale dell&#39;azienda | [optional] [default to &#39;Mario Rossi S.r.l.&#39;]
**durata_licenza** | **Integer** | Numero di giorni rimanenti per la licenza attiva | [optional] [default to 365]
**tipo_licenza** | **String** | Tipo di licenza attiva | [optional] [default to &#39;standard&#39;]
**lista_valute** | [**Array&lt;InfoValuta&gt;**](InfoValuta.md) | Lista delle valute supportate | [optional] 
**lista_iva** | [**Array&lt;InfoIva&gt;**](InfoIva.md) | Lista delle aliquote iva | [optional] 
**lista_paesi** | **Array&lt;String&gt;** |  | [optional] 
**lista_template** | [**Array&lt;InfoTemplate&gt;**](InfoTemplate.md) | Lista dei template dei documenti (fatture, ordini, preventivi, ricevute, ndc, proforma) | [optional] 
**lista_template_ddt** | [**Array&lt;InfoTemplate&gt;**](InfoTemplate.md) | Lista dei template dei DDT | [optional] 
**lista_template_ddt_ftacc** | [**Array&lt;InfoTemplate&gt;**](InfoTemplate.md) | Lista dei template delle fatture accompagnatorie | [optional] 
**lista_conti** | [**Array&lt;InfoConto&gt;**](InfoConto.md) | Lista dei conti | [optional] 
**lista_metodi_pagamento** | [**Array&lt;InfoMetodo&gt;**](InfoMetodo.md) | Lista dei metodi di pagamento | [optional] 


