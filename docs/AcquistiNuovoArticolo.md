# FattureInCloud::AcquistiNuovoArticolo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo del prodotto (se nullo o mancante, la registrazione non viene collegata a nessun prodotto presente nell&#39;elenco prodotti) | [optional] [default to &#39;0&#39;]
**codice** | **String** | Codice prodotto | [default to &#39;&#39;]
**nome** | **String** | Nome articolo | [default to &#39;Articolo 1&#39;]
**um** | **String** | Unità di misura per il prodotto | [default to &#39;&#39;]
**quantita** | **Float** | Quantità di prodotto | [default to 1.0]
**prezzo_netto** | **Float** | Prezzo unitario | [default to 0.0]
**cod_iva** | **Float** | Codice aliquota IVA (ottenibili con il parametro \&quot;lista_iva\&quot; della funzione \&quot;/info/account\&quot;) | [optional] 
**categoria** | **String** | Categoria del prodotto (utilizzata per il piano dei conti) | [default to &#39;&#39;]
**ordine** | **Integer** | Ordine dell&#39;articolo in fattura (ordinamento ascendente) | [default to 0]
**magazzino** | **BOOLEAN** | Indica se deve essere movimentato il magazzino (true: viene movimentato; false: non viene movimentato) [Funziona solamente se viene specificato un \&quot;id\&quot; corrispondente a un prodotto a magazzino] | [optional] [default to true]


