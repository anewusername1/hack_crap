global start
start:
  xor edx,edx
  mov eax,3

  BEGIN_LOOP:
    cmp eax, 1000
    je END_LOOP
    add edx,eax
    add eax,3
  END_LOOP
  .while eax < 1000
  .endw

  mov eax,5
  .while eax < 1000
    add edx,eax
    add eax,15
  .endw

  mov eax, 10
  .while eax < 1000
    add edx,eax
    add eax,15
  .endw
