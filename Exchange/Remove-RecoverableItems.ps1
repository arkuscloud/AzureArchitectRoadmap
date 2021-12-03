$mbx = get-mailbox "target mailbox"

Do {
 $result = Search-Mailbox $mbx.Identity -SearchQuery size>0 -SearchDumpsterOnly -DeleteContent -Force -WarningAction Silentlycontinue
 
write-host $result.resultitemscount -ForegroundColor Green

 } Until ($result.resultitemscount -eq 0)


#New-compliancesearchaction -Purge only deletes 10