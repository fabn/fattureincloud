# FattureInCloud::DocLight

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificativo univoco del documento (cambia a seguito di una modifica del documento) | [default to &#39;0&#39;]
**token** | **String** | Identificativo permanente del documento (rimane lo stesso anche a seguito di modiifche) | [default to &#39;1234567890abcdefghijklmnopqrstuv&#39;]
**tipo** | **String** | Tipologia del documento | [default to &#39;fatture&#39;]
**id_cliente** | **String** | Identificativo univoco del cliente (se nullo, il cliente non è presente nell&#39;anagrafica) [solo con tipo!&#x3D;\&quot;ordforn\&quot;] | [optional] [default to &#39;0&#39;]
**id_fornitore** | **String** | Identificativo univoco del fornitore (se nullo, il fornitore non è presente nell&#39;anagrafica) [solo con tipo&#x3D;\&quot;ordforn\&quot;] | [optional] [default to &#39;0&#39;]
**nome** | **String** | Nome o ragione sociale del cliente/fornitore | [default to &#39;Mario Rossi&#39;]
**numero** | **String** | Numero (e serie) del documento | [default to &#39;1a&#39;]
**importo_netto** | **Float** | Importo netto del documento (competenze) | [default to 0.0]
**importo_totale** | **Float** | Importo lordo del documento (totale da pagare) | [default to 0.0]
**valuta** | **String** | Valuta del documento e degli importi indicati | [default to &#39;EUR&#39;]
**valuta_cambio** | **Float** | Tasso di cambio EUR/{valuta} | [default to 1.0]
**ddt** | **BOOLEAN** | [Solo se tipo!&#x3D;ndc] Indica la presenza di un DDT incluso nel documento (per i ddt è sempre true) | [optional] [default to false]
**ftacc** | **BOOLEAN** | [Solo se tipo&#x3D;fatture] Indica la presenza di una fattura accompagnatoria inclusa nel documento | [optional] [default to false]
**oggetto_visibile** | **String** | [Solo se filtrato per oggetto] Oggetto mostrato sul documento | [optional] [default to &#39;&#39;]
**oggetto_interno** | **String** | [Solo se filtrato per oggetto] Oggetto (per organizzazione interna) | [optional] [default to &#39;&#39;]
**link_doc** | **String** | [Solo se tipo!&#x3D;ddt] Link al documento in formato PDF | [optional] [default to &#39;&#39;]
**ddt_numero** | **String** | Numero del DDT [solo se tipo&#x3D;ddt] | [optional] [default to &#39;1&#39;]
**bloccato** | **BOOLEAN** | [Se presente, vale sempre \&quot;true\&quot;] Indica che il documento è bloccato e non può essere modificato o eliminato | [optional] [default to true]
**pa** | **BOOLEAN** | [Solo per fatture e ndc elettroniche, vale sempre \&quot;true\&quot;] Indica che il documento è nel formato FatturaPA | [optional] [default to true]
**pa_tipo_cliente** | **String** | [Solo se PA&#x3D;true] Indica la tipologia del cliente: Pubblica Amministrazione (\&quot;PA\&quot;) oppure privato (\&quot;B2B\&quot;) | [optional] [default to &#39;PA&#39;]


