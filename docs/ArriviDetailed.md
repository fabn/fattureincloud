# FattureInCloud::ArriviDetailed

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco del documento | [default to &#39;0&#39;]
**id_fornitore** | **String** | Identificativo univoco del fornitore (se nullo, il fornitore non è presente nell&#39;anagrafica) | [optional] [default to &#39;0&#39;]
**nome** | **String** | Nome o ragione sociale del fornitore | [default to &#39;Mario Rossi&#39;]
**descrizione** | **String** | Descrizione del documento | [default to &#39;Licenza software ABC&#39;]
**categoria** | **String** | Categoria documento | [optional] [default to &#39;&#39;]
**importo_netto** | **Float** | Importo netto del documento | [default to 0.0]
**importo_iva** | **Float** | Importo iva del documento | [default to 0.0]
**importo_totale** | **Float** | Importo lordo del documento | [default to 0.0]
**valuta** | **String** | Valuta del documento e degli importi indicati | [default to &#39;EUR&#39;]
**valuta_cambio** | **Float** | Tasso di cambio EUR/{valuta} | [default to 1.0]
**link_allegato** | **String** | Link al file allegato al documento (presente solo se \&quot;mostra_link_allegato\&quot; vale \&quot;true\&quot; e l&#39;allegato esiste) | [optional] 
**numero_ddt** | **String** | Numero del ddt ricevuto | [optional] [default to &#39;&#39;]
**lista_articoli** | [**Array&lt;AcquistiArticolo&gt;**](AcquistiArticolo.md) | Lista degli articoli | 


