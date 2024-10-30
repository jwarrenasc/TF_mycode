terraform { 
  cloud { 
    
    organization = "JEREMYWARREN-training" 

    workspaces { 
      name = "my-example" 
    } 
  } 
}
