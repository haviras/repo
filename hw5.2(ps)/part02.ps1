Import-Module PowerShellAccessControl
Import-Module PowerShellAccessControl
Configuration TestAceResource {
 
    
	Import-DscResource -Module PowerShellAccessControl
	#Import-DscResource -ModuleName PSDesiredStateConfiguration
	#Import-DscResource -ModuleName xPSDesiredStateConfiguration
	Import-DscResource -Module Carbon
    #Import-DscResource -Module NTFSSecurity
	#Import-DscResource -Module AccessControlDSC
		
    Node 'localhost' 
	{

       Carbon_Permission GrantPermission
			{
				Path = 'C:\temp\file.txt';
				Identity = 'user';
				Permission = 'Read';
				#Permission = 'TakeOwnership';
			}
		Carbon_Permission GrantPermission1
			{
				Path = 'C:\temp\help.txt';
				Identity = 'user';
				Permission = 'Read';
			}
			
		 cSecurityDescriptorSddl TestFolderSdOwner1 { 
           Path = 'C:\temp';
            ObjectType = "Directory"
            Sddl = "O:BA"
        }
		cSecurityDescriptorSddl TestFolderSdOwner2 {  
           Path = 'C:\temp\help.txt';
            ObjectType = "File"
            Sddl = "O:BA"
        }	
		cSecurityDescriptorSddl TestFolderSdOwner3 {  
           Path = 'C:\temp\file.txt';
            ObjectType = "File"
            Sddl = "O:BA"
        }
		
    }
}