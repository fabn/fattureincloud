# FattureInCloud::AcquistiDetailed

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco del documento | [default to &#39;0&#39;]
**tipo** | **String** | Tipologia del documento | [default to &#39;spesa&#39;]
**id_fornitore** | **String** | Identificativo univoco del fornitore (se nullo, il fornitore non è presente nell&#39;anagrafica) | [optional] [default to &#39;0&#39;]
**nome** | **String** | Nome o ragione sociale del fornitore | [default to &#39;Mario Rossi&#39;]
**descrizione** | **String** | Descrizione dell&#39;acquisto | [default to &#39;Licenza software ABC&#39;]
**categoria** | **String** | Categoria documento | [optional] [default to &#39;&#39;]
**importo_netto** | **Float** | Importo netto del documento | [default to 0.0]
**importo_iva** | **Float** | Importo iva del documento | [default to 0.0]
**importo_totale** | **Float** | Importo lordo del documento | [default to 0.0]
**valuta** | **String** | Valuta del documento e degli importi indicati | [default to &#39;EUR&#39;]
**valuta_cambio** | **Float** | Tasso di cambio EUR/{valuta} | [default to 1.0]
**link_allegato** | **String** | Link al file allegato al documento (presente solo se \&quot;mostra_link_allegato\&quot; vale \&quot;true\&quot; e l&#39;allegato esiste) (\&quot;file_allegato\&quot; viene deprecato in favore di \&quot;link_allegato\&quot;) | [optional] 
**ritenuta_acconto** | **Float** | Valore ritenuta d&#39;acconto | [default to 0.0]
**ritenuta_previdenziale** | **Float** | Valore ritenuta previdenziale | [default to 0.0]
**deducibilita_tasse** | **Float** | Deducibilità della spesa (percentuale) | [default to 100.0]
**detraibilita_iva** | **Float** | Detraibilità dell&#39;IVA (percentuale) | [default to 100.0]
**ammortamento** | **Integer** | Anni di ammortamento [1&#x3D;Nessun ammortamento] | [default to 1]
**centro_costo** | **String** | Centro di costo | [optional] [default to &#39;&#39;]
**numero_fattura** | **String** | Numero della fattura di acquisto | [optional] [default to &#39;&#39;]
**lista_pagamenti** | [**Array&lt;DocPagamento&gt;**](DocPagamento.md) | Lista delle tranches di pagamento | 
**lista_articoli** | [**Array&lt;AcquistiArticolo&gt;**](AcquistiArticolo.md) | Lista degli articoli in fattura (se non esiste significa che è stato registrato solamente il totale) | [optional] 


