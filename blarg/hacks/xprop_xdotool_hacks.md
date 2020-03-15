## Get the current windowid of the active window (note: conflicts with tabbed)
------------------------------------------------------------------------------
`winid="(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print NF}')"`
