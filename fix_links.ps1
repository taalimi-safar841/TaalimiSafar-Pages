$file = "C:\Users\athan\Desktop\Taalimi_Safar\taalimi-safar-pages\account-deletion.html"
$content = Get-Content $file -Raw -Encoding UTF8
$content = $content.Replace("const BASE = '';", "const BASE = 'https://taalimisafar-ko64k.ondigitalocean.app';")
$content = $content.Replace("/account-deletion/", "./account-deletion.html")
$content = $content.Replace("/privacy-policy/", "./privacy-policy.html")
Set-Content $file $content -Encoding UTF8
Write-Host "Done!"
