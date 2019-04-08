# FattureInCloud::DocInviamailRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo del documento da inviare | [optional] [default to &#39;0&#39;]
**token** | **String** | Identificativo permanente del documento da inviare (utilizzato per identificare il documento solo se manca il parametro \&quot;id\&quot;) | [optional] [default to &#39;1234567890abcdefghijklmnopqrstuv&#39;]
**mail_mittente** | **String** | Indirizzo e-mail del mittente da utilizzare per l&#39;invio (deve essere presente e configurato in Fatture In Cloud) | [default to &#39;no-reply@fattureincloud.it&#39;]
**mail_destinatario** | **String** | Indirizzo e-mail del destinatario | [default to &#39;prova@example.it&#39;]
**oggetto** | **String** | Oggetto dell&#39;e-mail | [default to &#39;Oggetto esempio&#39;]
**messaggio** | **String** | Corpo del messaggio da inviare (in HTML); dimesione massima: 10kB; il campo {{allegati}} è da lasciare dove si vuole che vengano inseriti i bottoni di download dei documenti | [default to &#39;Messaggio esempio&#39;]
**includi_documento** | **BOOLEAN** | Se \&quot;true\&quot;, include nel campo {allegati} un tasto che reindirizza al file PDF del documento principale | [optional] [default to true]
**invia_ddt** | **BOOLEAN** | Se \&quot;true\&quot;, include nel campo {allegati} un tasto che reindirizza al file PDF del ddt | [optional] [default to true]
**invia_fa** | **BOOLEAN** | Se \&quot;true\&quot;, include nel campo {allegati} un tasto che reindirizza alla fattura accompagnatoria allegata | [optional] [default to true]
**includi_allegato** | **BOOLEAN** | Se \&quot;true\&quot;, include nel campo {allegati} un tasto che reindirizza al file PDF del ddt | [optional] [default to true]
**invia_copia** | **BOOLEAN** | Se \&quot;true\&quot;, inserisce in cc il proprio indirizzo (associato all&#39;account di Fatture in Cloud) | [optional] [default to true]
**allega_pdf** | **BOOLEAN** | Se \&quot;true\&quot;, inserisce i documenti selezionati come allegati fisici (rinunciando al tracking completo dell&#39;e-mail) | [optional] [default to true]


