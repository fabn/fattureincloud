# FattureInCloud::DocInfomailResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **BOOLEAN** |  | [default to true]
**mail_destinatario** | **String** | Indirizzo e-mail del destinatario (se presente nell&#39;anagrafica clienti/fornitori) | [optional] [default to &#39;mario.rossi@example.it&#39;]
**mail_mittente** | [**Array&lt;DocInfomailMail&gt;**](DocInfomailMail.md) | Lista degli indirizzi e-mail configurati | [optional] 
**mail_cc** | **String** | Indirizzo e-mail inserito in cc (se richiesto); corrisponde all&#39;indirizzo di rdell&#39;account Fatture in Cloud | [optional] [default to &#39;mio.indirizzo@example.it&#39;]
**oggetto_default** | **String** | Oggetto predefinito utilizzato nelle e-mail | [optional] [default to &#39;Nostra fattura nr. 1&#39;]
**messaggio_default** | **String** | Messaggio predefinito utilizzato nelle e-mail (secondo i modelli configurati) | [optional] [default to &#39;Gentile Mario Rossi, ecco la nostra fattura.&#39;]
**esiste_documento** | **BOOLEAN** | Se \&quot;true\&quot;, è presente un documento da allegare con \&quot;includi_documento\&quot; (è \&quot;false\&quot; solo se si tratta di un ddt, con cui è necessario utilizzare \&quot;invia_ddt\&quot;) | [optional] [default to true]
**esiste_ddt** | **BOOLEAN** | Se \&quot;true\&quot;, è presente un ddt collegato si può includere con \&quot;invia_ddt\&quot; | [optional] [default to true]
**esiste_fa** | **BOOLEAN** | Se \&quot;true\&quot;, è presente una fattura accompagnatoria collegata e si può includere con \&quot;invia_fa\&quot; | [optional] [default to true]
**esiste_allegato** | **BOOLEAN** | Se \&quot;true\&quot;, è presente un allegato interno e si può includere con \&quot;includi_allegato\&quot; | [optional] [default to true]


