# FattureInCloud::DocInfoResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ddt_numero_successivo** | **String** | Numero suggerito per la creazione di un ddt (ottenuto come: massimo dell&#39;anno +1) | [default to &#39;1&#39;]
**numerazioni** | [**DocInfoNumerazione**](DocInfoNumerazione.md) | Numerazioni utilizzate nell&#39;anno specificato e relativi numeri successivi suggeriti | 
**default_id_template** | **String** | Identificativo del template documento predefinito | [default to &#39;0&#39;]
**default_ddt_id_template** | **String** | Identificativo del template documento predefinito | [default to &#39;0&#39;]
**default_ftacc_id_template** | **String** | Identificativo del template documento predefinito | [default to &#39;0&#39;]
**default_cod_iva** | **Integer** | Codice iva default | [optional] [default to 0]
**default_note** | **String** | Note a pié pagina predefinite | [default to &#39;&#39;]
**default_cassa_previdenziale** | **Float** | Percentuale cassa previdenziale predefinita | [default to 0.0]
**default_rivalsa_previdenziale** | **Float** | Percentuale rivalsa INPS predefinita | [default to 0.0]
**default_ritenuta_acconto** | **Float** | Percentuale ritenuta d&#39;acconto predefinita | [default to 0.0]
**default_imponibile_ritenuta** | **Float** | Percentuale imponibile ritenuta d&#39;acconto predefinita | [default to 100.0]
**default_altra_ritenuta** | **Float** | Percentuale altra ritenuta predefinita | [default to 0.0]
**default_prezzi_ivati** | **BOOLEAN** | Indica se l&#39;ultimo documento è stato emesso utilizzando un calcolo basato sui prezzi netti (false) o lordi (true) | [default to false]


