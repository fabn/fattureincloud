# FattureInCloud::AnagraficaCliente

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco del cliente | [default to &#39;0&#39;]
**nome** | **String** | Nome o ragione sociale del cliente | [default to &#39;Mario Rossi&#39;]
**referente** | **String** | Nome referente | [default to &#39;&#39;]
**indirizzo_via** | **String** | Indirizzo del cliente | [default to &#39;Via delle Betulle, 123&#39;]
**indirizzo_cap** | **String** | CAP del cliente | [default to &#39;21012&#39;]
**indirizzo_citta** | **String** | Città (comune) del cliente | [default to &#39;Curno&#39;]
**indirizzo_provincia** | **String** | Provincia del cliente | [default to &#39;BG&#39;]
**indirizzo_extra** | **String** | Note extra sull&#39;indirizzo | [optional] [default to &#39;&#39;]
**paese** | **String** | Paese (nazionalità) del cliente | [default to &#39;Italia&#39;]
**mail** | **String** | Indirizzo di posta elettronica | [default to &#39;info@mariorossi.it&#39;]
**tel** | **String** | Recapito telefonico | [default to &#39;012345678&#39;]
**fax** | **String** | Numero fax | [default to &#39;012345678&#39;]
**piva** | **String** | Partita IVA | [default to &#39;IT1234567890&#39;]
**cf** | **String** | Codice fiscale | [default to &#39;ABCDEF12G34H567I&#39;]
**termini_pagamento** | **Integer** | Termini di pagamento predefiniti (giorni a partire dalla data del documento) | [default to 0]
**pagamento_fine_mese** | **BOOLEAN** | Indica se la scadenza del pagamento deve avvenire alla fine del mese (dopo i giorni specificati in &#39;termini_pagamento&#39;) | [default to false]
**val_iva_default** | **Float** | Valore IVA predefinito | [default to 22.0]
**desc_iva_default** | **String** | Descrizione IVA | [default to &#39;&#39;]
**extra** | **String** | Informazioni extra sul cliente | [default to &#39;&#39;]
**pa** | **BOOLEAN** | Indica se il cliente è una pubblica amministrazione | [default to false]
**pa_codice** | **String** | [Solo se PA&#x3D;true] Codice pubblica amministrazione | [optional] [default to &#39;&#39;]


