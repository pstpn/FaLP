(and 'fee 'fie 'foe)         -> FOE
(or nil 'fie 'foe)           -> FIE
(and (equal 'abc 'abc) 'yes) -> YES
(or 'fee 'fie 'foe)          -> FEE
(and nil 'fie 'foe)          -> NIL
(or (equal 'abc 'abc) 'yes)  -> T