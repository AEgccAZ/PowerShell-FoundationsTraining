<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$TextBoxWidth = 100
$TextBoxHeight = 20
$ButtonWidth = 80
$ButtonHeight = 30

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '800,600'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = $TextBoxWidth
$TextBox1.height                 = $TextBoxHeight
$TextBox1.location               = New-Object System.Drawing.Point(47,38)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Close"
$Button1.width                   = $ButtonWidth
$Button1.height                  = $ButtonHeight
$Button1.location                = New-Object System.Drawing.Point(640,540)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Ping"
$Button2.width                   = $ButtonWidth
$Button2.height                  = $ButtonHeight
$Button2.location                = New-Object System.Drawing.Point(540,540)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($TextBox1,$Button1,$Button2))

$Button2.Add_Click({ Button2Clicked })
$Button1.Add_Click({ Button1Clicked })

function Button1Clicked { 
    $Form.Close()
}
function Button2Clicked { 
    Ping 169.254.115.199 | Write-Host 
    
}


#Write your logic code here

[void]$Form.ShowDialog()