global start
start:
  xor   edx,edx           ;sum

  mov   eax,3
  .while eax < 1000
    add   edx,eax
    add   eax,3
  .endw

  mov   eax,5
  .while eax < 1000
    add   edx,eax
    add   eax,15
  .endw

  mov   eax,10
  .while eax < 1000
    add   edx,eax
    add   eax,15
  .endw
