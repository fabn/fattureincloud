# FattureInCloud::AcquistiListaRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anno** | **Integer** |  | 
**tipo** | **String** | Specifica il tipo di documenti da cercare | [optional] [default to &#39;&#39;]
**fornitore** | **String** | Restringe la ricerca ai fornitori che contengono questa stringa nel nome | [optional] [default to &#39;&#39;]
**id_fornitore** | **String** | Restringe la ricerca al fornitore con questo id | [optional] [default to &#39;&#39;]
**saldato** | **BOOLEAN** | Elenca solo i documenti saldati completamente (true) o non saldati/saldati parzialmente (false) | [optional] [default to false]
**mostra_link_allegato** | **BOOLEAN** | Se true, include in ogni risultato il link all&#39;eventuale allegato | [optional] [default to false]


