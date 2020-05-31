Configuration TimeZone_SetTimeZone_Config
{
 Import-DscResource -Module xTimeZone
  Node 'localhost' 
    {
        xTimeZone UtcTimeZone
        {
            TimeZone         = 'UTC'
			IsSingleInstance = 'Yes'
        }
    }
}