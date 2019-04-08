# FattureInCloud::CorrispettiviDetailed

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco della registrazione | [default to &#39;0&#39;]
**tipo** | **String** | Tipologia dei documenti registrati | [default to &#39;ricevute&#39;]
**protocollo** | **String** | Numero protocollo e numerazione del documento; se vuoto, non è stato assegnato assegnato un protocollo | [default to &#39;1A&#39;]
**desc** | **String** | Descrizione | [default to &#39;Descrizione prova&#39;]
**importo_netto** | **Float** | Importo totale netto della registrazione | [default to 0.0]
**importo_lordo** | **Float** | Importo totale lordo della registrazione | [default to 0.0]
**centro_ricavo** | **String** | Centro di ricavo | [default to &#39;&#39;]
**metodo** | **String** | Conto di saldo | [default to &#39;Banca XYZ&#39;]
**importi_ivati** | **BOOLEAN** | Specifica se gli importi specificati in \&quot;lista_righe\&quot; sono comprensivi di iva (true) oppure netti (false) | [default to false]
**lista_righe** | [**Array&lt;CorrispettiviRiga&gt;**](CorrispettiviRiga.md) | Lista delle righe della registrazione | 


