# FattureInCloud::DocArticolo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo del prodotto (se nullo, non è presente tra i prodotti) | [default to &#39;0&#39;]
**codice** | **String** | Codice prodotto | [default to &#39;&#39;]
**nome** | **String** | Nome articolo | [default to &#39;Articolo 1&#39;]
**um** | **String** | Unità di misura per il prodotto | [default to &#39;&#39;]
**quantita** | **Float** | Quantità di prodotto | [default to 1.0]
**descrizione** | **String** | Descrizione del prodotto | [default to &#39;&#39;]
**categoria** | **String** | Categoria del prodotto (utilizzata per il piano dei conti) | [default to &#39;&#39;]
**prezzo_netto** | **Float** | Prezzo unitario netto (IVA esclusa) | [default to 0.0]
**prezzo_lordo** | **Float** | Prezzo unitario lordo (comprensivo di IVA) | [default to 0.0]
**valore_iva** | **Float** | Valore IVA (percentuale) | [default to 0.0]
**desc_iva** | **String** | Descrizione della tipologia di IVA | [default to &#39;&#39;]
**tassabile** | **BOOLEAN** | [Non presente in ordforn e ddt] Indica se l&#39;articolo è imponibile | [default to true]
**sconto** | **Float** | [Non presente in ddt] Sconto (percentuale) | [default to 0.0]
**applica_ra_contributi** | **BOOLEAN** | [Non presente in ordforn e ddt] Indica se a questo articolo vengono applicate ritenute e contributi | [default to true]
**ordine** | **Integer** | Ordine dell&#39;articolo in fattura (ordinamento ascendente) | [default to 0]
**sconto_rosso** | **BOOLEAN** | [Non presente in ordforn e ddt] Evidenzia l&#39;eventuale sconto in fattura | [default to false]
**in_ddt** | **BOOLEAN** | [Non presente in ordforn e ddt] Indica se l&#39;articolo è incluso nel DDT (se presente, altrimenti non è significativo) | [default to false]
**magazzino** | **BOOLEAN** | Indica se viene movimentato il magazzino (true: viene movimentato; false: non viene movimentato) [Non presente se in ordforn e ddt, oppure se il prodotto non è collegato all&#39;elenco prodotti, oppure la funzionalità magazzino era disattiva al momento della creazione del documento] | [optional] [default to true]


