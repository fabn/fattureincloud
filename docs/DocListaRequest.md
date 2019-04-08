# FattureInCloud::DocListaRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anno** | **Integer** |  | [default to 2017]
**cliente** | **String** | Restringe la ricerca ai clienti che contengono questa stringa nel nome | [optional] [default to &#39;&#39;]
**fornitore** | **String** | Restringe la ricerca ai fornitori che contengono questa stringa nel nome | [optional] [default to &#39;&#39;]
**id_cliente** | **String** | Restringe la ricerca al cliente con questo id [solo per tipo-doc!&#x3D;\&quot;ordforn\&quot;] | [optional] [default to &#39;&#39;]
**id_fornitore** | **String** | Restringe la ricerca al cliente con questo id [solo per tipo-doc&#x3D;\&quot;ordforn\&quot;] | [optional] [default to &#39;&#39;]
**saldato** | **BOOLEAN** | Elenca solo i documenti saldati completamente (true) o non saldati/saldati parzialmente (false) [Solo per fatture, ricevute, note di credito, ordini e pro forma]  | [optional] [default to false]
**oggetto** | **String** | Restringe la ricerca ai documenti che contengono questa stringa nell&#39;oggetto, sia quello interno che quello visibile in fattura | [optional] [default to &#39;&#39;]
**ogni_ddt** | **BOOLEAN** | Elenca tutti i documenti contenenti un DDT (true) o solo i DDT singoli (false) [Solo per ddt] | [optional] [default to false]
**pa** | **BOOLEAN** | Restringe la ricerca ai documenti emessi nel formato FatturaPA (true) oppure no (false); se non valorizzato vengono restituiti tutti | [optional] [default to false]
**pa_tipo_cliente** | **String** | [Solo se PA&#x3D;true] Restringe la ricerca ai documenti emessi verso Pubbliche Amministrazioni (\&quot;PA\&quot;) oppure a privati (\&quot;B2B\&quot;); se non valorizzato vengono restituiti entrambi | [optional] [default to &#39;&#39;]
**pagina** | **Integer** | Specifica il numero di pagina dei risultati (se non specificato vale 1) | [optional] [default to 1]


