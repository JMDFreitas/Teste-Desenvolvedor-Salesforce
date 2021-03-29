global with sharing class RepositoryDataVO {
    // Classe que receberá os arquivos convertidos, criei apenas as veriaveis que irei ultilizar no FrontEnd.
    public List<Items> items {get;set;}

    public class Owner{
        public String repos_url {get;set;} 
    }  

    public class Items{
        public Integer id {get;set;}
        public String language {get;set;}
        public Integer stargazers_count {get;set;} 
        public String full_name {get;set;}
        public Integer forks_count {get;set;}
        public Owner owner {get;set;} 
    } 
}

