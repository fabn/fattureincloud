=begin
#Documentazione API e ambiente di test

#<p> <p> <u>ATTENZIONE: Il progetto attualmente è ancora in fase di sviluppo e verrà arricchito man mano con altre funzioni. Per eventuali segnalazioni riguardanti malfunzionamenti o suggerimenti contattare l'assistenza di Fatture In Cloud. Si raccomanda inoltre di controllare periodicamente il CHANGELOG delle utime modifiche effettuate.</u> </p> <p>Il modello attuale prevede una richiesta di tipo POST, con i parametri codificati in formato JSON nel corpo della richiesta stessa. I formati dei parametri sono elencati nella tabella sottostante e variano a seconda della tipologia.</p> <h4>Formato dei parametri:</h4> <p> <table class=\"fullwidth\"> <thead><tr><th><b>Tipo</b></th><th>Descrizione</th><th>Esempio</th></tr></thead> <tbody class=\"operation-status\"> <tr><td><b>string</b></td><td>Stringa</td><td>\"stringa\"</td></tr> <tr><td><b>integer</b></td><td>Numero intero</td><td>\"123\" o 123</td></tr> <tr><td><b>double</b></td><td>Numero decimale</td><td>\"123.45\" o 123.45</td></tr> <tr><td><b>boolean</b></td><td>Variabile booleana</td><td>\"true\", true, \"false\" o false</td></tr> <tr><td><b>date</b></td><td>Data nel formato dd/MM/yyyy</td><td>\"01/01/2015\"</td></tr> <tr><td><b>date-time</b></td><td>Data nel formato dd/MM/yyyy HH:mm:ss</td><td>\"01/01/2015 12:34:53\"</td></tr> </tbody> </table> </p> <p> I parametri <code>api_uid</code> e <code>api_key</code> sono necessari per effettuare qualsiasi operazione (vedi la <a href=\"https://secure.fattureincloud.it/api\" target=\"_blank\">pagina principale delle API</a>) e vanno inseriti come parametri JSON in tutte le richieste. </p> <p> L'endpoint di riferimento si trova all'indirizzo <a href=\"#\">https://api.fattureincloud.it/v1</a>, per cui le richieste sono nel formato <a href=\"#\">https://api.fattureincloud.it/v1/richiesta/operazione</a>. </p> <p> L'esempio di richiesta generica contiene una lista dei codici di errore comuni a tutte le richieste, mentre eventuali altri errori specifici ad una funzione sono elencati nella sezione della funzione stessa. </p>  </p>

OpenAPI spec version: 0.9.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FattureInCloud::AnagraficaFornitore
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AnagraficaFornitore' do
  before do
    # run before each test
    @instance = FattureInCloud::AnagraficaFornitore.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AnagraficaFornitore' do
    it 'should create an instance of AnagraficaFornitore' do
      expect(@instance).to be_instance_of(FattureInCloud::AnagraficaFornitore)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "nome"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "referente"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "indirizzo_via"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "indirizzo_cap"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "indirizzo_citta"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "indirizzo_provincia"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "indirizzo_extra"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "paese"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "mail"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tel"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fax"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "piva"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cf"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "extra"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
