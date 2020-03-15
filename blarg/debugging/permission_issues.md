# "Cannot open dri i915 load drm" etc when opening browser
-----------------------------------------------------------
user does not have video permissions, `/dev/dri*`

# No sound cards detected --- aplay -L only shows 'null'
------------------------------------------------------
check if user has audio permissions, add to audio group
quick test is to `chmod -R 777 /dev/snd/*`
