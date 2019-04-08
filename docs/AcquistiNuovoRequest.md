# FattureInCloud::AcquistiNuovoRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tipo** | **String** | Tipologia del documento | [default to &#39;spesa&#39;]
**id_fornitore** | **String** | Identificativo univoco del fornitore (serve per creare un collegamento tra il documento e un fornitore in anagrafica; se nullo, il documento non viene collegato a nessun fornitore già esistente in anagrafica; se mancante, viene fatto il collegamento con piva o cf) | [optional] [default to &#39;0&#39;]
**nome** | **String** | Nome o ragione sociale del fornitore | [optional] [default to &#39;Mario Rossi&#39;]
**piva** | **String** | Partita IVA fornitore (utilizzato solo per ricercare il cliente in assenza di \&quot;id_fornitore\&quot; o completare l&#39;anagrafica) | [optional] [default to &#39;IT1234567890&#39;]
**cf** | **String** | Codice fiscale fornitore (utilizzato solo per ricercare il cliente in assenza di \&quot;id_fornitore\&quot; e \&quot;piva\&quot; o completare l&#39;anagrafica) | [optional] [default to &#39;ABCDEF12G34H567I&#39;]
**autocompila_anagrafica** | **BOOLEAN** | Se \&quot;true\&quot;, completa il nome del fornitore con quello presente nell&#39;anagrafica fornitori (sovrascrivendo quelli presenti), effettuando la ricerca tramite i campi id_fornitore, piva e cf (in quest&#39;ordine) | [optional] [default to false]
**salva_anagrafica** | **BOOLEAN** | Se \&quot;true\&quot;, aggiorna l&#39;anagrafica fornitori con il nome specificato: se il fornitore non esiste viene creato, mentre se il fornitore esiste già il nome viene aggiornato; il fornitore viene ricercato tramite i campi id_fornitore, piva e cf (in quest&#39;ordine) | [optional] [default to false]
**descrizione** | **String** | Descrizione dell&#39;acquisto | [optional] [default to &#39;Acquisto di prova&#39;]
**categoria** | **String** | Categoria documento | [optional] [default to &#39;&#39;]
**importo_netto** | **Float** | Importo netto del documento [preso in considerazione solo se tipo&#x3D;\&quot;ndc\&quot; o lista_articoli è specificata e non vuota] | [optional] [default to 0.0]
**importo_iva** | **Float** | Importo iva del documento [preso in considerazione solo se tipo&#x3D;\&quot;ndc\&quot; o lista_articoli è specificata e non vuota] | [optional] [default to 0.0]
**valuta** | **String** | Valuta del documento e degli importi indicati | [optional] [default to &#39;EUR&#39;]
**valuta_cambio** | **Float** | Tasso di cambio EUR/{valuta} | [optional] [default to 1.0]
**ritenuta_acconto** | **Float** | Valore ritenuta d&#39;acconto | [optional] [default to 0.0]
**ritenuta_previdenziale** | **Float** | Valore ritenuta previdenziale | [optional] [default to 0.0]
**deducibilita_tasse** | **Float** | Deducibilità della spesa (percentuale) | [optional] [default to 100.0]
**detraibilita_iva** | **Float** | Detraibilità dell&#39;IVA (percentuale) | [optional] [default to 100.0]
**ammortamento** | **Integer** | Anni di ammortamento [1&#x3D;Nessun ammortamento] | [optional] [default to 1]
**centro_costo** | **String** | Centro di costo | [optional] [default to &#39;&#39;]
**numero_fattura** | **String** | Numero della fattura di acquisto | [optional] [default to &#39;&#39;]
**lista_pagamenti** | [**Array&lt;DocNuovoPagamento&gt;**](DocNuovoPagamento.md) | Lista delle tranches di pagamento | 
**lista_articoli** | [**Array&lt;AcquistiNuovoArticolo&gt;**](AcquistiNuovoArticolo.md) | [Solo per tipo&#x3D;\&quot;spesa\&quot;] Lista degli articoli in fattura (se non specificato o vuoto, vengono utilizzati i valori \&quot;importo_netto\&quot; e \&quot;importo_iva\&quot;) | [optional] 


