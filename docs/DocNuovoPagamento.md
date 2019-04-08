# FattureInCloud::DocNuovoPagamento

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**importo** | **String** | Importo del pagamento (se vale 0 la tranche di pagamento non viene inserita; se vale \&quot;auto\&quot; e la tranche è una sola viene completato automaticamente) | [default to &#39;0&#39;]
**metodo** | **String** | Medodo di pagamento &#x3D; [&#39;not&#39; o &#39;rev&#39; o il nome del conto] (&#39;not&#39; indica che non è stato saldato, &#39;rev&#39; che è stato stornato; se non esiste un conto con il nome specificato viene creato un nuovo conto in FIC) | [default to &#39;not&#39;]


