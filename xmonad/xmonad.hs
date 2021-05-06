-- Author: BinRoot
-- Todo: dmenu, animations

{-import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Hooks.FadeInactive (fadeInactiveLogHook)
import XMonad.Hooks.ManageDocks (manageDocks)
import XMonad.Hooks.SetWMName (setWMName)
import XMonad.Layout.Spacing (smartSpacing)
import XMonad.Util.EZConfig (additionalKeys)
import qualified Data.Map as M

-- changes the mod key to "super"
myModMask            = mod4Mask

-- which terminal software to use
myTerminal           = "xterm"

-- removes borders in fullscreen mode
myLayoutHook         = smartSpacing 2 $ smartBorders (layoutHook gnomeConfig)

-- width of border around windows
myBorderWidth        = 2

-- color of focused border
myFocusedBorderColor = "#ff0000"

-- color of inactive border
myNormalBorderColor  = "#cccccc"

-- support xcompmgr events
myLogHook            = do
  logHook gnomeConfig
  fadeInactiveLogHook 1
        
{- startup command for window effects        
"-cfF" "c" is for soft shadows and transparency support, 
       "f" for fade in & fade out when creating and closing windows, 
       and "F" for fade when changing a window's transparency.
"-t-9 -l-11" shadows are offset 9 pixels from top of the window 
             and 11 pixels from the left edge
"-r9" shadow radius is 9 pixels
        
"-o.95" shadow opacity is set to 0.95
"-D6" the time between each step when fading windows is set to 6 milliseconds.
-}

myStartupHook        = do
  startupHook gnomeConfig
  --spawn "xcompmgr -cfF -t-9 -l-11 -r9 -o.95 -D6 &"
  spawn "compton --backend glx --paint-on-overlay --vsync opengl-swc"
  spawn "~/.screenlayout/setscreen.sh"
  setWMName "LG3D"


myKeys = [ ((myModMask .|. controlMask, xK_r), spawn "xmonad --recompile && xmonad --restart")]

xmproc <- spawnPipe "xmobar"
main = xmonad $ gnomeConfig 
  { modMask            = myModMask
  , terminal           = myTerminal
  , layoutHook         = myLayoutHook
  , borderWidth        = myBorderWidth
  , focusedBorderColor = myFocusedBorderColor
  , normalBorderColor  = myNormalBorderColor
  , logHook            = myLogHook
  , startupHook        = myStartupHook
  } `additionalKeys` myKeys
-}
