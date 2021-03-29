public with sharing class RepositoryDataService {
    // Metodo que recebe os dados em JSON e converte em objetos.
    public static HttpResponse getRepositoryData(){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        // Terminal que contém os dados. Este terminal já esta configurado na Org Salesforce
        request.setEndpoint('https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        RepositoryDataVO repository = (RepositoryDataVO)JSON.deserialize(response.getBody(), RepositoryDataVO.class);// Converte os dados.
        
            // Neste laço estou verificando se os dados solicitados estão corretos.
            for(Integer i=0; i<30; i++){
                System.debug(repository.Items[i]);
            }

        return response;
    }       
    
}

