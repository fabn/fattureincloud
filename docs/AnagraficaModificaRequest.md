# FattureInCloud::AnagraficaModificaRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo del cliente o fornitore da modificare | [default to &#39;0&#39;]
**nome** | **String** | Nome o ragione sociale del cliente | [optional] [default to &#39;Mario Rossi&#39;]
**referente** | **String** | Nome referente | [optional] [default to &#39;&#39;]
**indirizzo_via** | **String** | Indirizzo del cliente | [optional] [default to &#39;Via delle Betulle, 123&#39;]
**indirizzo_cap** | **String** | CAP del cliente | [optional] [default to &#39;21012&#39;]
**indirizzo_citta** | **String** | Città (comune) del cliente | [optional] [default to &#39;Curno&#39;]
**indirizzo_provincia** | **String** | Provincia del cliente | [optional] [default to &#39;BG&#39;]
**indirizzo_extra** | **String** | Note extra sull&#39;indirizzo | [optional] [default to &#39;&#39;]
**paese** | **String** | Paese (nazionalità) del cliente | [optional] [default to &#39;Italia&#39;]
**paese_iso** | **String** | [Solo se \&quot;paese\&quot; non è valorizzato] Codice ISO del paese (nazionalità) del cliente (formato ISO alpha-2) in alternativa al parametro \&quot;paese\&quot; | [optional] [default to &#39;IT&#39;]
**mail** | **String** | Indirizzo di posta elettronica | [optional] [default to &#39;info@mariorossi.it&#39;]
**tel** | **String** | Recapito telefonico | [optional] [default to &#39;012345678&#39;]
**fax** | **String** | Numero fax | [optional] [default to &#39;012345678&#39;]
**piva** | **String** | Partita IVA | [optional] [default to &#39;IT1234567890&#39;]
**cf** | **String** | Codice fiscale | [optional] [default to &#39;ABCDEF12G34H567I&#39;]
**termini_pagamento** | **Integer** | [Solo clienti] Termini di pagamento predefiniti (giorni a partire dalla data del documento) | [optional] [default to 0]
**pagamento_fine_mese** | **BOOLEAN** | [Solo clienti] Indica se la scadenza del pagamento deve avvenire alla fine del mese (dopo i giorni specificati in &#39;termini_pagamento&#39;) | [optional] [default to false]
**cod_iva_default** | **Float** | [Solo clienti] Codice IVA predefinito | [optional] 
**extra** | **String** | Informazioni extra sul cliente | [optional] [default to &#39;&#39;]
**pa** | **BOOLEAN** | [Solo clienti] Indica se il cliente è una pubblica amministrazione | [optional] [default to false]
**pa_codice** | **String** | [Solo clienti con PA&#x3D;true] Codice pubblica amministrazione | [optional] [default to &#39;&#39;]


