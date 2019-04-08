# FattureInCloud::DocNuovoArticolo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo del prodotto (se nullo o mancante, la registrazione non viene collegata a nessun prodotto presente nell&#39;elenco prodotti) | [optional] [default to &#39;0&#39;]
**codice** | **String** | Codice prodotto | [optional] [default to &#39;&#39;]
**nome** | **String** | Nome articolo | [optional] [default to &#39;Articolo 1&#39;]
**um** | **String** | Unità di misura per il prodotto | [optional] [default to &#39;&#39;]
**quantita** | **Float** | Quantità di prodotto | [optional] [default to 1.0]
**descrizione** | **String** | Descrizione del prodotto | [optional] [default to &#39;&#39;]
**categoria** | **String** | Categoria del prodotto (utilizzata per il piano dei conti) | [optional] [default to &#39;&#39;]
**prezzo_netto** | **Float** | Prezzo unitario netto (IVA esclusa) [Obbligatorio se prezzi_netti!&#x3D;true] | [optional] [default to 0.0]
**prezzo_lordo** | **Float** | Prezzo unitario lordo (comprensivo di IVA) [Obbligatorio se prezzi_ivati&#x3D;true] | [optional] [default to 0.0]
**cod_iva** | **Float** | Codice aliquota IVA (ottenibili con il parametro \&quot;lista_iva\&quot; della funzione \&quot;/info/account\&quot;) | 
**tassabile** | **BOOLEAN** | Indica se l&#39;articolo è imponibile | [optional] [default to true]
**sconto** | **Float** | Sconto (percentuale) | [optional] [default to 0.0]
**applica_ra_contributi** | **BOOLEAN** | Indica se a questo articolo vengono applicate ritenute e contributi | [optional] [default to true]
**ordine** | **Integer** | Ordine dell&#39;articolo nel documento (ordinamento ascendente da 0 in poi) | [optional] [default to 0]
**sconto_rosso** | **Integer** | Se vale 1, evidenzia in rosso l&#39;eventuale sconto in fattura | [optional] [default to SCONTO_ROSSO.0]
**in_ddt** | **BOOLEAN** | Indica se l&#39;articolo è incluso nel ddt (se presente un ddt allegato, altrimenti non è significativo) | [optional] [default to false]
**magazzino** | **BOOLEAN** | Indica se viene movimentato il magazzino (true: viene movimentato; false: non viene movimentato) [Non influente se il prodotto non è collegato all&#39;elenco prodotti, oppure la funzionalità magazzino è disattivata] | [optional] [default to true]


