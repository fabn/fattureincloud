# FattureInCloud::DocListaResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **BOOLEAN** |  | [default to true]
**lista_documenti** | [**Array&lt;DocLight&gt;**](DocLight.md) |  | 
**pagina_corrente** | **Integer** | Numero della pagina restituita | [optional] [default to 1]
**numero_pagine** | **Integer** | Numero di pagine totali | [optional] [default to 1]
**numero_risultati** | **Integer** | Numero di risultati totali (di tutte le pagine) | [optional] [default to 0]
**risultati_per_pagina** | **Integer** | Numero massimo di risultati presenti in ogni pagina | [optional] [default to 250]


