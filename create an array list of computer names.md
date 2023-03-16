  ## create an array list of computer names
  
      [System.Collections.ArrayList]$computers="LON-SRV1","LON-SRV2","LON-DC1"
  
      $computers.Add("LON-DC2")
  
      $computers.Remove("LON-SRV2")
