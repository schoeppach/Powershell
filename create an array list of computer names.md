## create an array list of computer names
  
      [System.Collections.ArrayList]$computers="LON-SRV1","LON-SRV2","LON-DC1"
  
      $computers.Add("LON-DC2")
  
      $computers.Remove("LON-SRV2")
      
      $computers


## hash table

  ### create a hash table
      $mailList=@{"Frank"="Frank@fabriakm.com";"Libby"="LHayward@contso.com";"Matej"="MSTaojanov@tailspintoys.com"}
      
  ### review the contents
      $mailList
      
  ### review the email address for Libby
      $mailList.Libby
