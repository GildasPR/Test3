#------------------------------------------------------------------------------
# V1.0 - 14/06/2016
# Gildas PRÉAULT [AIS]
#------------------------------------------------------------------------------
#
# Description : 
# Ce script effetue les opérations suivantes :
# 
#       - Affichage d'une popup dans une TS SCCM
<<<<<<< HEAD
#V2
#v3
=======

>>>>>>> parent of 753d24c... V2
function New-PopupMessage {

$Message = "L'utilitaire de compression Winzip n'est pas présent!"
$SecondsToWait = 300 
$Title = "Alerte WINZIP"
$Button = 0
$Icon = 48

# Creation du PopUp
(New-Object -ComObject Wscript.Shell).popup($Message,$SecondsToWait,$Title,$Button + $Icon)
}
 
# Fermeture de la barre de progression de la TS 
try
    {
        $TSProgressUI = New-Object -COMObject Microsoft.SMS.TSProgressUI
        $TSProgressUI.CloseProgressDialog()
    }
Catch {}
 
# appel de la popup
New-PopupMessage