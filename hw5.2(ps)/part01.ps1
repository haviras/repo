Configuration part {

    Import-DscResource -ModuleName PsDesiredStateConfiguration

   
    Node 'localhost' {

 
        File part {
            DestinationPath = "C:\temp\file.txt"
            Ensure = "Present"
			Contents   = " "
				}
		File DirectoryCopy
        {
            Ensure = "Present" 
            Type = "File" 
            Recurse = $true 
            SourcePath = "C:\Scripts\help.txt"
            DestinationPath = "C:\temp\"
        }
		
    }
}