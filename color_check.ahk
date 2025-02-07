#Persistent
#NoEnv
SetBatchLines, -1
CoordMode, Pixel, Screen

; Define health bar pixel position (adjust as needed)
healthX := 248  ; X-coordinate of the rightmost health bar pixel (adjust based on your resolution)
healthY := 1551 ; Y-coordinate of the health bar pixel in 2560x1600

^Delete::  ; Ctrl + Delete hotkey
{
    PixelGetColor, color, %healthX%, %healthY%, RGB
    MsgBox, The detected color at (%healthX%, %healthY%) is: %color%
}
