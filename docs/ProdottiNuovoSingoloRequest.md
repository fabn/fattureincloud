# FattureInCloud::ProdottiNuovoSingoloRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cod** | **String** | Codice prodotto | [optional] [default to &#39;&#39;]
**nome** | **String** | Nome del prodotto | [default to &#39;Prodotto esempio&#39;]
**desc** | **String** | Descrizione del prodotto | [optional] [default to &#39;&#39;]
**prezzo_ivato** | **BOOLEAN** | Specifica se il prezzo da registrare è calcolato sulla base del prezzo lordo (true) oppure se è calcolato sulla base del prezzo netto (false). | [optional] [default to false]
**prezzo_netto** | **Float** | Prezzo netto di vendita del prodotto (se prezzo_ivato&#x3D;false) | [optional] [default to 0.0]
**prezzo_lordo** | **Float** | Prezzo lordo di vendita del prodotto (se prezzo_ivato&#x3D;true) | [optional] [default to 0.0]
**costo** | **Float** | Prezzo netto di acquisto del prodotto (opzionale) | [optional] [default to 0.0]
**cod_iva** | **Float** | Codice IVA predefinito per il prodotto (il codice -1 indica che l&#39;aliquota IVA viene ereditata dal cliente/fornitore) | [optional] 
**um** | **String** | Unità di misura per il prodotto | [optional] [default to &#39;&#39;]
**categoria** | **String** | Categoria del prodotto (utilizzata per il piano dei conti) | [optional] [default to &#39;&#39;]
**note** | **String** | Note aggiuntive sul prodotto | [optional] [default to &#39;&#39;]
**magazzino** | **BOOLEAN** | [Solo con magazzino utilizzabile] Indica la gestione magazzino abilitata sul prodotto. | [optional] [default to false]
**giacenza_iniziale** | **Float** | [Solo con magazzino abilitato] Specifica la giacenza iniziale del prodotto all&#39;interno del magazzino. | [optional] 


