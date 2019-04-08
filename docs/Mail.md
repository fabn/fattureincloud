# FattureInCloud::Mail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco dela mail | [default to &#39;0&#39;]
**stato_invio** | **String** | Stato di invio della mail | [default to &#39;inviato&#39;]
**mail_mittente** | **String** | Indirizzo del mittente | [default to &#39;info@mariorossi.it&#39;]
**mittente** | **Float** | Nome del mittente | 
**mail_destinatario** | **String** | Indirizzo del destinatario | [default to &#39;info@giovanniverdi.it&#39;]
**destinatario** | **String** | Nome del destinatario | [default to &#39;Giovanni Verdi&#39;]
**oggetto** | **String** | Oggetto della mail | [default to &#39;Nostra fattura n. 123&#39;]
**messaggio** | **String** | Testo della mail | [default to &#39;Ecco la fattura n. 123 del valore di 12.34 EUR&#39;]
**mail_copia** | **String** | Indirizzo a cui viene inviata una copia | [optional] [default to &#39;&#39;]
**tipo** | **String** | Tipo di documento o mail | [default to &#39;Fatture&#39;]
**stato_lettura** | **String** | Indica se il messaggio è stato letto o il documento è stato aperto (solo con tracciamento attivo) (solo se lo stato è &#39;inviato&#39;) | [optional] [default to &#39;mail_letta&#39;]
**allegati** | **String** | Allegati | [optional] [default to &#39;&#39;]


