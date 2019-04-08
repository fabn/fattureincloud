# FattureInCloud::Prodotto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco del prodotto | [default to &#39;0&#39;]
**cod** | **String** | Codice prodotto | [default to &#39;&#39;]
**nome** | **String** | Nome del prodotto | [default to &#39;Prodotto esempio&#39;]
**desc** | **String** | Descrizione del prodotto | [default to &#39;&#39;]
**prezzo_ivato** | **BOOLEAN** | Specifica se è registrato il prezzo comprensivo di iva (lordo) oppure non lo è (netto) | [default to false]
**prezzo_netto** | **Float** | Prezzo netto di vendita del prodotto (se prezzo_ivato&#x3D;false) | [optional] [default to 0.0]
**prezzo_lordo** | **Float** | Prezzo lordo di vendita del prodotto (se prezzo_ivato&#x3D;true) | [optional] [default to 0.0]
**costo** | **Float** | Prezzo netto di acquisto del prodotto (opzionale) | [optional] [default to 0.0]
**valore_iva** | **Float** | Valore IVA predefinito per il prodotto (il valore -1 indica che l&#39;aliquota IVA viene ereditata dal cliente/fornitore) | [default to 22.0]
**desc_iva** | **String** | Descrizione IVA predefinita | [default to &#39;&#39;]
**um** | **String** | Unità di misura per il prodotto | [default to &#39;&#39;]
**categoria** | **String** | Categoria del prodotto (utilizzata per il piano dei conti) | [default to &#39;&#39;]
**note** | **String** | Note aggiuntive sul prodotto | [default to &#39;&#39;]
**magazzino** | **BOOLEAN** | [Solo con magazzino utilizzabile] Indica la gestione magazzino abilitata sul prodotto. | [optional] [default to false]
**giacenza_iniziale** | **Float** | [Solo con magazzino abilitato] Specifica la giacenza iniziale del prodotto all&#39;interno del magazzino. | [optional] 
**giacenza** | **Float** | [Solo con magazzino abilitato] Specifica la giacenza attuale del prodotto all&#39;interno del magazzino. | [optional] 


