#- Create a function named Return-FileHash that returns MD5, SHA256, and SHA512 hash values of this document (Assignment 1.docx)

$Path = Get-childitem "<file-path>\Assignment 1.docx";

function Return-FileHash($Path){
    
    return ("" | Select-Object @{name='FileName';Expression={($Path.FullName)}},
    @{Name='MD5';Expression={(Get-FileHash $Path.FullName -Algorithm MD5).Hash}},
    @{Name='SHA256';Expression={(Get-FileHash $Path.FullName -Algorithm SHA256).Hash}},
    @{Name='SHA512';Expression={(Get-FileHash $Path.FullName -Algorithm SHA512).Hash}})
    
}

Return-FileHash($file_path);