# FattureInCloud::CorrispettiviNuovoRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tipo** | **String** | Tipologia dei documenti da registrare | [default to &#39;ricevute&#39;]
**protocollo_auto** | **BOOLEAN** | Specifica se attribuire in modo automatico il protocollo sulla base della numerazione presente nel parametro \&quot;protocollo\&quot;. | [optional] [default to false]
**protocollo** | **String** | Numero protocollo e numerazione del documento; se non specificato o vuoto, viene utilizzata la numerazione principale; se protocollo_auto&#x3D;false e viene specificata solo la numerazione, viene assegnata solamente la numerazione e non un numero di protocollo; se protocollo_auto&#x3D;true, è possibile specificare solo la numerazione (un eventuale numero verrebbe sovrascritto) | [optional] [default to &#39;1A&#39;]
**desc** | **String** | Descrizione | [optional] [default to &#39;Descrizione prova&#39;]
**centro_ricavo** | **String** | Centro di ricavo | [optional] [default to &#39;&#39;]
**metodo** | **String** | Conto di saldo | [default to &#39;Banca XYZ&#39;]
**importi_ivati** | **BOOLEAN** | Specifica se gli importi specificati in \&quot;lista_righe\&quot; sono comprensivi di iva (true) oppure netti (false) | [optional] [default to false]
**lista_righe** | [**Array&lt;CorrispettiviNuovoRiga&gt;**](CorrispettiviNuovoRiga.md) | Lista delle righe della registrazione | [optional] 


