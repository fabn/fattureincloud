# FattureInCloud::AcquistiArticolo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo del prodotto (se nullo, non è presente tra i prodotti) | [optional] [default to &#39;0&#39;]
**codice** | **String** | Codice prodotto | [default to &#39;&#39;]
**nome** | **String** | Nome articolo | [default to &#39;Articolo 1&#39;]
**um** | **String** | Unità di misura per il prodotto | [default to &#39;&#39;]
**quantita** | **Float** | Quantità di prodotto | [default to 1.0]
**prezzo_netto** | **Float** | Prezzo unitario | [default to 0.0]
**valore_iva** | **Float** | Valore IVA (percentuale) | [default to 0.0]
**desc_iva** | **String** | Descrizione della tipologia di IVA | [default to &#39;&#39;]
**categoria** | **String** | Categoria del prodotto (utilizzata per il piano dei conti) | [default to &#39;&#39;]
**ordine** | **Integer** | Ordine dell&#39;articolo in fattura (ordinamento ascendente) | [default to 0]
**magazzino** | **BOOLEAN** | Indica se viene movimentato il magazzino (true: viene movimentato; false: non viene movimentato) [Non presente se il prodotto non è collegato all&#39;elenco prodotti, oppure la funzionalità magazzino era disattiva al momento della creazione del documento] | [optional] [default to true]


