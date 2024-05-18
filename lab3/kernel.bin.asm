00030400  BC005F0300        mov esp,0x35f00
00030405  C705A46203000000  mov dword [dword 0x362a4],0x0
         -0000
0003040F  0F0105A8620300    sgdt [dword 0x362a8]
00030416  E8FD020000        call 0x30718
0003041B  0F0115A8620300    lgdt [dword 0x362a8]
00030422  0F011DC0660300    lidt [dword 0x366c0]
00030429  EA300403000800    jmp 0x8:0x30430
00030430  31C0              xor eax,eax
00030432  66B82000          mov ax,0x20
00030436  0F00D8            ltr ax
00030439  E9A1030000        jmp 0x307df
0003043E  90                nop
0003043F  90                nop
00030440  E853020000        call 0x30698
00030445  E421              in al,0x21
00030447  0C01              or al,0x1
00030449  E621              out 0x21,al
0003044B  B020              mov al,0x20
0003044D  E620              out 0x20,al
0003044F  FB                sti
00030450  6A00              push byte +0x0
00030452  FF15E07D0500      call [dword 0x57de0]
00030458  59                pop ecx
00030459  FA                cli
0003045A  E421              in al,0x21
0003045C  24FE              and al,0xfe
0003045E  E621              out 0x21,al
00030460  C3                ret
00030461  90                nop
00030462  90                nop
00030463  90                nop
00030464  90                nop
00030465  90                nop
00030466  90                nop
00030467  90                nop
00030468  90                nop
00030469  90                nop
0003046A  90                nop
0003046B  90                nop
0003046C  90                nop
0003046D  90                nop
0003046E  90                nop
0003046F  90                nop
00030470  E823020000        call 0x30698
00030475  E421              in al,0x21
00030477  0C02              or al,0x2
00030479  E621              out 0x21,al
0003047B  B020              mov al,0x20
0003047D  E620              out 0x20,al
0003047F  FB                sti
00030480  6A01              push byte +0x1
00030482  FF15E47D0500      call [dword 0x57de4]
00030488  59                pop ecx
00030489  FA                cli
0003048A  E421              in al,0x21
0003048C  24FD              and al,0xfd
0003048E  E621              out 0x21,al
00030490  C3                ret
00030491  90                nop
00030492  90                nop
00030493  90                nop
00030494  90                nop
00030495  90                nop
00030496  90                nop
00030497  90                nop
00030498  90                nop
00030499  90                nop
0003049A  90                nop
0003049B  90                nop
0003049C  90                nop
0003049D  90                nop
0003049E  90                nop
0003049F  90                nop
000304A0  E8F3010000        call 0x30698
000304A5  E421              in al,0x21
000304A7  0C04              or al,0x4
000304A9  E621              out 0x21,al
000304AB  B020              mov al,0x20
000304AD  E620              out 0x20,al
000304AF  FB                sti
000304B0  6A02              push byte +0x2
000304B2  FF15E87D0500      call [dword 0x57de8]
000304B8  59                pop ecx
000304B9  FA                cli
000304BA  E421              in al,0x21
000304BC  24FB              and al,0xfb
000304BE  E621              out 0x21,al
000304C0  C3                ret
000304C1  90                nop
000304C2  90                nop
000304C3  90                nop
000304C4  90                nop
000304C5  90                nop
000304C6  90                nop
000304C7  90                nop
000304C8  90                nop
000304C9  90                nop
000304CA  90                nop
000304CB  90                nop
000304CC  90                nop
000304CD  90                nop
000304CE  90                nop
000304CF  90                nop
000304D0  E8C3010000        call 0x30698
000304D5  E421              in al,0x21
000304D7  0C08              or al,0x8
000304D9  E621              out 0x21,al
000304DB  B020              mov al,0x20
000304DD  E620              out 0x20,al
000304DF  FB                sti
000304E0  6A03              push byte +0x3
000304E2  FF15EC7D0500      call [dword 0x57dec]
000304E8  59                pop ecx
000304E9  FA                cli
000304EA  E421              in al,0x21
000304EC  24F7              and al,0xf7
000304EE  E621              out 0x21,al
000304F0  C3                ret
000304F1  90                nop
000304F2  90                nop
000304F3  90                nop
000304F4  90                nop
000304F5  90                nop
000304F6  90                nop
000304F7  90                nop
000304F8  90                nop
000304F9  90                nop
000304FA  90                nop
000304FB  90                nop
000304FC  90                nop
000304FD  90                nop
000304FE  90                nop
000304FF  90                nop
00030500  E893010000        call 0x30698
00030505  E421              in al,0x21
00030507  0C10              or al,0x10
00030509  E621              out 0x21,al
0003050B  B020              mov al,0x20
0003050D  E620              out 0x20,al
0003050F  FB                sti
00030510  6A04              push byte +0x4
00030512  FF15F07D0500      call [dword 0x57df0]
00030518  59                pop ecx
00030519  FA                cli
0003051A  E421              in al,0x21
0003051C  24EF              and al,0xef
0003051E  E621              out 0x21,al
00030520  C3                ret
00030521  90                nop
00030522  90                nop
00030523  90                nop
00030524  90                nop
00030525  90                nop
00030526  90                nop
00030527  90                nop
00030528  90                nop
00030529  90                nop
0003052A  90                nop
0003052B  90                nop
0003052C  90                nop
0003052D  90                nop
0003052E  90                nop
0003052F  90                nop
00030530  E863010000        call 0x30698
00030535  E421              in al,0x21
00030537  0C20              or al,0x20
00030539  E621              out 0x21,al
0003053B  B020              mov al,0x20
0003053D  E620              out 0x20,al
0003053F  FB                sti
00030540  6A05              push byte +0x5
00030542  FF15F47D0500      call [dword 0x57df4]
00030548  59                pop ecx
00030549  FA                cli
0003054A  E421              in al,0x21
0003054C  24DF              and al,0xdf
0003054E  E621              out 0x21,al
00030550  C3                ret
00030551  90                nop
00030552  90                nop
00030553  90                nop
00030554  90                nop
00030555  90                nop
00030556  90                nop
00030557  90                nop
00030558  90                nop
00030559  90                nop
0003055A  90                nop
0003055B  90                nop
0003055C  90                nop
0003055D  90                nop
0003055E  90                nop
0003055F  90                nop
00030560  E833010000        call 0x30698
00030565  E421              in al,0x21
00030567  0C40              or al,0x40
00030569  E621              out 0x21,al
0003056B  B020              mov al,0x20
0003056D  E620              out 0x20,al
0003056F  FB                sti
00030570  6A06              push byte +0x6
00030572  FF15F87D0500      call [dword 0x57df8]
00030578  59                pop ecx
00030579  FA                cli
0003057A  E421              in al,0x21
0003057C  24BF              and al,0xbf
0003057E  E621              out 0x21,al
00030580  C3                ret
00030581  90                nop
00030582  90                nop
00030583  90                nop
00030584  90                nop
00030585  90                nop
00030586  90                nop
00030587  90                nop
00030588  90                nop
00030589  90                nop
0003058A  90                nop
0003058B  90                nop
0003058C  90                nop
0003058D  90                nop
0003058E  90                nop
0003058F  90                nop
00030590  E803010000        call 0x30698
00030595  E421              in al,0x21
00030597  0C80              or al,0x80
00030599  E621              out 0x21,al
0003059B  B020              mov al,0x20
0003059D  E620              out 0x20,al
0003059F  FB                sti
000305A0  6A07              push byte +0x7
000305A2  FF15FC7D0500      call [dword 0x57dfc]
000305A8  59                pop ecx
000305A9  FA                cli
000305AA  E421              in al,0x21
000305AC  247F              and al,0x7f
000305AE  E621              out 0x21,al
000305B0  C3                ret
000305B1  90                nop
000305B2  90                nop
000305B3  90                nop
000305B4  90                nop
000305B5  90                nop
000305B6  90                nop
000305B7  90                nop
000305B8  90                nop
000305B9  90                nop
000305BA  90                nop
000305BB  90                nop
000305BC  90                nop
000305BD  90                nop
000305BE  90                nop
000305BF  90                nop
000305C0  6A08              push byte +0x8
000305C2  E872190000        call 0x31f39
000305C7  83C404            add esp,byte +0x4
000305CA  F4                hlt
000305CB  90                nop
000305CC  90                nop
000305CD  90                nop
000305CE  90                nop
000305CF  90                nop
000305D0  6A09              push byte +0x9
000305D2  E862190000        call 0x31f39
000305D7  83C404            add esp,byte +0x4
000305DA  F4                hlt
000305DB  90                nop
000305DC  90                nop
000305DD  90                nop
000305DE  90                nop
000305DF  90                nop
000305E0  6A0A              push byte +0xa
000305E2  E852190000        call 0x31f39
000305E7  83C404            add esp,byte +0x4
000305EA  F4                hlt
000305EB  90                nop
000305EC  90                nop
000305ED  90                nop
000305EE  90                nop
000305EF  90                nop
000305F0  6A0B              push byte +0xb
000305F2  E842190000        call 0x31f39
000305F7  83C404            add esp,byte +0x4
000305FA  F4                hlt
000305FB  90                nop
000305FC  90                nop
000305FD  90                nop
000305FE  90                nop
000305FF  90                nop
00030600  6A0C              push byte +0xc
00030602  E832190000        call 0x31f39
00030607  83C404            add esp,byte +0x4
0003060A  F4                hlt
0003060B  90                nop
0003060C  90                nop
0003060D  90                nop
0003060E  90                nop
0003060F  90                nop
00030610  6A0D              push byte +0xd
00030612  E822190000        call 0x31f39
00030617  83C404            add esp,byte +0x4
0003061A  F4                hlt
0003061B  90                nop
0003061C  90                nop
0003061D  90                nop
0003061E  90                nop
0003061F  90                nop
00030620  6A0E              push byte +0xe
00030622  E812190000        call 0x31f39
00030627  83C404            add esp,byte +0x4
0003062A  F4                hlt
0003062B  90                nop
0003062C  90                nop
0003062D  90                nop
0003062E  90                nop
0003062F  90                nop
00030630  6A0F              push byte +0xf
00030632  E802190000        call 0x31f39
00030637  83C404            add esp,byte +0x4
0003063A  F4                hlt
0003063B  6AFF              push byte -0x1
0003063D  6A00              push byte +0x0
0003063F  EB4E              jmp short 0x3068f
00030641  6AFF              push byte -0x1
00030643  6A01              push byte +0x1
00030645  EB48              jmp short 0x3068f
00030647  6AFF              push byte -0x1
00030649  6A02              push byte +0x2
0003064B  EB42              jmp short 0x3068f
0003064D  6AFF              push byte -0x1
0003064F  6A03              push byte +0x3
00030651  EB3C              jmp short 0x3068f
00030653  6AFF              push byte -0x1
00030655  6A04              push byte +0x4
00030657  EB36              jmp short 0x3068f
00030659  6AFF              push byte -0x1
0003065B  6A05              push byte +0x5
0003065D  EB30              jmp short 0x3068f
0003065F  6AFF              push byte -0x1
00030661  6A06              push byte +0x6
00030663  EB2A              jmp short 0x3068f
00030665  6AFF              push byte -0x1
00030667  6A07              push byte +0x7
00030669  EB24              jmp short 0x3068f
0003066B  6A08              push byte +0x8
0003066D  EB20              jmp short 0x3068f
0003066F  6AFF              push byte -0x1
00030671  6A09              push byte +0x9
00030673  EB1A              jmp short 0x3068f
00030675  6A0A              push byte +0xa
00030677  EB16              jmp short 0x3068f
00030679  6A0B              push byte +0xb
0003067B  EB12              jmp short 0x3068f
0003067D  6A0C              push byte +0xc
0003067F  EB0E              jmp short 0x3068f
00030681  6A0D              push byte +0xd
00030683  EB0A              jmp short 0x3068f
00030685  6A0E              push byte +0xe
00030687  EB06              jmp short 0x3068f
00030689  6AFF              push byte -0x1
0003068B  6A10              push byte +0x10
0003068D  EB00              jmp short 0x3068f
0003068F  E88D1E0000        call 0x32521
00030694  83C408            add esp,byte +0x8
00030697  F4                hlt
00030698  60                pusha
00030699  1E                push ds
0003069A  06                push es
0003069B  0FA0              push fs
0003069D  0FA8              push gs
0003069F  668CD2            mov dx,ss
000306A2  8EDA              mov ds,edx
000306A4  8EC2              mov es,edx
000306A6  89E6              mov esi,esp
000306A8  FF05E06E0300      inc dword [dword 0x36ee0]
000306AE  833DE06E030000    cmp dword [dword 0x36ee0],byte +0x0
000306B5  750D              jnz 0x306c4
000306B7  BC005F0300        mov esp,0x35f00
000306BC  68DE060300        push dword 0x306de
000306C1  FF6630            jmp [esi+0x30]
000306C4  68F2060300        push dword 0x306f2
000306C9  FF6630            jmp [esi+0x30]
000306CC  E8C7FFFFFF        call 0x30698
000306D1  FB                sti
000306D2  FF1485F8560300    call [eax*4+0x356f8]
000306D9  89462C            mov [esi+0x2c],eax
000306DC  FA                cli
000306DD  C3                ret
000306DE  8B25686F0300      mov esp,[dword 0x36f68]
000306E4  0F00542448        lldt [esp+0x48]
000306E9  8D442448          lea eax,[esp+0x48]
000306ED  A3046F0300        mov [0x36f04],eax
000306F2  FF0DE06E0300      dec dword [dword 0x36ee0]
000306F8  0FA9              pop gs
000306FA  0FA1              pop fs
000306FC  07                pop es
000306FD  1F                pop ds
000306FE  61                popa
000306FF  83C404            add esp,byte +0x4
00030702  CF                iret
00030703  6690              xchg ax,ax
00030705  6690              xchg ax,ax
00030707  6690              xchg ax,ax
00030709  6690              xchg ax,ax
0003070B  6690              xchg ax,ax
0003070D  6690              xchg ax,ax
0003070F  90                nop
00030710  B800000000        mov eax,0x0
00030715  CD90              int 0x90
00030717  C3                ret
00030718  55                push ebp
00030719  89E5              mov ebp,esp
0003071B  53                push ebx
0003071C  83EC14            sub esp,byte +0x14
0003071F  E8B7000000        call 0x307db
00030724  81C3DC480000      add ebx,0x48dc
0003072A  83EC0C            sub esp,byte +0xc
0003072D  8D8300E0FFFF      lea eax,[ebx-0x2000]
00030733  50                push eax
00030734  E8F71F0000        call 0x32730
00030739  83C410            add esp,byte +0x10
0003073C  C7C0A8620300      mov eax,0x362a8
00030742  0FB700            movzx eax,word [eax]
00030745  0FB7C0            movzx eax,ax
00030748  8D5001            lea edx,[eax+0x1]
0003074B  C7C0A8620300      mov eax,0x362a8
00030751  8D4002            lea eax,[eax+0x2]
00030754  8B00              mov eax,[eax]
00030756  83EC04            sub esp,byte +0x4
00030759  52                push edx
0003075A  50                push eax
0003075B  C7C0C0620300      mov eax,0x362c0
00030761  50                push eax
00030762  E8F9210000        call 0x32960
00030767  83C410            add esp,byte +0x10
0003076A  C7C0A8620300      mov eax,0x362a8
00030770  8945F4            mov [ebp-0xc],eax
00030773  C7C0A8620300      mov eax,0x362a8
00030779  8D4002            lea eax,[eax+0x2]
0003077C  8945F0            mov [ebp-0x10],eax
0003077F  8B45F4            mov eax,[ebp-0xc]
00030782  66C700FF03        mov word [eax],0x3ff
00030787  C7C0C0620300      mov eax,0x362c0
0003078D  89C2              mov edx,eax
0003078F  8B45F0            mov eax,[ebp-0x10]
00030792  8910              mov [eax],edx
00030794  C7C0C0660300      mov eax,0x366c0
0003079A  8945EC            mov [ebp-0x14],eax
0003079D  C7C0C0660300      mov eax,0x366c0
000307A3  8D4002            lea eax,[eax+0x2]
000307A6  8945E8            mov [ebp-0x18],eax
000307A9  8B45EC            mov eax,[ebp-0x14]
000307AC  66C700FF07        mov word [eax],0x7ff
000307B1  C7C0E0660300      mov eax,0x366e0
000307B7  89C2              mov edx,eax
000307B9  8B45E8            mov eax,[ebp-0x18]
000307BC  8910              mov [eax],edx
000307BE  E8F5170000        call 0x31fb8
000307C3  83EC0C            sub esp,byte +0xc
000307C6  8D832AE0FFFF      lea eax,[ebx-0x1fd6]
000307CC  50                push eax
000307CD  E85E1F0000        call 0x32730
000307D2  83C410            add esp,byte +0x10
000307D5  90                nop
000307D6  8B5DFC            mov ebx,[ebp-0x4]
000307D9  C9                leave
000307DA  C3                ret
000307DB  8B1C24            mov ebx,[esp]
000307DE  C3                ret
000307DF  55                push ebp
000307E0  89E5              mov ebp,esp
000307E2  53                push ebx
000307E3  83EC24            sub esp,byte +0x24
000307E6  E8F0FFFFFF        call 0x307db
000307EB  81C315480000      add ebx,0x4815
000307F1  83EC0C            sub esp,byte +0xc
000307F4  8D8348E0FFFF      lea eax,[ebx-0x1fb8]
000307FA  50                push eax
000307FB  E8301F0000        call 0x32730
00030800  83C410            add esp,byte +0x10
00030803  C7C040560300      mov eax,0x35640
00030809  8945F4            mov [ebp-0xc],eax
0003080C  C7C0806F0300      mov eax,0x36f80
00030812  8945F0            mov [ebp-0x10],eax
00030815  C7C060710300      mov eax,0x37160
0003081B  8D8000000200      lea eax,[eax+0x20000]
00030821  8945EC            mov [ebp-0x14],eax
00030824  66C745EA2800      mov word [ebp-0x16],0x28
0003082A  C745E400000000    mov dword [ebp-0x1c],0x0
00030831  E982010000        jmp 0x309b8
00030836  837DE400          cmp dword [ebp-0x1c],byte +0x0
0003083A  7F2B              jg 0x30867
0003083C  8B55E4            mov edx,[ebp-0x1c]
0003083F  89D0              mov eax,edx
00030841  C1E002            shl eax,byte 0x2
00030844  01D0              add eax,edx
00030846  C1E003            shl eax,byte 0x3
00030849  89C2              mov edx,eax
0003084B  C7C040560300      mov eax,0x35640
00030851  01D0              add eax,edx
00030853  8945F4            mov [ebp-0xc],eax
00030856  C645E301          mov byte [ebp-0x1d],0x1
0003085A  C645E201          mov byte [ebp-0x1e],0x1
0003085E  C745DC02120000    mov dword [ebp-0x24],0x1202
00030865  EB2A              jmp short 0x30891
00030867  8B55E4            mov edx,[ebp-0x1c]
0003086A  89D0              mov eax,edx
0003086C  C1E002            shl eax,byte 0x2
0003086F  01D0              add eax,edx
00030871  C1E003            shl eax,byte 0x3
00030874  8D50D8            lea edx,[eax-0x28]
00030877  C7C080560300      mov eax,0x35680
0003087D  01D0              add eax,edx
0003087F  8945F4            mov [ebp-0xc],eax
00030882  C645E303          mov byte [ebp-0x1d],0x3
00030886  C645E203          mov byte [ebp-0x1e],0x3
0003088A  C745DC02020000    mov dword [ebp-0x24],0x202
00030891  8B45F4            mov eax,[ebp-0xc]
00030894  8D5008            lea edx,[eax+0x8]
00030897  8B45F0            mov eax,[ebp-0x10]
0003089A  83C068            add eax,byte +0x68
0003089D  83EC08            sub esp,byte +0x8
000308A0  52                push edx
000308A1  50                push eax
000308A2  E803210000        call 0x329aa
000308A7  83C410            add esp,byte +0x10
000308AA  8B55E4            mov edx,[ebp-0x1c]
000308AD  8B45F0            mov eax,[ebp-0x10]
000308B0  895064            mov [eax+0x64],edx
000308B3  8B45F0            mov eax,[ebp-0x10]
000308B6  0FB755EA          movzx edx,word [ebp-0x16]
000308BA  66895048          mov [eax+0x48],dx
000308BE  8B45F0            mov eax,[ebp-0x10]
000308C1  8D504A            lea edx,[eax+0x4a]
000308C4  83EC04            sub esp,byte +0x4
000308C7  6A08              push byte +0x8
000308C9  C7C0C0620300      mov eax,0x362c0
000308CF  8D4008            lea eax,[eax+0x8]
000308D2  50                push eax
000308D3  52                push edx
000308D4  E887200000        call 0x32960
000308D9  83C410            add esp,byte +0x10
000308DC  0FB645E3          movzx eax,byte [ebp-0x1d]
000308E0  C1E005            shl eax,byte 0x5
000308E3  83C898            or eax,byte -0x68
000308E6  89C2              mov edx,eax
000308E8  8B45F0            mov eax,[ebp-0x10]
000308EB  88504F            mov [eax+0x4f],dl
000308EE  8B45F0            mov eax,[ebp-0x10]
000308F1  8D5052            lea edx,[eax+0x52]
000308F4  83EC04            sub esp,byte +0x4
000308F7  6A08              push byte +0x8
000308F9  C7C0C0620300      mov eax,0x362c0
000308FF  8D4010            lea eax,[eax+0x10]
00030902  50                push eax
00030903  52                push edx
00030904  E857200000        call 0x32960
00030909  83C410            add esp,byte +0x10
0003090C  0FB645E3          movzx eax,byte [ebp-0x1d]
00030910  C1E005            shl eax,byte 0x5
00030913  83C892            or eax,byte -0x6e
00030916  89C2              mov edx,eax
00030918  8B45F0            mov eax,[ebp-0x10]
0003091B  885057            mov [eax+0x57],dl
0003091E  0FB645E2          movzx eax,byte [ebp-0x1e]
00030922  83C804            or eax,byte +0x4
00030925  0FB6D0            movzx edx,al
00030928  8B45F0            mov eax,[ebp-0x10]
0003092B  895038            mov [eax+0x38],edx
0003092E  0FB645E2          movzx eax,byte [ebp-0x1e]
00030932  83C80C            or eax,byte +0xc
00030935  0FB6D0            movzx edx,al
00030938  8B45F0            mov eax,[ebp-0x10]
0003093B  89500C            mov [eax+0xc],edx
0003093E  0FB645E2          movzx eax,byte [ebp-0x1e]
00030942  83C80C            or eax,byte +0xc
00030945  0FB6D0            movzx edx,al
00030948  8B45F0            mov eax,[ebp-0x10]
0003094B  895008            mov [eax+0x8],edx
0003094E  0FB645E2          movzx eax,byte [ebp-0x1e]
00030952  83C80C            or eax,byte +0xc
00030955  0FB6D0            movzx edx,al
00030958  8B45F0            mov eax,[ebp-0x10]
0003095B  895004            mov [eax+0x4],edx
0003095E  0FB645E2          movzx eax,byte [ebp-0x1e]
00030962  83C80C            or eax,byte +0xc
00030965  0FB6D0            movzx edx,al
00030968  8B45F0            mov eax,[ebp-0x10]
0003096B  895044            mov [eax+0x44],edx
0003096E  0FB645E2          movzx eax,byte [ebp-0x1e]
00030972  83C818            or eax,byte +0x18
00030975  0FB6D0            movzx edx,al
00030978  8B45F0            mov eax,[ebp-0x10]
0003097B  8910              mov [eax],edx
0003097D  8B45F4            mov eax,[ebp-0xc]
00030980  8B00              mov eax,[eax]
00030982  89C2              mov edx,eax
00030984  8B45F0            mov eax,[ebp-0x10]
00030987  895034            mov [eax+0x34],edx
0003098A  8B55EC            mov edx,[ebp-0x14]
0003098D  8B45F0            mov eax,[ebp-0x10]
00030990  895040            mov [eax+0x40],edx
00030993  8B55DC            mov edx,[ebp-0x24]
00030996  8B45F0            mov eax,[ebp-0x10]
00030999  89503C            mov [eax+0x3c],edx
0003099C  8B45F4            mov eax,[ebp-0xc]
0003099F  8B4004            mov eax,[eax+0x4]
000309A2  F7D8              neg eax
000309A4  0145EC            add [ebp-0x14],eax
000309A7  8345F078          add dword [ebp-0x10],byte +0x78
000309AB  8345F428          add dword [ebp-0xc],byte +0x28
000309AF  668345EA08        add word [ebp-0x16],byte +0x8
000309B4  8345E401          add dword [ebp-0x1c],byte +0x1
000309B8  837DE403          cmp dword [ebp-0x1c],byte +0x3
000309BC  0F8E74FEFFFF      jng near 0x30836
000309C2  C7C0806F0300      mov eax,0x36f80
000309C8  C740600F000000    mov dword [eax+0x60],0xf
000309CF  C7C0806F0300      mov eax,0x36f80
000309D5  8B5060            mov edx,[eax+0x60]
000309D8  C7C0806F0300      mov eax,0x36f80
000309DE  89505C            mov [eax+0x5c],edx
000309E1  C7C0806F0300      mov eax,0x36f80
000309E7  C780D80000000500  mov dword [eax+0xd8],0x5
         -0000
000309F1  C7C0806F0300      mov eax,0x36f80
000309F7  8B90D8000000      mov edx,[eax+0xd8]
000309FD  C7C0806F0300      mov eax,0x36f80
00030A03  8990D4000000      mov [eax+0xd4],edx
00030A09  C7C0806F0300      mov eax,0x36f80
00030A0F  C780500100000300  mov dword [eax+0x150],0x3
         -0000
00030A19  C7C0806F0300      mov eax,0x36f80
00030A1F  8B9050010000      mov edx,[eax+0x150]
00030A25  C7C0806F0300      mov eax,0x36f80
00030A2B  89904C010000      mov [eax+0x14c],edx
00030A31  C7C0E06E0300      mov eax,0x36ee0
00030A37  C70000000000      mov dword [eax],0x0
00030A3D  C7C0A0620300      mov eax,0x362a0
00030A43  C70000000000      mov dword [eax],0x0
00030A49  C7C0686F0300      mov eax,0x36f68
00030A4F  C7C2806F0300      mov edx,0x36f80
00030A55  8910              mov [eax],edx
00030A57  E8F3000000        call 0x30b4f
00030A5C  E8D0010000        call 0x30c31
00030A61  E878FCFFFF        call 0x306de
00030A66  EBFE              jmp short 0x30a66
00030A68  55                push ebp
00030A69  89E5              mov ebp,esp
00030A6B  53                push ebx
00030A6C  83EC04            sub esp,byte +0x4
00030A6F  E867FDFFFF        call 0x307db
00030A74  81C38C450000      add ebx,0x458c
00030A7A  E8030C0000        call 0x31682
00030A7F  83EC0C            sub esp,byte +0xc
00030A82  68400D0300        push dword 0x30d40
00030A87  E889000000        call 0x30b15
00030A8C  83C410            add esp,byte +0x10
00030A8F  EBE9              jmp short 0x30a7a
00030A91  55                push ebp
00030A92  89E5              mov ebp,esp
00030A94  E816000000        call 0x30aaf
00030A99  0567450000        add eax,0x4567
00030A9E  EBFE              jmp short 0x30a9e
00030AA0  55                push ebp
00030AA1  89E5              mov ebp,esp
00030AA3  E807000000        call 0x30aaf
00030AA8  0558450000        add eax,0x4558
00030AAD  EBFE              jmp short 0x30aad
00030AAF  8B0424            mov eax,[esp]
00030AB2  C3                ret
00030AB3  55                push ebp
00030AB4  89E5              mov ebp,esp
00030AB6  53                push ebx
00030AB7  83EC04            sub esp,byte +0x4
00030ABA  E8F0FFFFFF        call 0x30aaf
00030ABF  0541450000        add eax,0x4541
00030AC4  C7C2A0620300      mov edx,0x362a0
00030ACA  8B12              mov edx,[edx]
00030ACC  8D4A01            lea ecx,[edx+0x1]
00030ACF  C7C2A0620300      mov edx,0x362a0
00030AD5  890A              mov [edx],ecx
00030AD7  C7C2686F0300      mov edx,0x36f68
00030ADD  8B12              mov edx,[edx]
00030ADF  8B4A5C            mov ecx,[edx+0x5c]
00030AE2  83E901            sub ecx,byte +0x1
00030AE5  894A5C            mov [edx+0x5c],ecx
00030AE8  C7C2E06E0300      mov edx,0x36ee0
00030AEE  8B12              mov edx,[edx]
00030AF0  85D2              test edx,edx
00030AF2  7518              jnz 0x30b0c
00030AF4  C7C2686F0300      mov edx,0x36f68
00030AFA  8B12              mov edx,[edx]
00030AFC  8B525C            mov edx,[edx+0x5c]
00030AFF  85D2              test edx,edx
00030B01  7F0C              jg 0x30b0f
00030B03  89C3              mov ebx,eax
00030B05  E86E1B0000        call 0x32678
00030B0A  EB04              jmp short 0x30b10
00030B0C  90                nop
00030B0D  EB01              jmp short 0x30b10
00030B0F  90                nop
00030B10  8B5DFC            mov ebx,[ebp-0x4]
00030B13  C9                leave
00030B14  C3                ret
00030B15  55                push ebp
00030B16  89E5              mov ebp,esp
00030B18  53                push ebx
00030B19  83EC14            sub esp,byte +0x14
00030B1C  E8BAFCFFFF        call 0x307db
00030B21  81C3DF440000      add ebx,0x44df
00030B27  E8E4FBFFFF        call 0x30710
00030B2C  8945F4            mov [ebp-0xc],eax
00030B2F  90                nop
00030B30  E8DBFBFFFF        call 0x30710
00030B35  2B45F4            sub eax,[ebp-0xc]
00030B38  89C2              mov edx,eax
00030B3A  89D0              mov eax,edx
00030B3C  C1E002            shl eax,byte 0x2
00030B3F  01D0              add eax,edx
00030B41  01C0              add eax,eax
00030B43  394508            cmp [ebp+0x8],eax
00030B46  7FE8              jg 0x30b30
00030B48  90                nop
00030B49  90                nop
00030B4A  8B5DFC            mov ebx,[ebp-0x4]
00030B4D  C9                leave
00030B4E  C3                ret
00030B4F  55                push ebp
00030B50  89E5              mov ebp,esp
00030B52  53                push ebx
00030B53  83EC04            sub esp,byte +0x4
00030B56  E880FCFFFF        call 0x307db
00030B5B  81C3A5440000      add ebx,0x44a5
00030B61  83EC08            sub esp,byte +0x8
00030B64  6A34              push byte +0x34
00030B66  6A43              push byte +0x43
00030B68  E8401C0000        call 0x327ad
00030B6D  83C410            add esp,byte +0x10
00030B70  83EC08            sub esp,byte +0x8
00030B73  689B000000        push dword 0x9b
00030B78  6A40              push byte +0x40
00030B7A  E82E1C0000        call 0x327ad
00030B7F  83C410            add esp,byte +0x10
00030B82  83EC08            sub esp,byte +0x8
00030B85  6A2E              push byte +0x2e
00030B87  6A40              push byte +0x40
00030B89  E81F1C0000        call 0x327ad
00030B8E  83C410            add esp,byte +0x10
00030B91  83EC08            sub esp,byte +0x8
00030B94  8D83B3BAFFFF      lea eax,[ebx-0x454d]
00030B9A  50                push eax
00030B9B  6A00              push byte +0x0
00030B9D  E8E1130000        call 0x31f83
00030BA2  83C410            add esp,byte +0x10
00030BA5  83EC0C            sub esp,byte +0xc
00030BA8  6A00              push byte +0x0
00030BAA  E8491C0000        call 0x327f8
00030BAF  83C410            add esp,byte +0x10
00030BB2  90                nop
00030BB3  8B5DFC            mov ebx,[ebp-0x4]
00030BB6  C9                leave
00030BB7  C3                ret
00030BB8  55                push ebp
00030BB9  89E5              mov ebp,esp
00030BBB  53                push ebx
00030BBC  83EC14            sub esp,byte +0x14
00030BBF  E817FCFFFF        call 0x307db
00030BC4  81C33C440000      add ebx,0x443c
00030BCA  83EC0C            sub esp,byte +0xc
00030BCD  6A60              push byte +0x60
00030BCF  E8E51B0000        call 0x327b9
00030BD4  83C410            add esp,byte +0x10
00030BD7  8845F7            mov [ebp-0x9],al
00030BDA  8B83080F0000      mov eax,[ebx+0xf08]
00030BE0  83F81F            cmp eax,byte +0x1f
00030BE3  7F46              jg 0x30c2b
00030BE5  8B83000F0000      mov eax,[ebx+0xf00]
00030BEB  0FB655F7          movzx edx,byte [ebp-0x9]
00030BEF  8810              mov [eax],dl
00030BF1  8B83000F0000      mov eax,[ebx+0xf00]
00030BF7  83C001            add eax,byte +0x1
00030BFA  8983000F0000      mov [ebx+0xf00],eax
00030C00  8B93000F0000      mov edx,[ebx+0xf00]
00030C06  8D832C0F0000      lea eax,[ebx+0xf2c]
00030C0C  39C2              cmp edx,eax
00030C0E  750C              jnz 0x30c1c
00030C10  8D830C0F0000      lea eax,[ebx+0xf0c]
00030C16  8983000F0000      mov [ebx+0xf00],eax
00030C1C  8B83080F0000      mov eax,[ebx+0xf08]
00030C22  83C001            add eax,byte +0x1
00030C25  8983080F0000      mov [ebx+0xf08],eax
00030C2B  90                nop
00030C2C  8B5DFC            mov ebx,[ebp-0x4]
00030C2F  C9                leave
00030C30  C3                ret
00030C31  55                push ebp
00030C32  89E5              mov ebp,esp
00030C34  53                push ebx
00030C35  83EC04            sub esp,byte +0x4
00030C38  E89EFBFFFF        call 0x307db
00030C3D  81C3C3430000      add ebx,0x43c3
00030C43  C783080F00000000  mov dword [ebx+0xf08],0x0
         -0000
00030C4D  8D830C0F0000      lea eax,[ebx+0xf0c]
00030C53  8983040F0000      mov [ebx+0xf04],eax
00030C59  8B83040F0000      mov eax,[ebx+0xf04]
00030C5F  8983000F0000      mov [ebx+0xf00],eax
00030C65  C783340F00000000  mov dword [ebx+0xf34],0x0
         -0000
00030C6F  8B83340F0000      mov eax,[ebx+0xf34]
00030C75  8983300F0000      mov [ebx+0xf30],eax
00030C7B  C7833C0F00000000  mov dword [ebx+0xf3c],0x0
         -0000
00030C85  8B833C0F0000      mov eax,[ebx+0xf3c]
00030C8B  8983380F0000      mov [ebx+0xf38],eax
00030C91  C783440F00000000  mov dword [ebx+0xf44],0x0
         -0000
00030C9B  8B83440F0000      mov eax,[ebx+0xf44]
00030CA1  8983400F0000      mov [ebx+0xf40],eax
00030CA7  C783480F00000000  mov dword [ebx+0xf48],0x0
         -0000
00030CB1  C7834C0F00000100  mov dword [ebx+0xf4c],0x1
         -0000
00030CBB  C783500F00000000  mov dword [ebx+0xf50],0x0
         -0000
00030CC5  E8B7050000        call 0x31281
00030CCA  83EC08            sub esp,byte +0x8
00030CCD  8D83B8BBFFFF      lea eax,[ebx-0x4448]
00030CD3  50                push eax
00030CD4  6A01              push byte +0x1
00030CD6  E8A8120000        call 0x31f83
00030CDB  83C410            add esp,byte +0x10
00030CDE  83EC0C            sub esp,byte +0xc
00030CE1  6A01              push byte +0x1
00030CE3  E8101B0000        call 0x327f8
00030CE8  83C410            add esp,byte +0x10
00030CEB  90                nop
00030CEC  8B5DFC            mov ebx,[ebp-0x4]
00030CEF  C9                leave
00030CF0  C3                ret
00030CF1  55                push ebp
00030CF2  89E5              mov ebp,esp
00030CF4  53                push ebx
00030CF5  83EC34            sub esp,byte +0x34
00030CF8  E8DEFAFFFF        call 0x307db
00030CFD  81C303430000      add ebx,0x4303
00030D03  C745F000000000    mov dword [ebp-0x10],0x0
00030D0A  8B83080F0000      mov eax,[ebx+0xf08]
00030D10  85C0              test eax,eax
00030D12  0F8E8C040000      jng near 0x311a4
00030D18  C7832C0F00000000  mov dword [ebx+0xf2c],0x0
         -0000
00030D22  E883040000        call 0x311aa
00030D27  8845F7            mov [ebp-0x9],al
00030D2A  807DF7E1          cmp byte [ebp-0x9],0xe1
00030D2E  7553              jnz 0x30d83
00030D30  C745D0E11D45E1    mov dword [ebp-0x30],0xe1451de1
00030D37  66C745D49DC5      mov word [ebp-0x2c],0xc59d
00030D3D  C745E801000000    mov dword [ebp-0x18],0x1
00030D44  C745EC01000000    mov dword [ebp-0x14],0x1
00030D4B  EB21              jmp short 0x30d6e
00030D4D  E858040000        call 0x311aa
00030D52  8D4DD0            lea ecx,[ebp-0x30]
00030D55  8B55EC            mov edx,[ebp-0x14]
00030D58  01CA              add edx,ecx
00030D5A  0FB612            movzx edx,byte [edx]
00030D5D  38D0              cmp al,dl
00030D5F  7409              jz 0x30d6a
00030D61  C745E800000000    mov dword [ebp-0x18],0x0
00030D68  EB0A              jmp short 0x30d74
00030D6A  8345EC01          add dword [ebp-0x14],byte +0x1
00030D6E  837DEC05          cmp dword [ebp-0x14],byte +0x5
00030D72  7ED9              jng 0x30d4d
00030D74  837DE800          cmp dword [ebp-0x18],byte +0x0
00030D78  7473              jz 0x30ded
00030D7A  C745F01E010000    mov dword [ebp-0x10],0x11e
00030D81  EB6A              jmp short 0x30ded
00030D83  807DF7E0          cmp byte [ebp-0x9],0xe0
00030D87  7564              jnz 0x30ded
00030D89  E81C040000        call 0x311aa
00030D8E  8845F7            mov [ebp-0x9],al
00030D91  807DF72A          cmp byte [ebp-0x9],0x2a
00030D95  7520              jnz 0x30db7
00030D97  E80E040000        call 0x311aa
00030D9C  3CE0              cmp al,0xe0
00030D9E  7517              jnz 0x30db7
00030DA0  E805040000        call 0x311aa
00030DA5  3C37              cmp al,0x37
00030DA7  750E              jnz 0x30db7
00030DA9  C745F01D010000    mov dword [ebp-0x10],0x11d
00030DB0  C745DC01000000    mov dword [ebp-0x24],0x1
00030DB7  807DF7B7          cmp byte [ebp-0x9],0xb7
00030DBB  7520              jnz 0x30ddd
00030DBD  E8E8030000        call 0x311aa
00030DC2  3CE0              cmp al,0xe0
00030DC4  7517              jnz 0x30ddd
00030DC6  E8DF030000        call 0x311aa
00030DCB  3CAA              cmp al,0xaa
00030DCD  750E              jnz 0x30ddd
00030DCF  C745F01D010000    mov dword [ebp-0x10],0x11d
00030DD6  C745DC00000000    mov dword [ebp-0x24],0x0
00030DDD  837DF000          cmp dword [ebp-0x10],byte +0x0
00030DE1  750A              jnz 0x30ded
00030DE3  C7832C0F00000100  mov dword [ebx+0xf2c],0x1
         -0000
00030DED  817DF01E010000    cmp dword [ebp-0x10],0x11e
00030DF4  0F84AA030000      jz near 0x311a4
00030DFA  817DF01D010000    cmp dword [ebp-0x10],0x11d
00030E01  0F849D030000      jz near 0x311a4
00030E07  0FB645F7          movzx eax,byte [ebp-0x9]
00030E0B  F7D0              not eax
00030E0D  C0E807            shr al,byte 0x7
00030E10  0FB6C0            movzx eax,al
00030E13  8945DC            mov [ebp-0x24],eax
00030E16  0FB645F7          movzx eax,byte [ebp-0x9]
00030E1A  83E07F            and eax,byte +0x7f
00030E1D  89C2              mov edx,eax
00030E1F  89D0              mov eax,edx
00030E21  01C0              add eax,eax
00030E23  01D0              add eax,edx
00030E25  8D148500000000    lea edx,[eax*4+0x0]
00030E2C  8D8340000000      lea eax,[ebx+0x40]
00030E32  01D0              add eax,edx
00030E34  8945D8            mov [ebp-0x28],eax
00030E37  C783540F00000000  mov dword [ebx+0xf54],0x0
         -0000
00030E41  8B83300F0000      mov eax,[ebx+0xf30]
00030E47  85C0              test eax,eax
00030E49  750A              jnz 0x30e55
00030E4B  8B83340F0000      mov eax,[ebx+0xf34]
00030E51  85C0              test eax,eax
00030E53  7407              jz 0x30e5c
00030E55  B801000000        mov eax,0x1
00030E5A  EB05              jmp short 0x30e61
00030E5C  B800000000        mov eax,0x0
00030E61  8945E4            mov [ebp-0x1c],eax
00030E64  8B83480F0000      mov eax,[ebx+0xf48]
00030E6A  85C0              test eax,eax
00030E6C  7421              jz 0x30e8f
00030E6E  8B45D8            mov eax,[ebp-0x28]
00030E71  8B00              mov eax,[eax]
00030E73  83F860            cmp eax,byte +0x60
00030E76  7617              jna 0x30e8f
00030E78  8B45D8            mov eax,[ebp-0x28]
00030E7B  8B00              mov eax,[eax]
00030E7D  83F87A            cmp eax,byte +0x7a
00030E80  770D              ja 0x30e8f
00030E82  837DE400          cmp dword [ebp-0x1c],byte +0x0
00030E86  0F94C0            setz al
00030E89  0FB6C0            movzx eax,al
00030E8C  8945E4            mov [ebp-0x1c],eax
00030E8F  837DE400          cmp dword [ebp-0x1c],byte +0x0
00030E93  740A              jz 0x30e9f
00030E95  C783540F00000100  mov dword [ebx+0xf54],0x1
         -0000
00030E9F  8B832C0F0000      mov eax,[ebx+0xf2c]
00030EA5  85C0              test eax,eax
00030EA7  740A              jz 0x30eb3
00030EA9  C783540F00000200  mov dword [ebx+0xf54],0x2
         -0000
00030EB3  8B83540F0000      mov eax,[ebx+0xf54]
00030EB9  8D148500000000    lea edx,[eax*4+0x0]
00030EC0  8B45D8            mov eax,[ebp-0x28]
00030EC3  01D0              add eax,edx
00030EC5  8B00              mov eax,[eax]
00030EC7  8945F0            mov [ebp-0x10],eax
00030ECA  8B45F0            mov eax,[ebp-0x10]
00030ECD  2D08010000        sub eax,0x108
00030ED2  83F808            cmp eax,byte +0x8
00030ED5  0F87BF000000      ja near 0x30f9a
00030EDB  C1E002            shl eax,byte 0x2
00030EDE  8B841868E0FFFF    mov eax,[eax+ebx-0x1f98]
00030EE5  01D8              add eax,ebx
00030EE7  FFE0              jmp eax
00030EE9  8B45DC            mov eax,[ebp-0x24]
00030EEC  8983300F0000      mov [ebx+0xf30],eax
00030EF2  E9AD000000        jmp 0x30fa4
00030EF7  8B45DC            mov eax,[ebp-0x24]
00030EFA  8983340F0000      mov [ebx+0xf34],eax
00030F00  E99F000000        jmp 0x30fa4
00030F05  8B45DC            mov eax,[ebp-0x24]
00030F08  8983400F0000      mov [ebx+0xf40],eax
00030F0E  E991000000        jmp 0x30fa4
00030F13  8B45DC            mov eax,[ebp-0x24]
00030F16  8983440F0000      mov [ebx+0xf44],eax
00030F1C  E983000000        jmp 0x30fa4
00030F21  8B45DC            mov eax,[ebp-0x24]
00030F24  8983380F0000      mov [ebx+0xf38],eax
00030F2A  EB78              jmp short 0x30fa4
00030F2C  8B45DC            mov eax,[ebp-0x24]
00030F2F  8983380F0000      mov [ebx+0xf38],eax
00030F35  EB6D              jmp short 0x30fa4
00030F37  837DDC00          cmp dword [ebp-0x24],byte +0x0
00030F3B  7460              jz 0x30f9d
00030F3D  8B83480F0000      mov eax,[ebx+0xf48]
00030F43  85C0              test eax,eax
00030F45  0F94C0            setz al
00030F48  0FB6C0            movzx eax,al
00030F4B  8983480F0000      mov [ebx+0xf48],eax
00030F51  E82B030000        call 0x31281
00030F56  EB45              jmp short 0x30f9d
00030F58  837DDC00          cmp dword [ebp-0x24],byte +0x0
00030F5C  7442              jz 0x30fa0
00030F5E  8B834C0F0000      mov eax,[ebx+0xf4c]
00030F64  85C0              test eax,eax
00030F66  0F94C0            setz al
00030F69  0FB6C0            movzx eax,al
00030F6C  89834C0F0000      mov [ebx+0xf4c],eax
00030F72  E80A030000        call 0x31281
00030F77  EB27              jmp short 0x30fa0
00030F79  837DDC00          cmp dword [ebp-0x24],byte +0x0
00030F7D  7424              jz 0x30fa3
00030F7F  8B83500F0000      mov eax,[ebx+0xf50]
00030F85  85C0              test eax,eax
00030F87  0F94C0            setz al
00030F8A  0FB6C0            movzx eax,al
00030F8D  8983500F0000      mov [ebx+0xf50],eax
00030F93  E8E9020000        call 0x31281
00030F98  EB09              jmp short 0x30fa3
00030F9A  90                nop
00030F9B  EB07              jmp short 0x30fa4
00030F9D  90                nop
00030F9E  EB04              jmp short 0x30fa4
00030FA0  90                nop
00030FA1  EB01              jmp short 0x30fa4
00030FA3  90                nop
00030FA4  837DDC00          cmp dword [ebp-0x24],byte +0x0
00030FA8  0F84F6010000      jz near 0x311a4
00030FAE  C745E000000000    mov dword [ebp-0x20],0x0
00030FB5  817DF02B010000    cmp dword [ebp-0x10],0x12b
00030FBC  0F8626010000      jna near 0x310e8
00030FC2  817DF03B010000    cmp dword [ebp-0x10],0x13b
00030FC9  0F8719010000      ja near 0x310e8
00030FCF  C745E001000000    mov dword [ebp-0x20],0x1
00030FD6  8B45F0            mov eax,[ebp-0x10]
00030FD9  2D2C010000        sub eax,0x12c
00030FDE  83F804            cmp eax,byte +0x4
00030FE1  774A              ja 0x3102d
00030FE3  C1E002            shl eax,byte 0x2
00030FE6  8B84188CE0FFFF    mov eax,[eax+ebx-0x1f74]
00030FED  01D8              add eax,ebx
00030FEF  FFE0              jmp eax
00030FF1  C745F02F000000    mov dword [ebp-0x10],0x2f
00030FF8  E9EB000000        jmp 0x310e8
00030FFD  C745F02A000000    mov dword [ebp-0x10],0x2a
00031004  E9DF000000        jmp 0x310e8
00031009  C745F02D000000    mov dword [ebp-0x10],0x2d
00031010  E9D3000000        jmp 0x310e8
00031015  C745F02B000000    mov dword [ebp-0x10],0x2b
0003101C  E9C7000000        jmp 0x310e8
00031021  C745F003010000    mov dword [ebp-0x10],0x103
00031028  E9BB000000        jmp 0x310e8
0003102D  8B834C0F0000      mov eax,[ebx+0xf4c]
00031033  85C0              test eax,eax
00031035  741E              jz 0x31055
00031037  817DF031010000    cmp dword [ebp-0x10],0x131
0003103E  7615              jna 0x31055
00031040  817DF03B010000    cmp dword [ebp-0x10],0x13b
00031047  770C              ja 0x31055
00031049  816DF002010000    sub dword [ebp-0x10],0x102
00031050  E992000000        jmp 0x310e7
00031055  8B834C0F0000      mov eax,[ebx+0xf4c]
0003105B  85C0              test eax,eax
0003105D  7412              jz 0x31071
0003105F  817DF031010000    cmp dword [ebp-0x10],0x131
00031066  7509              jnz 0x31071
00031068  C745F02E000000    mov dword [ebp-0x10],0x2e
0003106F  EB76              jmp short 0x310e7
00031071  8B45F0            mov eax,[ebp-0x10]
00031074  2D31010000        sub eax,0x131
00031079  83F80A            cmp eax,byte +0xa
0003107C  7768              ja 0x310e6
0003107E  C1E002            shl eax,byte 0x2
00031081  8B8418A0E0FFFF    mov eax,[eax+ebx-0x1f60]
00031088  01D8              add eax,ebx
0003108A  FFE0              jmp eax
0003108C  C745F021010000    mov dword [ebp-0x10],0x121
00031093  EB52              jmp short 0x310e7
00031095  C745F022010000    mov dword [ebp-0x10],0x122
0003109C  EB49              jmp short 0x310e7
0003109E  C745F023010000    mov dword [ebp-0x10],0x123
000310A5  EB40              jmp short 0x310e7
000310A7  C745F024010000    mov dword [ebp-0x10],0x124
000310AE  EB37              jmp short 0x310e7
000310B0  C745F01F010000    mov dword [ebp-0x10],0x11f
000310B7  EB2E              jmp short 0x310e7
000310B9  C745F025010000    mov dword [ebp-0x10],0x125
000310C0  EB25              jmp short 0x310e7
000310C2  C745F026010000    mov dword [ebp-0x10],0x126
000310C9  EB1C              jmp short 0x310e7
000310CB  C745F027010000    mov dword [ebp-0x10],0x127
000310D2  EB13              jmp short 0x310e7
000310D4  C745F028010000    mov dword [ebp-0x10],0x128
000310DB  EB0A              jmp short 0x310e7
000310DD  C745F020010000    mov dword [ebp-0x10],0x120
000310E4  EB01              jmp short 0x310e7
000310E6  90                nop
000310E7  90                nop
000310E8  8B83300F0000      mov eax,[ebx+0xf30]
000310EE  85C0              test eax,eax
000310F0  7407              jz 0x310f9
000310F2  B800020000        mov eax,0x200
000310F7  EB05              jmp short 0x310fe
000310F9  B800000000        mov eax,0x0
000310FE  0945F0            or [ebp-0x10],eax
00031101  8B83340F0000      mov eax,[ebx+0xf34]
00031107  85C0              test eax,eax
00031109  7407              jz 0x31112
0003110B  B800040000        mov eax,0x400
00031110  EB05              jmp short 0x31117
00031112  B800000000        mov eax,0x0
00031117  0945F0            or [ebp-0x10],eax
0003111A  8B83400F0000      mov eax,[ebx+0xf40]
00031120  85C0              test eax,eax
00031122  7407              jz 0x3112b
00031124  B800080000        mov eax,0x800
00031129  EB05              jmp short 0x31130
0003112B  B800000000        mov eax,0x0
00031130  0945F0            or [ebp-0x10],eax
00031133  8B83440F0000      mov eax,[ebx+0xf44]
00031139  85C0              test eax,eax
0003113B  7407              jz 0x31144
0003113D  B800100000        mov eax,0x1000
00031142  EB05              jmp short 0x31149
00031144  B800000000        mov eax,0x0
00031149  0945F0            or [ebp-0x10],eax
0003114C  8B83380F0000      mov eax,[ebx+0xf38]
00031152  85C0              test eax,eax
00031154  7407              jz 0x3115d
00031156  B800200000        mov eax,0x2000
0003115B  EB05              jmp short 0x31162
0003115D  B800000000        mov eax,0x0
00031162  0945F0            or [ebp-0x10],eax
00031165  8B833C0F0000      mov eax,[ebx+0xf3c]
0003116B  85C0              test eax,eax
0003116D  7407              jz 0x31176
0003116F  B800400000        mov eax,0x4000
00031174  EB05              jmp short 0x3117b
00031176  B800000000        mov eax,0x0
0003117B  0945F0            or [ebp-0x10],eax
0003117E  837DE000          cmp dword [ebp-0x20],byte +0x0
00031182  7407              jz 0x3118b
00031184  B800800000        mov eax,0x8000
00031189  EB05              jmp short 0x31190
0003118B  B800000000        mov eax,0x0
00031190  0945F0            or [ebp-0x10],eax
00031193  83EC08            sub esp,byte +0x8
00031196  FF75F0            push dword [ebp-0x10]
00031199  FF7508            push dword [ebp+0x8]
0003119C  E838020000        call 0x313d9
000311A1  83C410            add esp,byte +0x10
000311A4  90                nop
000311A5  8B5DFC            mov ebx,[ebp-0x4]
000311A8  C9                leave
000311A9  C3                ret
000311AA  55                push ebp
000311AB  89E5              mov ebp,esp
000311AD  53                push ebx
000311AE  83EC14            sub esp,byte +0x14
000311B1  E825F6FFFF        call 0x307db
000311B6  81C34A3E0000      add ebx,0x3e4a
000311BC  90                nop
000311BD  8B83080F0000      mov eax,[ebx+0xf08]
000311C3  85C0              test eax,eax
000311C5  7EF6              jng 0x311bd
000311C7  E84B160000        call 0x32817
000311CC  8B83040F0000      mov eax,[ebx+0xf04]
000311D2  0FB600            movzx eax,byte [eax]
000311D5  8845F7            mov [ebp-0x9],al
000311D8  8B83040F0000      mov eax,[ebx+0xf04]
000311DE  83C001            add eax,byte +0x1
000311E1  8983040F0000      mov [ebx+0xf04],eax
000311E7  8B93040F0000      mov edx,[ebx+0xf04]
000311ED  8D832C0F0000      lea eax,[ebx+0xf2c]
000311F3  39C2              cmp edx,eax
000311F5  750C              jnz 0x31203
000311F7  8D830C0F0000      lea eax,[ebx+0xf0c]
000311FD  8983040F0000      mov [ebx+0xf04],eax
00031203  8B83080F0000      mov eax,[ebx+0xf08]
00031209  83E801            sub eax,byte +0x1
0003120C  8983080F0000      mov [ebx+0xf08],eax
00031212  E802160000        call 0x32819
00031217  0FB645F7          movzx eax,byte [ebp-0x9]
0003121B  8B5DFC            mov ebx,[ebp-0x4]
0003121E  C9                leave
0003121F  C3                ret
00031220  55                push ebp
00031221  89E5              mov ebp,esp
00031223  53                push ebx
00031224  83EC14            sub esp,byte +0x14
00031227  E8AFF5FFFF        call 0x307db
0003122C  81C3D43D0000      add ebx,0x3dd4
00031232  83EC0C            sub esp,byte +0xc
00031235  6A64              push byte +0x64
00031237  E87D150000        call 0x327b9
0003123C  83C410            add esp,byte +0x10
0003123F  8845F7            mov [ebp-0x9],al
00031242  0FB645F7          movzx eax,byte [ebp-0x9]
00031246  83E002            and eax,byte +0x2
00031249  85C0              test eax,eax
0003124B  75E5              jnz 0x31232
0003124D  90                nop
0003124E  90                nop
0003124F  8B5DFC            mov ebx,[ebp-0x4]
00031252  C9                leave
00031253  C3                ret
00031254  55                push ebp
00031255  89E5              mov ebp,esp
00031257  53                push ebx
00031258  83EC14            sub esp,byte +0x14
0003125B  E84FF8FFFF        call 0x30aaf
00031260  05A03D0000        add eax,0x3da0
00031265  83EC0C            sub esp,byte +0xc
00031268  6A60              push byte +0x60
0003126A  89C3              mov ebx,eax
0003126C  E848150000        call 0x327b9
00031271  83C410            add esp,byte +0x10
00031274  8845F7            mov [ebp-0x9],al
00031277  C645F700          mov byte [ebp-0x9],0x0
0003127B  90                nop
0003127C  8B5DFC            mov ebx,[ebp-0x4]
0003127F  C9                leave
00031280  C3                ret
00031281  55                push ebp
00031282  89E5              mov ebp,esp
00031284  53                push ebx
00031285  83EC14            sub esp,byte +0x14
00031288  E84EF5FFFF        call 0x307db
0003128D  81C3733D0000      add ebx,0x3d73
00031293  8B83480F0000      mov eax,[ebx+0xf48]
00031299  C1E002            shl eax,byte 0x2
0003129C  89C2              mov edx,eax
0003129E  8B834C0F0000      mov eax,[ebx+0xf4c]
000312A4  01C0              add eax,eax
000312A6  09C2              or edx,eax
000312A8  8B83500F0000      mov eax,[ebx+0xf50]
000312AE  09D0              or eax,edx
000312B0  8845F7            mov [ebp-0x9],al
000312B3  E868FFFFFF        call 0x31220
000312B8  83EC08            sub esp,byte +0x8
000312BB  68ED000000        push dword 0xed
000312C0  6A60              push byte +0x60
000312C2  E8E6140000        call 0x327ad
000312C7  83C410            add esp,byte +0x10
000312CA  E885FFFFFF        call 0x31254
000312CF  E84CFFFFFF        call 0x31220
000312D4  0FB645F7          movzx eax,byte [ebp-0x9]
000312D8  83EC08            sub esp,byte +0x8
000312DB  50                push eax
000312DC  6A60              push byte +0x60
000312DE  E8CA140000        call 0x327ad
000312E3  83C410            add esp,byte +0x10
000312E6  E869FFFFFF        call 0x31254
000312EB  90                nop
000312EC  8B5DFC            mov ebx,[ebp-0x4]
000312EF  C9                leave
000312F0  C3                ret
000312F1  55                push ebp
000312F2  89E5              mov ebp,esp
000312F4  53                push ebx
000312F5  83EC14            sub esp,byte +0x14
000312F8  E8DEF4FFFF        call 0x307db
000312FD  81C3033D0000      add ebx,0x3d03
00031303  E829F9FFFF        call 0x30c31
00031308  C7C060710500      mov eax,0x57160
0003130E  8945F4            mov [ebp-0xc],eax
00031311  EB15              jmp short 0x31328
00031313  83EC0C            sub esp,byte +0xc
00031316  FF75F4            push dword [ebp-0xc]
00031319  E869000000        call 0x31387
0003131E  83C410            add esp,byte +0x10
00031321  8145F410040000    add dword [ebp-0xc],0x410
00031328  C7C060710500      mov eax,0x57160
0003132E  8D80300C0000      lea eax,[eax+0xc30]
00031334  3945F4            cmp [ebp-0xc],eax
00031337  72DA              jc 0x31313
00031339  83EC0C            sub esp,byte +0xc
0003133C  6A00              push byte +0x0
0003133E  E87B090000        call 0x31cbe
00031343  83C410            add esp,byte +0x10
00031346  C7C060710500      mov eax,0x57160
0003134C  8945F4            mov [ebp-0xc],eax
0003134F  EB23              jmp short 0x31374
00031351  83EC0C            sub esp,byte +0xc
00031354  FF75F4            push dword [ebp-0xc]
00031357  E84D020000        call 0x315a9
0003135C  83C410            add esp,byte +0x10
0003135F  83EC0C            sub esp,byte +0xc
00031362  FF75F4            push dword [ebp-0xc]
00031365  E87E020000        call 0x315e8
0003136A  83C410            add esp,byte +0x10
0003136D  8145F410040000    add dword [ebp-0xc],0x410
00031374  C7C060710500      mov eax,0x57160
0003137A  8D80300C0000      lea eax,[eax+0xc30]
00031380  3945F4            cmp [ebp-0xc],eax
00031383  72CC              jc 0x31351
00031385  EBBF              jmp short 0x31346
00031387  55                push ebp
00031388  89E5              mov ebp,esp
0003138A  53                push ebx
0003138B  83EC04            sub esp,byte +0x4
0003138E  E81CF7FFFF        call 0x30aaf
00031393  056D3C0000        add eax,0x3c6d
00031398  8B5508            mov edx,[ebp+0x8]
0003139B  C782080400000000  mov dword [edx+0x408],0x0
         -0000
000313A5  8B4D08            mov ecx,[ebp+0x8]
000313A8  8B5508            mov edx,[ebp+0x8]
000313AB  898A04040000      mov [edx+0x404],ecx
000313B1  8B5508            mov edx,[ebp+0x8]
000313B4  8B8A04040000      mov ecx,[edx+0x404]
000313BA  8B5508            mov edx,[ebp+0x8]
000313BD  898A00040000      mov [edx+0x400],ecx
000313C3  83EC0C            sub esp,byte +0xc
000313C6  FF7508            push dword [ebp+0x8]
000313C9  89C3              mov ebx,eax
000313CB  E81C030000        call 0x316ec
000313D0  83C410            add esp,byte +0x10
000313D3  90                nop
000313D4  8B5DFC            mov ebx,[ebp-0x4]
000313D7  C9                leave
000313D8  C3                ret
000313D9  55                push ebp
000313DA  89E5              mov ebp,esp
000313DC  53                push ebx
000313DD  83EC14            sub esp,byte +0x14
000313E0  E8CAF6FFFF        call 0x30aaf
000313E5  051B3C0000        add eax,0x3c1b
000313EA  66C745F20000      mov word [ebp-0xe],0x0
000313F0  8B550C            mov edx,[ebp+0xc]
000313F3  81E200010000      and edx,0x100
000313F9  85D2              test edx,edx
000313FB  7516              jnz 0x31413
000313FD  83EC08            sub esp,byte +0x8
00031400  FF750C            push dword [ebp+0xc]
00031403  FF7508            push dword [ebp+0x8]
00031406  E824010000        call 0x3152f
0003140B  83C410            add esp,byte +0x10
0003140E  E916010000        jmp 0x31529
00031413  8B550C            mov edx,[ebp+0xc]
00031416  81E2FF010000      and edx,0x1ff
0003141C  8955F4            mov [ebp-0xc],edx
0003141F  8B55F4            mov edx,[ebp-0xc]
00031422  81EA02010000      sub edx,0x102
00031428  83FA24            cmp edx,byte +0x24
0003142B  0F87EE000000      ja near 0x3151f
00031431  C1E202            shl edx,byte 0x2
00031434  8B9402CCE0FFFF    mov edx,[edx+eax-0x1f34]
0003143B  01C2              add edx,eax
0003143D  FFE2              jmp edx
0003143F  83EC08            sub esp,byte +0x8
00031442  6A0A              push byte +0xa
00031444  FF7508            push dword [ebp+0x8]
00031447  E8E3000000        call 0x3152f
0003144C  83C410            add esp,byte +0x10
0003144F  E9D5000000        jmp 0x31529
00031454  83EC08            sub esp,byte +0x8
00031457  6A09              push byte +0x9
00031459  FF7508            push dword [ebp+0x8]
0003145C  E8CE000000        call 0x3152f
00031461  83C410            add esp,byte +0x10
00031464  E9C0000000        jmp 0x31529
00031469  83EC08            sub esp,byte +0x8
0003146C  6A08              push byte +0x8
0003146E  FF7508            push dword [ebp+0x8]
00031471  E8B9000000        call 0x3152f
00031476  83C410            add esp,byte +0x10
00031479  E9AB000000        jmp 0x31529
0003147E  8B550C            mov edx,[ebp+0xc]
00031481  81E200020000      and edx,0x200
00031487  85D2              test edx,edx
00031489  7511              jnz 0x3149c
0003148B  8B550C            mov edx,[ebp+0xc]
0003148E  81E200040000      and edx,0x400
00031494  85D2              test edx,edx
00031496  0F8486000000      jz near 0x31522
0003149C  8B5508            mov edx,[ebp+0x8]
0003149F  8B920C040000      mov edx,[edx+0x40c]
000314A5  83EC08            sub esp,byte +0x8
000314A8  6AFF              push byte -0x1
000314AA  52                push edx
000314AB  89C3              mov ebx,eax
000314AD  E878080000        call 0x31d2a
000314B2  83C410            add esp,byte +0x10
000314B5  EB6B              jmp short 0x31522
000314B7  8B550C            mov edx,[ebp+0xc]
000314BA  81E200020000      and edx,0x200
000314C0  85D2              test edx,edx
000314C2  750D              jnz 0x314d1
000314C4  8B550C            mov edx,[ebp+0xc]
000314C7  81E200040000      and edx,0x400
000314CD  85D2              test edx,edx
000314CF  7454              jz 0x31525
000314D1  8B5508            mov edx,[ebp+0x8]
000314D4  8B920C040000      mov edx,[edx+0x40c]
000314DA  83EC08            sub esp,byte +0x8
000314DD  6A01              push byte +0x1
000314DF  52                push edx
000314E0  89C3              mov ebx,eax
000314E2  E843080000        call 0x31d2a
000314E7  83C410            add esp,byte +0x10
000314EA  EB39              jmp short 0x31525
000314EC  8B550C            mov edx,[ebp+0xc]
000314EF  81E200200000      and edx,0x2000
000314F5  85D2              test edx,edx
000314F7  750D              jnz 0x31506
000314F9  8B550C            mov edx,[ebp+0xc]
000314FC  81E200400000      and edx,0x4000
00031502  85D2              test edx,edx
00031504  7422              jz 0x31528
00031506  8B55F4            mov edx,[ebp-0xc]
00031509  81EA11010000      sub edx,0x111
0003150F  83EC0C            sub esp,byte +0xc
00031512  52                push edx
00031513  89C3              mov ebx,eax
00031515  E8A4070000        call 0x31cbe
0003151A  83C410            add esp,byte +0x10
0003151D  EB09              jmp short 0x31528
0003151F  90                nop
00031520  EB07              jmp short 0x31529
00031522  90                nop
00031523  EB04              jmp short 0x31529
00031525  90                nop
00031526  EB01              jmp short 0x31529
00031528  90                nop
00031529  90                nop
0003152A  8B5DFC            mov ebx,[ebp-0x4]
0003152D  C9                leave
0003152E  C3                ret
0003152F  55                push ebp
00031530  89E5              mov ebp,esp
00031532  E878F5FFFF        call 0x30aaf
00031537  05C93A0000        add eax,0x3ac9
0003153C  8B4508            mov eax,[ebp+0x8]
0003153F  8B8008040000      mov eax,[eax+0x408]
00031545  3DFF000000        cmp eax,0xff
0003154A  7F5A              jg 0x315a6
0003154C  8B4508            mov eax,[ebp+0x8]
0003154F  8B8000040000      mov eax,[eax+0x400]
00031555  8B550C            mov edx,[ebp+0xc]
00031558  8910              mov [eax],edx
0003155A  8B4508            mov eax,[ebp+0x8]
0003155D  8B8000040000      mov eax,[eax+0x400]
00031563  8D5004            lea edx,[eax+0x4]
00031566  8B4508            mov eax,[ebp+0x8]
00031569  899000040000      mov [eax+0x400],edx
0003156F  8B4508            mov eax,[ebp+0x8]
00031572  8B8000040000      mov eax,[eax+0x400]
00031578  8B5508            mov edx,[ebp+0x8]
0003157B  81C200040000      add edx,0x400
00031581  39D0              cmp eax,edx
00031583  750C              jnz 0x31591
00031585  8B5508            mov edx,[ebp+0x8]
00031588  8B4508            mov eax,[ebp+0x8]
0003158B  899000040000      mov [eax+0x400],edx
00031591  8B4508            mov eax,[ebp+0x8]
00031594  8B8008040000      mov eax,[eax+0x408]
0003159A  8D5001            lea edx,[eax+0x1]
0003159D  8B4508            mov eax,[ebp+0x8]
000315A0  899008040000      mov [eax+0x408],edx
000315A6  90                nop
000315A7  5D                pop ebp
000315A8  C3                ret
000315A9  55                push ebp
000315AA  89E5              mov ebp,esp
000315AC  53                push ebx
000315AD  83EC04            sub esp,byte +0x4
000315B0  E826F2FFFF        call 0x307db
000315B5  81C34B3A0000      add ebx,0x3a4b
000315BB  8B4508            mov eax,[ebp+0x8]
000315BE  8B800C040000      mov eax,[eax+0x40c]
000315C4  83EC0C            sub esp,byte +0xc
000315C7  50                push eax
000315C8  E8B6020000        call 0x31883
000315CD  83C410            add esp,byte +0x10
000315D0  85C0              test eax,eax
000315D2  740E              jz 0x315e2
000315D4  83EC0C            sub esp,byte +0xc
000315D7  FF7508            push dword [ebp+0x8]
000315DA  E812F7FFFF        call 0x30cf1
000315DF  83C410            add esp,byte +0x10
000315E2  90                nop
000315E3  8B5DFC            mov ebx,[ebp-0x4]
000315E6  C9                leave
000315E7  C3                ret
000315E8  55                push ebp
000315E9  89E5              mov ebp,esp
000315EB  53                push ebx
000315EC  83EC14            sub esp,byte +0x14
000315EF  E8BBF4FFFF        call 0x30aaf
000315F4  050C3A0000        add eax,0x3a0c
000315F9  8B5508            mov edx,[ebp+0x8]
000315FC  8B9208040000      mov edx,[edx+0x408]
00031602  85D2              test edx,edx
00031604  7476              jz 0x3167c
00031606  8B5508            mov edx,[ebp+0x8]
00031609  8B9204040000      mov edx,[edx+0x404]
0003160F  8B12              mov edx,[edx]
00031611  8855F7            mov [ebp-0x9],dl
00031614  8B5508            mov edx,[ebp+0x8]
00031617  8B9204040000      mov edx,[edx+0x404]
0003161D  8D4A04            lea ecx,[edx+0x4]
00031620  8B5508            mov edx,[ebp+0x8]
00031623  898A04040000      mov [edx+0x404],ecx
00031629  8B5508            mov edx,[ebp+0x8]
0003162C  8B9204040000      mov edx,[edx+0x404]
00031632  8B4D08            mov ecx,[ebp+0x8]
00031635  81C100040000      add ecx,0x400
0003163B  39CA              cmp edx,ecx
0003163D  750C              jnz 0x3164b
0003163F  8B4D08            mov ecx,[ebp+0x8]
00031642  8B5508            mov edx,[ebp+0x8]
00031645  898A04040000      mov [edx+0x404],ecx
0003164B  8B5508            mov edx,[ebp+0x8]
0003164E  8B9208040000      mov edx,[edx+0x408]
00031654  8D4AFF            lea ecx,[edx-0x1]
00031657  8B5508            mov edx,[ebp+0x8]
0003165A  898A08040000      mov [edx+0x408],ecx
00031660  0FBE4DF7          movsx ecx,byte [ebp-0x9]
00031664  8B5508            mov edx,[ebp+0x8]
00031667  8B920C040000      mov edx,[edx+0x40c]
0003166D  83EC08            sub esp,byte +0x8
00031670  51                push ecx
00031671  52                push edx
00031672  89C3              mov ebx,eax
00031674  E835020000        call 0x318ae
00031679  83C410            add esp,byte +0x10
0003167C  90                nop
0003167D  8B5DFC            mov ebx,[ebp-0x4]
00031680  C9                leave
00031681  C3                ret
00031682  55                push ebp
00031683  89E5              mov ebp,esp
00031685  53                push ebx
00031686  83EC14            sub esp,byte +0x14
00031689  E84DF1FFFF        call 0x307db
0003168E  81C372390000      add ebx,0x3972
00031694  C7C060710500      mov eax,0x57160
0003169A  8945F4            mov [ebp-0xc],eax
0003169D  EB37              jmp short 0x316d6
0003169F  8B45F4            mov eax,[ebp-0xc]
000316A2  8B800C040000      mov eax,[eax+0x40c]
000316A8  83EC0C            sub esp,byte +0xc
000316AB  50                push eax
000316AC  E8D2010000        call 0x31883
000316B1  83C410            add esp,byte +0x10
000316B4  85C0              test eax,eax
000316B6  7417              jz 0x316cf
000316B8  8B45F4            mov eax,[ebp-0xc]
000316BB  8B800C040000      mov eax,[eax+0x40c]
000316C1  83EC0C            sub esp,byte +0xc
000316C4  50                push eax
000316C5  E8EA060000        call 0x31db4
000316CA  83C410            add esp,byte +0x10
000316CD  EB18              jmp short 0x316e7
000316CF  8145F410040000    add dword [ebp-0xc],0x410
000316D6  C7C060710500      mov eax,0x57160
000316DC  8D80300C0000      lea eax,[eax+0xc30]
000316E2  3945F4            cmp [ebp-0xc],eax
000316E5  72B8              jc 0x3169f
000316E7  8B5DFC            mov ebx,[ebp-0x4]
000316EA  C9                leave
000316EB  C3                ret
000316EC  55                push ebp
000316ED  89E5              mov ebp,esp
000316EF  53                push ebx
000316F0  83EC14            sub esp,byte +0x14
000316F3  E8E3F0FFFF        call 0x307db
000316F8  81C308390000      add ebx,0x3908
000316FE  C7C060710500      mov eax,0x57160
00031704  89C2              mov edx,eax
00031706  8B4508            mov eax,[ebp+0x8]
00031709  29D0              sub eax,edx
0003170B  C1F804            sar eax,byte 0x4
0003170E  69C0C10FFCC0      imul eax,eax,dword 0xc0fc0fc1
00031714  8945F0            mov [ebp-0x10],eax
00031717  8B45F0            mov eax,[ebp-0x10]
0003171A  C1E004            shl eax,byte 0x4
0003171D  89C2              mov edx,eax
0003171F  C7C0A07D0500      mov eax,0x57da0
00031725  01C2              add edx,eax
00031727  8B4508            mov eax,[ebp+0x8]
0003172A  89900C040000      mov [eax+0x40c],edx
00031730  C745EC00400000    mov dword [ebp-0x14],0x4000
00031737  8B4DEC            mov ecx,[ebp-0x14]
0003173A  BA56555555        mov edx,0x55555556
0003173F  89C8              mov eax,ecx
00031741  F7EA              imul edx
00031743  C1F91F            sar ecx,byte 0x1f
00031746  89D0              mov eax,edx
00031748  29C8              sub eax,ecx
0003174A  8945E8            mov [ebp-0x18],eax
0003174D  8B45F0            mov eax,[ebp-0x10]
00031750  0FAF45E8          imul eax,[ebp-0x18]
00031754  89C2              mov edx,eax
00031756  8B4508            mov eax,[ebp+0x8]
00031759  8B800C040000      mov eax,[eax+0x40c]
0003175F  895004            mov [eax+0x4],edx
00031762  8B4508            mov eax,[ebp+0x8]
00031765  8B800C040000      mov eax,[eax+0x40c]
0003176B  8B55E8            mov edx,[ebp-0x18]
0003176E  895008            mov [eax+0x8],edx
00031771  8B4508            mov eax,[ebp+0x8]
00031774  8B900C040000      mov edx,[eax+0x40c]
0003177A  8B4508            mov eax,[ebp+0x8]
0003177D  8B800C040000      mov eax,[eax+0x40c]
00031783  8B5204            mov edx,[edx+0x4]
00031786  8910              mov [eax],edx
00031788  8B4508            mov eax,[ebp+0x8]
0003178B  8B900C040000      mov edx,[eax+0x40c]
00031791  8B4508            mov eax,[ebp+0x8]
00031794  8B800C040000      mov eax,[eax+0x40c]
0003179A  8B5204            mov edx,[edx+0x4]
0003179D  89500C            mov [eax+0xc],edx
000317A0  837DF000          cmp dword [ebp-0x10],byte +0x0
000317A4  752D              jnz 0x317d3
000317A6  C7C0A4620300      mov eax,0x362a4
000317AC  8B00              mov eax,[eax]
000317AE  89C2              mov edx,eax
000317B0  C1EA1F            shr edx,byte 0x1f
000317B3  01D0              add eax,edx
000317B5  D1F8              sar eax,1
000317B7  89C2              mov edx,eax
000317B9  8B4508            mov eax,[ebp+0x8]
000317BC  8B800C040000      mov eax,[eax+0x40c]
000317C2  89500C            mov [eax+0xc],edx
000317C5  C7C0A4620300      mov eax,0x362a4
000317CB  C70000000000      mov dword [eax],0x0
000317D1  EB36              jmp short 0x31809
000317D3  8B45F0            mov eax,[ebp-0x10]
000317D6  83C030            add eax,byte +0x30
000317D9  0FBED0            movsx edx,al
000317DC  8B4508            mov eax,[ebp+0x8]
000317DF  8B800C040000      mov eax,[eax+0x40c]
000317E5  83EC08            sub esp,byte +0x8
000317E8  52                push edx
000317E9  50                push eax
000317EA  E8BF000000        call 0x318ae
000317EF  83C410            add esp,byte +0x10
000317F2  8B4508            mov eax,[ebp+0x8]
000317F5  8B800C040000      mov eax,[eax+0x40c]
000317FB  83EC08            sub esp,byte +0x8
000317FE  6A23              push byte +0x23
00031800  50                push eax
00031801  E8A8000000        call 0x318ae
00031806  83C410            add esp,byte +0x10
00031809  8B4508            mov eax,[ebp+0x8]
0003180C  8B800C040000      mov eax,[eax+0x40c]
00031812  8B400C            mov eax,[eax+0xc]
00031815  83EC0C            sub esp,byte +0xc
00031818  50                push eax
00031819  E8B2030000        call 0x31bd0
0003181E  83C410            add esp,byte +0x10
00031821  8B45F0            mov eax,[ebp-0x10]
00031824  0FAF45E8          imul eax,[ebp-0x18]
00031828  89C1              mov ecx,eax
0003182A  BA67666666        mov edx,0x66666667
0003182F  89C8              mov eax,ecx
00031831  F7EA              imul edx
00031833  89D0              mov eax,edx
00031835  C1F805            sar eax,byte 0x5
00031838  C1F91F            sar ecx,byte 0x1f
0003183B  89CA              mov edx,ecx
0003183D  29D0              sub eax,edx
0003183F  8945F4            mov [ebp-0xc],eax
00031842  EB12              jmp short 0x31856
00031844  8B45F4            mov eax,[ebp-0xc]
00031847  C78483600F00004F  mov dword [ebx+eax*4+0xf60],0x4f
         -000000
00031852  8345F401          add dword [ebp-0xc],byte +0x1
00031856  8B45F0            mov eax,[ebp-0x10]
00031859  83C001            add eax,byte +0x1
0003185C  0FAF45E8          imul eax,[ebp-0x18]
00031860  89C1              mov ecx,eax
00031862  BA67666666        mov edx,0x66666667
00031867  89C8              mov eax,ecx
00031869  F7EA              imul edx
0003186B  89D0              mov eax,edx
0003186D  C1F805            sar eax,byte 0x5
00031870  C1F91F            sar ecx,byte 0x1f
00031873  89CA              mov edx,ecx
00031875  29D0              sub eax,edx
00031877  3945F4            cmp [ebp-0xc],eax
0003187A  7CC8              jl 0x31844
0003187C  90                nop
0003187D  90                nop
0003187E  8B5DFC            mov ebx,[ebp-0x4]
00031881  C9                leave
00031882  C3                ret
00031883  55                push ebp
00031884  89E5              mov ebp,esp
00031886  E824F2FFFF        call 0x30aaf
0003188B  0575370000        add eax,0x3775
00031890  C7C26C6F0300      mov edx,0x36f6c
00031896  8B12              mov edx,[edx]
00031898  C1E204            shl edx,byte 0x4
0003189B  C7C0A07D0500      mov eax,0x57da0
000318A1  01D0              add eax,edx
000318A3  394508            cmp [ebp+0x8],eax
000318A6  0F94C0            setz al
000318A9  0FB6C0            movzx eax,al
000318AC  5D                pop ebp
000318AD  C3                ret
000318AE  55                push ebp
000318AF  89E5              mov ebp,esp
000318B1  53                push ebx
000318B2  83EC24            sub esp,byte +0x24
000318B5  E892050000        call 0x31e4c
000318BA  81C146370000      add ecx,0x3746
000318C0  8B450C            mov eax,[ebp+0xc]
000318C3  8845E4            mov [ebp-0x1c],al
000318C6  8B4508            mov eax,[ebp+0x8]
000318C9  8B400C            mov eax,[eax+0xc]
000318CC  0500C00500        add eax,0x5c000
000318D1  01C0              add eax,eax
000318D3  8945EC            mov [ebp-0x14],eax
000318D6  0FBE45E4          movsx eax,byte [ebp-0x1c]
000318DA  83F80A            cmp eax,byte +0xa
000318DD  741C              jz 0x318fb
000318DF  83F80A            cmp eax,byte +0xa
000318E2  0F8F27020000      jg near 0x31b0f
000318E8  83F808            cmp eax,byte +0x8
000318EB  0F84E8000000      jz near 0x319d9
000318F1  83F809            cmp eax,byte +0x9
000318F4  747E              jz 0x31974
000318F6  E914020000        jmp 0x31b0f
000318FB  8B4508            mov eax,[ebp+0x8]
000318FE  8B500C            mov edx,[eax+0xc]
00031901  8B4508            mov eax,[ebp+0x8]
00031904  8B5804            mov ebx,[eax+0x4]
00031907  8B4508            mov eax,[ebp+0x8]
0003190A  8B4008            mov eax,[eax+0x8]
0003190D  01D8              add eax,ebx
0003190F  83E850            sub eax,byte +0x50
00031912  39C2              cmp edx,eax
00031914  0F833C020000      jnc near 0x31b56
0003191A  8B4508            mov eax,[ebp+0x8]
0003191D  8B400C            mov eax,[eax+0xc]
00031920  BACDCCCCCC        mov edx,0xcccccccd
00031925  F7E2              mul edx
00031927  C1EA06            shr edx,byte 0x6
0003192A  8B4508            mov eax,[ebp+0x8]
0003192D  8B400C            mov eax,[eax+0xc]
00031930  898491600F0000    mov [ecx+edx*4+0xf60],eax
00031937  8B4508            mov eax,[ebp+0x8]
0003193A  8B4804            mov ecx,[eax+0x4]
0003193D  8B4508            mov eax,[ebp+0x8]
00031940  8B500C            mov edx,[eax+0xc]
00031943  8B4508            mov eax,[ebp+0x8]
00031946  8B5804            mov ebx,[eax+0x4]
00031949  89D0              mov eax,edx
0003194B  29D8              sub eax,ebx
0003194D  BACDCCCCCC        mov edx,0xcccccccd
00031952  F7E2              mul edx
00031954  89D0              mov eax,edx
00031956  C1E806            shr eax,byte 0x6
00031959  8D5001            lea edx,[eax+0x1]
0003195C  89D0              mov eax,edx
0003195E  C1E002            shl eax,byte 0x2
00031961  01D0              add eax,edx
00031963  C1E004            shl eax,byte 0x4
00031966  8D1401            lea edx,[ecx+eax]
00031969  8B4508            mov eax,[ebp+0x8]
0003196C  89500C            mov [eax+0xc],edx
0003196F  E9E2010000        jmp 0x31b56
00031974  8B4508            mov eax,[ebp+0x8]
00031977  8B500C            mov edx,[eax+0xc]
0003197A  8B4508            mov eax,[ebp+0x8]
0003197D  8B4804            mov ecx,[eax+0x4]
00031980  8B4508            mov eax,[ebp+0x8]
00031983  8B4008            mov eax,[eax+0x8]
00031986  01C8              add eax,ecx
00031988  83E804            sub eax,byte +0x4
0003198B  39C2              cmp edx,eax
0003198D  0F83C6010000      jnc near 0x31b59
00031993  C745F400000000    mov dword [ebp-0xc],0x0
0003199A  EB23              jmp short 0x319bf
0003199C  8B45F4            mov eax,[ebp-0xc]
0003199F  01C0              add eax,eax
000319A1  89C2              mov edx,eax
000319A3  8B45EC            mov eax,[ebp-0x14]
000319A6  01D0              add eax,edx
000319A8  C60000            mov byte [eax],0x0
000319AB  8B45F4            mov eax,[ebp-0xc]
000319AE  01C0              add eax,eax
000319B0  8D5001            lea edx,[eax+0x1]
000319B3  8B45EC            mov eax,[ebp-0x14]
000319B6  01D0              add eax,edx
000319B8  C60007            mov byte [eax],0x7
000319BB  8345F401          add dword [ebp-0xc],byte +0x1
000319BF  837DF403          cmp dword [ebp-0xc],byte +0x3
000319C3  7ED7              jng 0x3199c
000319C5  8B4508            mov eax,[ebp+0x8]
000319C8  8B400C            mov eax,[eax+0xc]
000319CB  8D5004            lea edx,[eax+0x4]
000319CE  8B4508            mov eax,[ebp+0x8]
000319D1  89500C            mov [eax+0xc],edx
000319D4  E980010000        jmp 0x31b59
000319D9  8B4508            mov eax,[ebp+0x8]
000319DC  8B580C            mov ebx,[eax+0xc]
000319DF  BACDCCCCCC        mov edx,0xcccccccd
000319E4  89D8              mov eax,ebx
000319E6  F7E2              mul edx
000319E8  C1EA06            shr edx,byte 0x6
000319EB  89D0              mov eax,edx
000319ED  C1E002            shl eax,byte 0x2
000319F0  01D0              add eax,edx
000319F2  C1E004            shl eax,byte 0x4
000319F5  29C3              sub ebx,eax
000319F7  89DA              mov edx,ebx
000319F9  85D2              test edx,edx
000319FB  7570              jnz 0x31a6d
000319FD  8B4508            mov eax,[ebp+0x8]
00031A00  8B400C            mov eax,[eax+0xc]
00031A03  83F84F            cmp eax,byte +0x4f
00031A06  7665              jna 0x31a6d
00031A08  8B4508            mov eax,[ebp+0x8]
00031A0B  8B400C            mov eax,[eax+0xc]
00031A0E  BACDCCCCCC        mov edx,0xcccccccd
00031A13  F7E2              mul edx
00031A15  89D0              mov eax,edx
00031A17  C1E806            shr eax,byte 0x6
00031A1A  83E801            sub eax,byte +0x1
00031A1D  8B8481600F0000    mov eax,[ecx+eax*4+0xf60]
00031A24  83F84F            cmp eax,byte +0x4f
00031A27  7444              jz 0x31a6d
00031A29  8B4508            mov eax,[ebp+0x8]
00031A2C  8B400C            mov eax,[eax+0xc]
00031A2F  BACDCCCCCC        mov edx,0xcccccccd
00031A34  F7E2              mul edx
00031A36  89D0              mov eax,edx
00031A38  C1E806            shr eax,byte 0x6
00031A3B  83E801            sub eax,byte +0x1
00031A3E  8B9481600F0000    mov edx,[ecx+eax*4+0xf60]
00031A45  8B4508            mov eax,[ebp+0x8]
00031A48  89500C            mov [eax+0xc],edx
00031A4B  8B4508            mov eax,[ebp+0x8]
00031A4E  8B400C            mov eax,[eax+0xc]
00031A51  BACDCCCCCC        mov edx,0xcccccccd
00031A56  F7E2              mul edx
00031A58  89D0              mov eax,edx
00031A5A  C1E806            shr eax,byte 0x6
00031A5D  C78481600F00004F  mov dword [ecx+eax*4+0xf60],0x4f
         -000000
00031A68  E9A0000000        jmp 0x31b0d
00031A6D  8B4508            mov eax,[ebp+0x8]
00031A70  8B500C            mov edx,[eax+0xc]
00031A73  8B4508            mov eax,[ebp+0x8]
00031A76  8B4004            mov eax,[eax+0x4]
00031A79  83C004            add eax,byte +0x4
00031A7C  39C2              cmp edx,eax
00031A7E  765A              jna 0x31ada
00031A80  8B45EC            mov eax,[ebp-0x14]
00031A83  83E802            sub eax,byte +0x2
00031A86  0FB600            movzx eax,byte [eax]
00031A89  84C0              test al,al
00031A8B  754D              jnz 0x31ada
00031A8D  8B4508            mov eax,[ebp+0x8]
00031A90  8B400C            mov eax,[eax+0xc]
00031A93  8D50FC            lea edx,[eax-0x4]
00031A96  8B4508            mov eax,[ebp+0x8]
00031A99  89500C            mov [eax+0xc],edx
00031A9C  C745F000000000    mov dword [ebp-0x10],0x0
00031AA3  EB2D              jmp short 0x31ad2
00031AA5  8B45F0            mov eax,[ebp-0x10]
00031AA8  01C0              add eax,eax
00031AAA  89C1              mov ecx,eax
00031AAC  B8FEFFFFFF        mov eax,0xfffffffe
00031AB1  29C8              sub eax,ecx
00031AB3  89C2              mov edx,eax
00031AB5  8B45EC            mov eax,[ebp-0x14]
00031AB8  01D0              add eax,edx
00031ABA  C60020            mov byte [eax],0x20
00031ABD  8B45F0            mov eax,[ebp-0x10]
00031AC0  01C0              add eax,eax
00031AC2  F7D0              not eax
00031AC4  89C2              mov edx,eax
00031AC6  8B45EC            mov eax,[ebp-0x14]
00031AC9  01D0              add eax,edx
00031ACB  C60007            mov byte [eax],0x7
00031ACE  8345F001          add dword [ebp-0x10],byte +0x1
00031AD2  837DF003          cmp dword [ebp-0x10],byte +0x3
00031AD6  7ECD              jng 0x31aa5
00031AD8  EB33              jmp short 0x31b0d
00031ADA  8B4508            mov eax,[ebp+0x8]
00031ADD  8B500C            mov edx,[eax+0xc]
00031AE0  8B4508            mov eax,[ebp+0x8]
00031AE3  8B4004            mov eax,[eax+0x4]
00031AE6  39C2              cmp edx,eax
00031AE8  7672              jna 0x31b5c
00031AEA  8B4508            mov eax,[ebp+0x8]
00031AED  8B400C            mov eax,[eax+0xc]
00031AF0  8D50FF            lea edx,[eax-0x1]
00031AF3  8B4508            mov eax,[ebp+0x8]
00031AF6  89500C            mov [eax+0xc],edx
00031AF9  8B45EC            mov eax,[ebp-0x14]
00031AFC  83E802            sub eax,byte +0x2
00031AFF  C60020            mov byte [eax],0x20
00031B02  8B45EC            mov eax,[ebp-0x14]
00031B05  83E801            sub eax,byte +0x1
00031B08  C60007            mov byte [eax],0x7
00031B0B  EB4F              jmp short 0x31b5c
00031B0D  EB4D              jmp short 0x31b5c
00031B0F  8B4508            mov eax,[ebp+0x8]
00031B12  8B500C            mov edx,[eax+0xc]
00031B15  8B4508            mov eax,[ebp+0x8]
00031B18  8B4804            mov ecx,[eax+0x4]
00031B1B  8B4508            mov eax,[ebp+0x8]
00031B1E  8B4008            mov eax,[eax+0x8]
00031B21  01C8              add eax,ecx
00031B23  83E801            sub eax,byte +0x1
00031B26  39C2              cmp edx,eax
00031B28  7335              jnc 0x31b5f
00031B2A  8B45EC            mov eax,[ebp-0x14]
00031B2D  8D5001            lea edx,[eax+0x1]
00031B30  8955EC            mov [ebp-0x14],edx
00031B33  0FB655E4          movzx edx,byte [ebp-0x1c]
00031B37  8810              mov [eax],dl
00031B39  8B45EC            mov eax,[ebp-0x14]
00031B3C  8D5001            lea edx,[eax+0x1]
00031B3F  8955EC            mov [ebp-0x14],edx
00031B42  C60007            mov byte [eax],0x7
00031B45  8B4508            mov eax,[ebp+0x8]
00031B48  8B400C            mov eax,[eax+0xc]
00031B4B  8D5001            lea edx,[eax+0x1]
00031B4E  8B4508            mov eax,[ebp+0x8]
00031B51  89500C            mov [eax+0xc],edx
00031B54  EB09              jmp short 0x31b5f
00031B56  90                nop
00031B57  EB19              jmp short 0x31b72
00031B59  90                nop
00031B5A  EB16              jmp short 0x31b72
00031B5C  90                nop
00031B5D  EB13              jmp short 0x31b72
00031B5F  90                nop
00031B60  EB10              jmp short 0x31b72
00031B62  83EC08            sub esp,byte +0x8
00031B65  6AFF              push byte -0x1
00031B67  FF7508            push dword [ebp+0x8]
00031B6A  E8BB010000        call 0x31d2a
00031B6F  83C410            add esp,byte +0x10
00031B72  8B4508            mov eax,[ebp+0x8]
00031B75  8B500C            mov edx,[eax+0xc]
00031B78  8B4508            mov eax,[ebp+0x8]
00031B7B  8B00              mov eax,[eax]
00031B7D  05D0070000        add eax,0x7d0
00031B82  39C2              cmp edx,eax
00031B84  73DC              jnc 0x31b62
00031B86  83EC0C            sub esp,byte +0xc
00031B89  FF7508            push dword [ebp+0x8]
00031B8C  E809000000        call 0x31b9a
00031B91  83C410            add esp,byte +0x10
00031B94  90                nop
00031B95  8B5DFC            mov ebx,[ebp-0x4]
00031B98  C9                leave
00031B99  C3                ret
00031B9A  55                push ebp
00031B9B  89E5              mov ebp,esp
00031B9D  83EC08            sub esp,byte +0x8
00031BA0  E80AEFFFFF        call 0x30aaf
00031BA5  055B340000        add eax,0x345b
00031BAA  8B4508            mov eax,[ebp+0x8]
00031BAD  8B400C            mov eax,[eax+0xc]
00031BB0  83EC0C            sub esp,byte +0xc
00031BB3  50                push eax
00031BB4  E817000000        call 0x31bd0
00031BB9  83C410            add esp,byte +0x10
00031BBC  8B4508            mov eax,[ebp+0x8]
00031BBF  8B00              mov eax,[eax]
00031BC1  83EC0C            sub esp,byte +0xc
00031BC4  50                push eax
00031BC5  E87D000000        call 0x31c47
00031BCA  83C410            add esp,byte +0x10
00031BCD  90                nop
00031BCE  C9                leave
00031BCF  C3                ret
00031BD0  55                push ebp
00031BD1  89E5              mov ebp,esp
00031BD3  53                push ebx
00031BD4  83EC04            sub esp,byte +0x4
00031BD7  E8FFEBFFFF        call 0x307db
00031BDC  81C324340000      add ebx,0x3424
00031BE2  E8300C0000        call 0x32817
00031BE7  83EC08            sub esp,byte +0x8
00031BEA  6A0E              push byte +0xe
00031BEC  68D4030000        push dword 0x3d4
00031BF1  E8B70B0000        call 0x327ad
00031BF6  83C410            add esp,byte +0x10
00031BF9  8B4508            mov eax,[ebp+0x8]
00031BFC  C1E808            shr eax,byte 0x8
00031BFF  0FB6C0            movzx eax,al
00031C02  83EC08            sub esp,byte +0x8
00031C05  50                push eax
00031C06  68D5030000        push dword 0x3d5
00031C0B  E89D0B0000        call 0x327ad
00031C10  83C410            add esp,byte +0x10
00031C13  83EC08            sub esp,byte +0x8
00031C16  6A0F              push byte +0xf
00031C18  68D4030000        push dword 0x3d4
00031C1D  E88B0B0000        call 0x327ad
00031C22  83C410            add esp,byte +0x10
00031C25  8B4508            mov eax,[ebp+0x8]
00031C28  0FB6C0            movzx eax,al
00031C2B  83EC08            sub esp,byte +0x8
00031C2E  50                push eax
00031C2F  68D5030000        push dword 0x3d5
00031C34  E8740B0000        call 0x327ad
00031C39  83C410            add esp,byte +0x10
00031C3C  E8D80B0000        call 0x32819
00031C41  90                nop
00031C42  8B5DFC            mov ebx,[ebp-0x4]
00031C45  C9                leave
00031C46  C3                ret
00031C47  55                push ebp
00031C48  89E5              mov ebp,esp
00031C4A  53                push ebx
00031C4B  83EC04            sub esp,byte +0x4
00031C4E  E888EBFFFF        call 0x307db
00031C53  81C3AD330000      add ebx,0x33ad
00031C59  E8B90B0000        call 0x32817
00031C5E  83EC08            sub esp,byte +0x8
00031C61  6A0C              push byte +0xc
00031C63  68D4030000        push dword 0x3d4
00031C68  E8400B0000        call 0x327ad
00031C6D  83C410            add esp,byte +0x10
00031C70  8B4508            mov eax,[ebp+0x8]
00031C73  C1E808            shr eax,byte 0x8
00031C76  0FB6C0            movzx eax,al
00031C79  83EC08            sub esp,byte +0x8
00031C7C  50                push eax
00031C7D  68D5030000        push dword 0x3d5
00031C82  E8260B0000        call 0x327ad
00031C87  83C410            add esp,byte +0x10
00031C8A  83EC08            sub esp,byte +0x8
00031C8D  6A0D              push byte +0xd
00031C8F  68D4030000        push dword 0x3d4
00031C94  E8140B0000        call 0x327ad
00031C99  83C410            add esp,byte +0x10
00031C9C  8B4508            mov eax,[ebp+0x8]
00031C9F  0FB6C0            movzx eax,al
00031CA2  83EC08            sub esp,byte +0x8
00031CA5  50                push eax
00031CA6  68D5030000        push dword 0x3d5
00031CAB  E8FD0A0000        call 0x327ad
00031CB0  83C410            add esp,byte +0x10
00031CB3  E8610B0000        call 0x32819
00031CB8  90                nop
00031CB9  8B5DFC            mov ebx,[ebp-0x4]
00031CBC  C9                leave
00031CBD  C3                ret
00031CBE  55                push ebp
00031CBF  89E5              mov ebp,esp
00031CC1  53                push ebx
00031CC2  83EC04            sub esp,byte +0x4
00031CC5  E811EBFFFF        call 0x307db
00031CCA  81C336330000      add ebx,0x3336
00031CD0  837D0800          cmp dword [ebp+0x8],byte +0x0
00031CD4  784E              js 0x31d24
00031CD6  837D0802          cmp dword [ebp+0x8],byte +0x2
00031CDA  7F48              jg 0x31d24
00031CDC  C7C06C6F0300      mov eax,0x36f6c
00031CE2  8B5508            mov edx,[ebp+0x8]
00031CE5  8910              mov [eax],edx
00031CE7  C7C2A07D0500      mov edx,0x57da0
00031CED  8B4508            mov eax,[ebp+0x8]
00031CF0  C1E004            shl eax,byte 0x4
00031CF3  01D0              add eax,edx
00031CF5  83C00C            add eax,byte +0xc
00031CF8  8B00              mov eax,[eax]
00031CFA  83EC0C            sub esp,byte +0xc
00031CFD  50                push eax
00031CFE  E8CDFEFFFF        call 0x31bd0
00031D03  83C410            add esp,byte +0x10
00031D06  C7C2A07D0500      mov edx,0x57da0
00031D0C  8B4508            mov eax,[ebp+0x8]
00031D0F  C1E004            shl eax,byte 0x4
00031D12  01D0              add eax,edx
00031D14  8B00              mov eax,[eax]
00031D16  83EC0C            sub esp,byte +0xc
00031D19  50                push eax
00031D1A  E828FFFFFF        call 0x31c47
00031D1F  83C410            add esp,byte +0x10
00031D22  EB01              jmp short 0x31d25
00031D24  90                nop
00031D25  8B5DFC            mov ebx,[ebp-0x4]
00031D28  C9                leave
00031D29  C3                ret
00031D2A  55                push ebp
00031D2B  89E5              mov ebp,esp
00031D2D  83EC08            sub esp,byte +0x8
00031D30  E87AEDFFFF        call 0x30aaf
00031D35  05CB320000        add eax,0x32cb
00031D3A  837D0C01          cmp dword [ebp+0xc],byte +0x1
00031D3E  751E              jnz 0x31d5e
00031D40  8B4508            mov eax,[ebp+0x8]
00031D43  8B10              mov edx,[eax]
00031D45  8B4508            mov eax,[ebp+0x8]
00031D48  8B4004            mov eax,[eax+0x4]
00031D4B  39C2              cmp edx,eax
00031D4D  763F              jna 0x31d8e
00031D4F  8B4508            mov eax,[ebp+0x8]
00031D52  8B00              mov eax,[eax]
00031D54  8D50B0            lea edx,[eax-0x50]
00031D57  8B4508            mov eax,[ebp+0x8]
00031D5A  8910              mov [eax],edx
00031D5C  EB30              jmp short 0x31d8e
00031D5E  837D0CFF          cmp dword [ebp+0xc],byte -0x1
00031D62  752A              jnz 0x31d8e
00031D64  8B4508            mov eax,[ebp+0x8]
00031D67  8B00              mov eax,[eax]
00031D69  8D90D0070000      lea edx,[eax+0x7d0]
00031D6F  8B4508            mov eax,[ebp+0x8]
00031D72  8B4804            mov ecx,[eax+0x4]
00031D75  8B4508            mov eax,[ebp+0x8]
00031D78  8B4008            mov eax,[eax+0x8]
00031D7B  01C8              add eax,ecx
00031D7D  39C2              cmp edx,eax
00031D7F  730D              jnc 0x31d8e
00031D81  8B4508            mov eax,[ebp+0x8]
00031D84  8B00              mov eax,[eax]
00031D86  8D5050            lea edx,[eax+0x50]
00031D89  8B4508            mov eax,[ebp+0x8]
00031D8C  8910              mov [eax],edx
00031D8E  8B4508            mov eax,[ebp+0x8]
00031D91  8B00              mov eax,[eax]
00031D93  83EC0C            sub esp,byte +0xc
00031D96  50                push eax
00031D97  E8ABFEFFFF        call 0x31c47
00031D9C  83C410            add esp,byte +0x10
00031D9F  8B4508            mov eax,[ebp+0x8]
00031DA2  8B400C            mov eax,[eax+0xc]
00031DA5  83EC0C            sub esp,byte +0xc
00031DA8  50                push eax
00031DA9  E822FEFFFF        call 0x31bd0
00031DAE  83C410            add esp,byte +0x10
00031DB1  90                nop
00031DB2  C9                leave
00031DB3  C3                ret
00031DB4  55                push ebp
00031DB5  89E5              mov ebp,esp
00031DB7  83EC10            sub esp,byte +0x10
00031DBA  E88D000000        call 0x31e4c
00031DBF  81C141320000      add ecx,0x3241
00031DC5  8B4508            mov eax,[ebp+0x8]
00031DC8  8B4004            mov eax,[eax+0x4]
00031DCB  BACDCCCCCC        mov edx,0xcccccccd
00031DD0  F7E2              mul edx
00031DD2  89D0              mov eax,edx
00031DD4  C1E806            shr eax,byte 0x6
00031DD7  8945FC            mov [ebp-0x4],eax
00031DDA  EB12              jmp short 0x31dee
00031DDC  8B45FC            mov eax,[ebp-0x4]
00031DDF  C78481600F00004F  mov dword [ecx+eax*4+0xf60],0x4f
         -000000
00031DEA  8345FC01          add dword [ebp-0x4],byte +0x1
00031DEE  8B4508            mov eax,[ebp+0x8]
00031DF1  8B400C            mov eax,[eax+0xc]
00031DF4  BACDCCCCCC        mov edx,0xcccccccd
00031DF9  F7E2              mul edx
00031DFB  89D0              mov eax,edx
00031DFD  C1E806            shr eax,byte 0x6
00031E00  3945FC            cmp [ebp-0x4],eax
00031E03  72D7              jc 0x31ddc
00031E05  EB31              jmp short 0x31e38
00031E07  8B4508            mov eax,[ebp+0x8]
00031E0A  8B400C            mov eax,[eax+0xc]
00031E0D  0500C00500        add eax,0x5c000
00031E12  01C0              add eax,eax
00031E14  8945F8            mov [ebp-0x8],eax
00031E17  8B45F8            mov eax,[ebp-0x8]
00031E1A  83E802            sub eax,byte +0x2
00031E1D  C60020            mov byte [eax],0x20
00031E20  8B45F8            mov eax,[ebp-0x8]
00031E23  83E801            sub eax,byte +0x1
00031E26  C60007            mov byte [eax],0x7
00031E29  8B4508            mov eax,[ebp+0x8]
00031E2C  8B400C            mov eax,[eax+0xc]
00031E2F  8D50FF            lea edx,[eax-0x1]
00031E32  8B4508            mov eax,[ebp+0x8]
00031E35  89500C            mov [eax+0xc],edx
00031E38  8B4508            mov eax,[ebp+0x8]
00031E3B  8B500C            mov edx,[eax+0xc]
00031E3E  8B4508            mov eax,[ebp+0x8]
00031E41  8B4004            mov eax,[eax+0x4]
00031E44  39C2              cmp edx,eax
00031E46  77BF              ja 0x31e07
00031E48  90                nop
00031E49  90                nop
00031E4A  C9                leave
00031E4B  C3                ret
00031E4C  8B0C24            mov ecx,[esp]
00031E4F  C3                ret
00031E50  55                push ebp
00031E51  89E5              mov ebp,esp
00031E53  53                push ebx
00031E54  83EC14            sub esp,byte +0x14
00031E57  E87FE9FFFF        call 0x307db
00031E5C  81C3A4310000      add ebx,0x31a4
00031E62  83EC08            sub esp,byte +0x8
00031E65  6A11              push byte +0x11
00031E67  6A20              push byte +0x20
00031E69  E83F090000        call 0x327ad
00031E6E  83C410            add esp,byte +0x10
00031E71  83EC08            sub esp,byte +0x8
00031E74  6A11              push byte +0x11
00031E76  68A0000000        push dword 0xa0
00031E7B  E82D090000        call 0x327ad
00031E80  83C410            add esp,byte +0x10
00031E83  83EC08            sub esp,byte +0x8
00031E86  6A20              push byte +0x20
00031E88  6A21              push byte +0x21
00031E8A  E81E090000        call 0x327ad
00031E8F  83C410            add esp,byte +0x10
00031E92  83EC08            sub esp,byte +0x8
00031E95  6A28              push byte +0x28
00031E97  68A1000000        push dword 0xa1
00031E9C  E80C090000        call 0x327ad
00031EA1  83C410            add esp,byte +0x10
00031EA4  83EC08            sub esp,byte +0x8
00031EA7  6A04              push byte +0x4
00031EA9  6A21              push byte +0x21
00031EAB  E8FD080000        call 0x327ad
00031EB0  83C410            add esp,byte +0x10
00031EB3  83EC08            sub esp,byte +0x8
00031EB6  6A02              push byte +0x2
00031EB8  68A1000000        push dword 0xa1
00031EBD  E8EB080000        call 0x327ad
00031EC2  83C410            add esp,byte +0x10
00031EC5  83EC08            sub esp,byte +0x8
00031EC8  6A01              push byte +0x1
00031ECA  6A21              push byte +0x21
00031ECC  E8DC080000        call 0x327ad
00031ED1  83C410            add esp,byte +0x10
00031ED4  83EC08            sub esp,byte +0x8
00031ED7  6A01              push byte +0x1
00031ED9  68A1000000        push dword 0xa1
00031EDE  E8CA080000        call 0x327ad
00031EE3  83C410            add esp,byte +0x10
00031EE6  83EC08            sub esp,byte +0x8
00031EE9  68FF000000        push dword 0xff
00031EEE  6A21              push byte +0x21
00031EF0  E8B8080000        call 0x327ad
00031EF5  83C410            add esp,byte +0x10
00031EF8  83EC08            sub esp,byte +0x8
00031EFB  68FF000000        push dword 0xff
00031F00  68A1000000        push dword 0xa1
00031F05  E8A3080000        call 0x327ad
00031F0A  83C410            add esp,byte +0x10
00031F0D  C745F400000000    mov dword [ebp-0xc],0x0
00031F14  EB16              jmp short 0x31f2c
00031F16  C7C0E07D0500      mov eax,0x57de0
00031F1C  8B55F4            mov edx,[ebp-0xc]
00031F1F  8D8B39CFFFFF      lea ecx,[ebx-0x30c7]
00031F25  890C90            mov [eax+edx*4],ecx
00031F28  8345F401          add dword [ebp-0xc],byte +0x1
00031F2C  837DF40F          cmp dword [ebp-0xc],byte +0xf
00031F30  7EE4              jng 0x31f16
00031F32  90                nop
00031F33  90                nop
00031F34  8B5DFC            mov ebx,[ebp-0x4]
00031F37  C9                leave
00031F38  C3                ret
00031F39  55                push ebp
00031F3A  89E5              mov ebp,esp
00031F3C  53                push ebx
00031F3D  83EC04            sub esp,byte +0x4
00031F40  E896E8FFFF        call 0x307db
00031F45  81C3BB300000      add ebx,0x30bb
00031F4B  83EC0C            sub esp,byte +0xc
00031F4E  8D8360E1FFFF      lea eax,[ebx-0x1ea0]
00031F54  50                push eax
00031F55  E8D6070000        call 0x32730
00031F5A  83C410            add esp,byte +0x10
00031F5D  83EC0C            sub esp,byte +0xc
00031F60  FF7508            push dword [ebp+0x8]
00031F63  E868090000        call 0x328d0
00031F68  83C410            add esp,byte +0x10
00031F6B  83EC0C            sub esp,byte +0xc
00031F6E  8D836FE1FFFF      lea eax,[ebx-0x1e91]
00031F74  50                push eax
00031F75  E8B6070000        call 0x32730
00031F7A  83C410            add esp,byte +0x10
00031F7D  90                nop
00031F7E  8B5DFC            mov ebx,[ebp-0x4]
00031F81  C9                leave
00031F82  C3                ret
00031F83  55                push ebp
00031F84  89E5              mov ebp,esp
00031F86  53                push ebx
00031F87  83EC04            sub esp,byte +0x4
00031F8A  E84CE8FFFF        call 0x307db
00031F8F  81C371300000      add ebx,0x3071
00031F95  83EC0C            sub esp,byte +0xc
00031F98  FF7508            push dword [ebp+0x8]
00031F9B  E823080000        call 0x327c3
00031FA0  83C410            add esp,byte +0x10
00031FA3  C7C0E07D0500      mov eax,0x57de0
00031FA9  8B5508            mov edx,[ebp+0x8]
00031FAC  8B4D0C            mov ecx,[ebp+0xc]
00031FAF  890C90            mov [eax+edx*4],ecx
00031FB2  90                nop
00031FB3  8B5DFC            mov ebx,[ebp-0x4]
00031FB6  C9                leave
00031FB7  C3                ret
00031FB8  55                push ebp
00031FB9  89E5              mov ebp,esp
00031FBB  53                push ebx
00031FBC  83EC14            sub esp,byte +0x14
00031FBF  E817E8FFFF        call 0x307db
00031FC4  81C33C300000      add ebx,0x303c
00031FCA  E881FEFFFF        call 0x31e50
00031FCF  6A00              push byte +0x0
00031FD1  C7C03B060300      mov eax,0x3063b
00031FD7  50                push eax
00031FD8  688E000000        push dword 0x8e
00031FDD  6A00              push byte +0x0
00031FDF  E8E8030000        call 0x323cc
00031FE4  83C410            add esp,byte +0x10
00031FE7  6A00              push byte +0x0
00031FE9  C7C041060300      mov eax,0x30641
00031FEF  50                push eax
00031FF0  688E000000        push dword 0x8e
00031FF5  6A01              push byte +0x1
00031FF7  E8D0030000        call 0x323cc
00031FFC  83C410            add esp,byte +0x10
00031FFF  6A00              push byte +0x0
00032001  C7C047060300      mov eax,0x30647
00032007  50                push eax
00032008  688E000000        push dword 0x8e
0003200D  6A02              push byte +0x2
0003200F  E8B8030000        call 0x323cc
00032014  83C410            add esp,byte +0x10
00032017  6A03              push byte +0x3
00032019  C7C04D060300      mov eax,0x3064d
0003201F  50                push eax
00032020  688E000000        push dword 0x8e
00032025  6A03              push byte +0x3
00032027  E8A0030000        call 0x323cc
0003202C  83C410            add esp,byte +0x10
0003202F  6A03              push byte +0x3
00032031  C7C053060300      mov eax,0x30653
00032037  50                push eax
00032038  688E000000        push dword 0x8e
0003203D  6A04              push byte +0x4
0003203F  E888030000        call 0x323cc
00032044  83C410            add esp,byte +0x10
00032047  6A00              push byte +0x0
00032049  C7C059060300      mov eax,0x30659
0003204F  50                push eax
00032050  688E000000        push dword 0x8e
00032055  6A05              push byte +0x5
00032057  E870030000        call 0x323cc
0003205C  83C410            add esp,byte +0x10
0003205F  6A00              push byte +0x0
00032061  C7C05F060300      mov eax,0x3065f
00032067  50                push eax
00032068  688E000000        push dword 0x8e
0003206D  6A06              push byte +0x6
0003206F  E858030000        call 0x323cc
00032074  83C410            add esp,byte +0x10
00032077  6A00              push byte +0x0
00032079  C7C065060300      mov eax,0x30665
0003207F  50                push eax
00032080  688E000000        push dword 0x8e
00032085  6A07              push byte +0x7
00032087  E840030000        call 0x323cc
0003208C  83C410            add esp,byte +0x10
0003208F  6A00              push byte +0x0
00032091  C7C06B060300      mov eax,0x3066b
00032097  50                push eax
00032098  688E000000        push dword 0x8e
0003209D  6A08              push byte +0x8
0003209F  E828030000        call 0x323cc
000320A4  83C410            add esp,byte +0x10
000320A7  6A00              push byte +0x0
000320A9  C7C06F060300      mov eax,0x3066f
000320AF  50                push eax
000320B0  688E000000        push dword 0x8e
000320B5  6A09              push byte +0x9
000320B7  E810030000        call 0x323cc
000320BC  83C410            add esp,byte +0x10
000320BF  6A00              push byte +0x0
000320C1  C7C075060300      mov eax,0x30675
000320C7  50                push eax
000320C8  688E000000        push dword 0x8e
000320CD  6A0A              push byte +0xa
000320CF  E8F8020000        call 0x323cc
000320D4  83C410            add esp,byte +0x10
000320D7  6A00              push byte +0x0
000320D9  C7C079060300      mov eax,0x30679
000320DF  50                push eax
000320E0  688E000000        push dword 0x8e
000320E5  6A0B              push byte +0xb
000320E7  E8E0020000        call 0x323cc
000320EC  83C410            add esp,byte +0x10
000320EF  6A00              push byte +0x0
000320F1  C7C07D060300      mov eax,0x3067d
000320F7  50                push eax
000320F8  688E000000        push dword 0x8e
000320FD  6A0C              push byte +0xc
000320FF  E8C8020000        call 0x323cc
00032104  83C410            add esp,byte +0x10
00032107  6A00              push byte +0x0
00032109  C7C081060300      mov eax,0x30681
0003210F  50                push eax
00032110  688E000000        push dword 0x8e
00032115  6A0D              push byte +0xd
00032117  E8B0020000        call 0x323cc
0003211C  83C410            add esp,byte +0x10
0003211F  6A00              push byte +0x0
00032121  C7C085060300      mov eax,0x30685
00032127  50                push eax
00032128  688E000000        push dword 0x8e
0003212D  6A0E              push byte +0xe
0003212F  E898020000        call 0x323cc
00032134  83C410            add esp,byte +0x10
00032137  6A00              push byte +0x0
00032139  C7C089060300      mov eax,0x30689
0003213F  50                push eax
00032140  688E000000        push dword 0x8e
00032145  6A10              push byte +0x10
00032147  E880020000        call 0x323cc
0003214C  83C410            add esp,byte +0x10
0003214F  6A00              push byte +0x0
00032151  C7C040040300      mov eax,0x30440
00032157  50                push eax
00032158  688E000000        push dword 0x8e
0003215D  6A20              push byte +0x20
0003215F  E868020000        call 0x323cc
00032164  83C410            add esp,byte +0x10
00032167  6A00              push byte +0x0
00032169  C7C070040300      mov eax,0x30470
0003216F  50                push eax
00032170  688E000000        push dword 0x8e
00032175  6A21              push byte +0x21
00032177  E850020000        call 0x323cc
0003217C  83C410            add esp,byte +0x10
0003217F  6A00              push byte +0x0
00032181  C7C0A0040300      mov eax,0x304a0
00032187  50                push eax
00032188  688E000000        push dword 0x8e
0003218D  6A22              push byte +0x22
0003218F  E838020000        call 0x323cc
00032194  83C410            add esp,byte +0x10
00032197  6A00              push byte +0x0
00032199  C7C0D0040300      mov eax,0x304d0
0003219F  50                push eax
000321A0  688E000000        push dword 0x8e
000321A5  6A23              push byte +0x23
000321A7  E820020000        call 0x323cc
000321AC  83C410            add esp,byte +0x10
000321AF  6A00              push byte +0x0
000321B1  C7C000050300      mov eax,0x30500
000321B7  50                push eax
000321B8  688E000000        push dword 0x8e
000321BD  6A24              push byte +0x24
000321BF  E808020000        call 0x323cc
000321C4  83C410            add esp,byte +0x10
000321C7  6A00              push byte +0x0
000321C9  C7C030050300      mov eax,0x30530
000321CF  50                push eax
000321D0  688E000000        push dword 0x8e
000321D5  6A25              push byte +0x25
000321D7  E8F0010000        call 0x323cc
000321DC  83C410            add esp,byte +0x10
000321DF  6A00              push byte +0x0
000321E1  C7C060050300      mov eax,0x30560
000321E7  50                push eax
000321E8  688E000000        push dword 0x8e
000321ED  6A26              push byte +0x26
000321EF  E8D8010000        call 0x323cc
000321F4  83C410            add esp,byte +0x10
000321F7  6A00              push byte +0x0
000321F9  C7C090050300      mov eax,0x30590
000321FF  50                push eax
00032200  688E000000        push dword 0x8e
00032205  6A27              push byte +0x27
00032207  E8C0010000        call 0x323cc
0003220C  83C410            add esp,byte +0x10
0003220F  6A00              push byte +0x0
00032211  C7C0C0050300      mov eax,0x305c0
00032217  50                push eax
00032218  688E000000        push dword 0x8e
0003221D  6A28              push byte +0x28
0003221F  E8A8010000        call 0x323cc
00032224  83C410            add esp,byte +0x10
00032227  6A00              push byte +0x0
00032229  C7C0D0050300      mov eax,0x305d0
0003222F  50                push eax
00032230  688E000000        push dword 0x8e
00032235  6A29              push byte +0x29
00032237  E890010000        call 0x323cc
0003223C  83C410            add esp,byte +0x10
0003223F  6A00              push byte +0x0
00032241  C7C0E0050300      mov eax,0x305e0
00032247  50                push eax
00032248  688E000000        push dword 0x8e
0003224D  6A2A              push byte +0x2a
0003224F  E878010000        call 0x323cc
00032254  83C410            add esp,byte +0x10
00032257  6A00              push byte +0x0
00032259  C7C0F0050300      mov eax,0x305f0
0003225F  50                push eax
00032260  688E000000        push dword 0x8e
00032265  6A2B              push byte +0x2b
00032267  E860010000        call 0x323cc
0003226C  83C410            add esp,byte +0x10
0003226F  6A00              push byte +0x0
00032271  C7C000060300      mov eax,0x30600
00032277  50                push eax
00032278  688E000000        push dword 0x8e
0003227D  6A2C              push byte +0x2c
0003227F  E848010000        call 0x323cc
00032284  83C410            add esp,byte +0x10
00032287  6A00              push byte +0x0
00032289  C7C010060300      mov eax,0x30610
0003228F  50                push eax
00032290  688E000000        push dword 0x8e
00032295  6A2D              push byte +0x2d
00032297  E830010000        call 0x323cc
0003229C  83C410            add esp,byte +0x10
0003229F  6A00              push byte +0x0
000322A1  C7C020060300      mov eax,0x30620
000322A7  50                push eax
000322A8  688E000000        push dword 0x8e
000322AD  6A2E              push byte +0x2e
000322AF  E818010000        call 0x323cc
000322B4  83C410            add esp,byte +0x10
000322B7  6A00              push byte +0x0
000322B9  C7C030060300      mov eax,0x30630
000322BF  50                push eax
000322C0  688E000000        push dword 0x8e
000322C5  6A2F              push byte +0x2f
000322C7  E800010000        call 0x323cc
000322CC  83C410            add esp,byte +0x10
000322CF  6A03              push byte +0x3
000322D1  C7C0CC060300      mov eax,0x306cc
000322D7  50                push eax
000322D8  688E000000        push dword 0x8e
000322DD  6890000000        push dword 0x90
000322E2  E8E5000000        call 0x323cc
000322E7  83C410            add esp,byte +0x10
000322EA  83EC04            sub esp,byte +0x4
000322ED  6A68              push byte +0x68
000322EF  6A00              push byte +0x0
000322F1  C7C0006F0300      mov eax,0x36f00
000322F7  50                push eax
000322F8  E88C060000        call 0x32989
000322FD  83C410            add esp,byte +0x10
00032300  C7C0006F0300      mov eax,0x36f00
00032306  C7400810000000    mov dword [eax+0x8],0x10
0003230D  83EC0C            sub esp,byte +0xc
00032310  6A10              push byte +0x10
00032312  E837010000        call 0x3244e
00032317  83C410            add esp,byte +0x10
0003231A  89C2              mov edx,eax
0003231C  C7C0006F0300      mov eax,0x36f00
00032322  01D0              add eax,edx
00032324  6889000000        push dword 0x89
00032329  6A67              push byte +0x67
0003232B  50                push eax
0003232C  C7C0C0620300      mov eax,0x362c0
00032332  8D4020            lea eax,[eax+0x20]
00032335  50                push eax
00032336  E86F010000        call 0x324aa
0003233B  83C410            add esp,byte +0x10
0003233E  C7C0006F0300      mov eax,0x36f00
00032344  66C740666800      mov word [eax+0x66],0x68
0003234A  C7C0806F0300      mov eax,0x36f80
00032350  8945F0            mov [ebp-0x10],eax
00032353  66C745EE2800      mov word [ebp-0x12],0x28
00032359  C745F400000000    mov dword [ebp-0xc],0x0
00032360  EB5D              jmp short 0x323bf
00032362  83EC0C            sub esp,byte +0xc
00032365  6A10              push byte +0x10
00032367  E8E2000000        call 0x3244e
0003236C  83C410            add esp,byte +0x10
0003236F  89C2              mov edx,eax
00032371  8B45F4            mov eax,[ebp-0xc]
00032374  6BC078            imul eax,eax,byte +0x78
00032377  8D4840            lea ecx,[eax+0x40]
0003237A  C7C0806F0300      mov eax,0x36f80
00032380  01C8              add eax,ecx
00032382  83C00A            add eax,byte +0xa
00032385  01C2              add edx,eax
00032387  0FB745EE          movzx eax,word [ebp-0x12]
0003238B  66C1E803          shr ax,byte 0x3
0003238F  0FB7C0            movzx eax,ax
00032392  8D0CC500000000    lea ecx,[eax*8+0x0]
00032399  C7C0C0620300      mov eax,0x362c0
0003239F  01C8              add eax,ecx
000323A1  6882000000        push dword 0x82
000323A6  6A0F              push byte +0xf
000323A8  52                push edx
000323A9  50                push eax
000323AA  E8FB000000        call 0x324aa
000323AF  83C410            add esp,byte +0x10
000323B2  8345F078          add dword [ebp-0x10],byte +0x78
000323B6  668345EE08        add word [ebp-0x12],byte +0x8
000323BB  8345F401          add dword [ebp-0xc],byte +0x1
000323BF  837DF403          cmp dword [ebp-0xc],byte +0x3
000323C3  7E9D              jng 0x32362
000323C5  90                nop
000323C6  90                nop
000323C7  8B5DFC            mov ebx,[ebp-0x4]
000323CA  C9                leave
000323CB  C3                ret
000323CC  55                push ebp
000323CD  89E5              mov ebp,esp
000323CF  53                push ebx
000323D0  83EC1C            sub esp,byte +0x1c
000323D3  E8D7E6FFFF        call 0x30aaf
000323D8  05282C0000        add eax,0x2c28
000323DD  8B5D08            mov ebx,[ebp+0x8]
000323E0  8B4D0C            mov ecx,[ebp+0xc]
000323E3  8B5514            mov edx,[ebp+0x14]
000323E6  885DE8            mov [ebp-0x18],bl
000323E9  884DE4            mov [ebp-0x1c],cl
000323EC  8855E0            mov [ebp-0x20],dl
000323EF  0FB655E8          movzx edx,byte [ebp-0x18]
000323F3  C1E203            shl edx,byte 0x3
000323F6  C7C0E0660300      mov eax,0x366e0
000323FC  01D0              add eax,edx
000323FE  8945F8            mov [ebp-0x8],eax
00032401  8B4510            mov eax,[ebp+0x10]
00032404  8945F4            mov [ebp-0xc],eax
00032407  8B45F4            mov eax,[ebp-0xc]
0003240A  89C2              mov edx,eax
0003240C  8B45F8            mov eax,[ebp-0x8]
0003240F  668910            mov [eax],dx
00032412  8B45F8            mov eax,[ebp-0x8]
00032415  66C740020800      mov word [eax+0x2],0x8
0003241B  8B45F8            mov eax,[ebp-0x8]
0003241E  C6400400          mov byte [eax+0x4],0x0
00032422  0FB645E0          movzx eax,byte [ebp-0x20]
00032426  C1E005            shl eax,byte 0x5
00032429  89C2              mov edx,eax
0003242B  0FB645E4          movzx eax,byte [ebp-0x1c]
0003242F  09D0              or eax,edx
00032431  89C2              mov edx,eax
00032433  8B45F8            mov eax,[ebp-0x8]
00032436  885005            mov [eax+0x5],dl
00032439  8B45F4            mov eax,[ebp-0xc]
0003243C  C1E810            shr eax,byte 0x10
0003243F  89C2              mov edx,eax
00032441  8B45F8            mov eax,[ebp-0x8]
00032444  66895006          mov [eax+0x6],dx
00032448  90                nop
00032449  8B5DFC            mov ebx,[ebp-0x4]
0003244C  C9                leave
0003244D  C3                ret
0003244E  55                push ebp
0003244F  89E5              mov ebp,esp
00032451  83EC14            sub esp,byte +0x14
00032454  E856E6FFFF        call 0x30aaf
00032459  05A72B0000        add eax,0x2ba7
0003245E  8B5508            mov edx,[ebp+0x8]
00032461  668955EC          mov [ebp-0x14],dx
00032465  0FB755EC          movzx edx,word [ebp-0x14]
00032469  66C1EA03          shr dx,byte 0x3
0003246D  0FB7D2            movzx edx,dx
00032470  C1E203            shl edx,byte 0x3
00032473  C7C0C0620300      mov eax,0x362c0
00032479  01D0              add eax,edx
0003247B  8945FC            mov [ebp-0x4],eax
0003247E  8B45FC            mov eax,[ebp-0x4]
00032481  0FB64007          movzx eax,byte [eax+0x7]
00032485  0FB6C0            movzx eax,al
00032488  C1E018            shl eax,byte 0x18
0003248B  89C2              mov edx,eax
0003248D  8B45FC            mov eax,[ebp-0x4]
00032490  0FB64004          movzx eax,byte [eax+0x4]
00032494  0FB6C0            movzx eax,al
00032497  C1E010            shl eax,byte 0x10
0003249A  09C2              or edx,eax
0003249C  8B45FC            mov eax,[ebp-0x4]
0003249F  0FB74002          movzx eax,word [eax+0x2]
000324A3  0FB7C0            movzx eax,ax
000324A6  09D0              or eax,edx
000324A8  C9                leave
000324A9  C3                ret
000324AA  55                push ebp
000324AB  89E5              mov ebp,esp
000324AD  83EC04            sub esp,byte +0x4
000324B0  E8FAE5FFFF        call 0x30aaf
000324B5  054B2B0000        add eax,0x2b4b
000324BA  8B4514            mov eax,[ebp+0x14]
000324BD  668945FC          mov [ebp-0x4],ax
000324C1  8B4510            mov eax,[ebp+0x10]
000324C4  89C2              mov edx,eax
000324C6  8B4508            mov eax,[ebp+0x8]
000324C9  668910            mov [eax],dx
000324CC  8B450C            mov eax,[ebp+0xc]
000324CF  89C2              mov edx,eax
000324D1  8B4508            mov eax,[ebp+0x8]
000324D4  66895002          mov [eax+0x2],dx
000324D8  8B450C            mov eax,[ebp+0xc]
000324DB  C1E810            shr eax,byte 0x10
000324DE  89C2              mov edx,eax
000324E0  8B4508            mov eax,[ebp+0x8]
000324E3  885004            mov [eax+0x4],dl
000324E6  0FB745FC          movzx eax,word [ebp-0x4]
000324EA  89C2              mov edx,eax
000324EC  8B4508            mov eax,[ebp+0x8]
000324EF  885005            mov [eax+0x5],dl
000324F2  8B4510            mov eax,[ebp+0x10]
000324F5  C1E810            shr eax,byte 0x10
000324F8  83E00F            and eax,byte +0xf
000324FB  89C2              mov edx,eax
000324FD  0FB745FC          movzx eax,word [ebp-0x4]
00032501  66C1E808          shr ax,byte 0x8
00032505  83E0F0            and eax,byte -0x10
00032508  09C2              or edx,eax
0003250A  8B4508            mov eax,[ebp+0x8]
0003250D  885006            mov [eax+0x6],dl
00032510  8B450C            mov eax,[ebp+0xc]
00032513  C1E818            shr eax,byte 0x18
00032516  89C2              mov edx,eax
00032518  8B4508            mov eax,[ebp+0x8]
0003251B  885007            mov [eax+0x7],dl
0003251E  90                nop
0003251F  C9                leave
00032520  C3                ret
00032521  55                push ebp
00032522  89E5              mov ebp,esp
00032524  57                push edi
00032525  56                push esi
00032526  53                push ebx
00032527  81EC1C050000      sub esp,0x51c
0003252D  E8A9E2FFFF        call 0x307db
00032532  81C3CE2A0000      add ebx,0x2ace
00032538  C745E074000000    mov dword [ebp-0x20],0x74
0003253F  8D85E0FAFFFF      lea eax,[ebp-0x520]
00032545  8D93C0E1FFFF      lea edx,[ebx-0x1e40]
0003254B  B940010000        mov ecx,0x140
00032550  89C7              mov edi,eax
00032552  89D6              mov esi,edx
00032554  F3A5              rep movsd
00032556  C7C0A4620300      mov eax,0x362a4
0003255C  C70000000000      mov dword [eax],0x0
00032562  C745E400000000    mov dword [ebp-0x1c],0x0
00032569  EB16              jmp short 0x32581
0003256B  83EC0C            sub esp,byte +0xc
0003256E  8D8380E1FFFF      lea eax,[ebx-0x1e80]
00032574  50                push eax
00032575  E8B6010000        call 0x32730
0003257A  83C410            add esp,byte +0x10
0003257D  8345E401          add dword [ebp-0x1c],byte +0x1
00032581  817DE48F010000    cmp dword [ebp-0x1c],0x18f
00032588  7EE1              jng 0x3256b
0003258A  C7C0A4620300      mov eax,0x362a4
00032590  C70000000000      mov dword [eax],0x0
00032596  83EC08            sub esp,byte +0x8
00032599  FF75E0            push dword [ebp-0x20]
0003259C  8D8382E1FFFF      lea eax,[ebx-0x1e7e]
000325A2  50                push eax
000325A3  E8C6010000        call 0x3276e
000325A8  83C410            add esp,byte +0x10
000325AB  8D95E0FAFFFF      lea edx,[ebp-0x520]
000325B1  8B4508            mov eax,[ebp+0x8]
000325B4  C1E006            shl eax,byte 0x6
000325B7  01D0              add eax,edx
000325B9  83EC08            sub esp,byte +0x8
000325BC  FF75E0            push dword [ebp-0x20]
000325BF  50                push eax
000325C0  E8A9010000        call 0x3276e
000325C5  83C410            add esp,byte +0x10
000325C8  83EC08            sub esp,byte +0x8
000325CB  FF75E0            push dword [ebp-0x20]
000325CE  8D8392E1FFFF      lea eax,[ebx-0x1e6e]
000325D4  50                push eax
000325D5  E894010000        call 0x3276e
000325DA  83C410            add esp,byte +0x10
000325DD  83EC08            sub esp,byte +0x8
000325E0  FF75E0            push dword [ebp-0x20]
000325E3  8D8395E1FFFF      lea eax,[ebx-0x1e6b]
000325E9  50                push eax
000325EA  E87F010000        call 0x3276e
000325EF  83C410            add esp,byte +0x10
000325F2  83EC0C            sub esp,byte +0xc
000325F5  FF7518            push dword [ebp+0x18]
000325F8  E8D3020000        call 0x328d0
000325FD  83C410            add esp,byte +0x10
00032600  83EC08            sub esp,byte +0x8
00032603  FF75E0            push dword [ebp-0x20]
00032606  8D839DE1FFFF      lea eax,[ebx-0x1e63]
0003260C  50                push eax
0003260D  E85C010000        call 0x3276e
00032612  83C410            add esp,byte +0x10
00032615  83EC0C            sub esp,byte +0xc
00032618  FF7514            push dword [ebp+0x14]
0003261B  E8B0020000        call 0x328d0
00032620  83C410            add esp,byte +0x10
00032623  83EC08            sub esp,byte +0x8
00032626  FF75E0            push dword [ebp-0x20]
00032629  8D83A1E1FFFF      lea eax,[ebx-0x1e5f]
0003262F  50                push eax
00032630  E839010000        call 0x3276e
00032635  83C410            add esp,byte +0x10
00032638  83EC0C            sub esp,byte +0xc
0003263B  FF7510            push dword [ebp+0x10]
0003263E  E88D020000        call 0x328d0
00032643  83C410            add esp,byte +0x10
00032646  837D0CFF          cmp dword [ebp+0xc],byte -0x1
0003264A  7423              jz 0x3266f
0003264C  83EC08            sub esp,byte +0x8
0003264F  FF75E0            push dword [ebp-0x20]
00032652  8D83A6E1FFFF      lea eax,[ebx-0x1e5a]
00032658  50                push eax
00032659  E810010000        call 0x3276e
0003265E  83C410            add esp,byte +0x10
00032661  83EC0C            sub esp,byte +0xc
00032664  FF750C            push dword [ebp+0xc]
00032667  E864020000        call 0x328d0
0003266C  83C410            add esp,byte +0x10
0003266F  90                nop
00032670  8D65F4            lea esp,[ebp-0xc]
00032673  5B                pop ebx
00032674  5E                pop esi
00032675  5F                pop edi
00032676  5D                pop ebp
00032677  C3                ret
00032678  55                push ebp
00032679  89E5              mov ebp,esp
0003267B  83EC10            sub esp,byte +0x10
0003267E  E82CE4FFFF        call 0x30aaf
00032683  057D290000        add eax,0x297d
00032688  C745F800000000    mov dword [ebp-0x8],0x0
0003268F  EB71              jmp short 0x32702
00032691  C7C2806F0300      mov edx,0x36f80
00032697  8955FC            mov [ebp-0x4],edx
0003269A  EB23              jmp short 0x326bf
0003269C  8B55FC            mov edx,[ebp-0x4]
0003269F  8B525C            mov edx,[edx+0x5c]
000326A2  3955F8            cmp [ebp-0x8],edx
000326A5  7D14              jnl 0x326bb
000326A7  8B55FC            mov edx,[ebp-0x4]
000326AA  8B525C            mov edx,[edx+0x5c]
000326AD  8955F8            mov [ebp-0x8],edx
000326B0  C7C2686F0300      mov edx,0x36f68
000326B6  8B4DFC            mov ecx,[ebp-0x4]
000326B9  890A              mov [edx],ecx
000326BB  8345FC78          add dword [ebp-0x4],byte +0x78
000326BF  C7C2806F0300      mov edx,0x36f80
000326C5  8D92E0010000      lea edx,[edx+0x1e0]
000326CB  3955FC            cmp [ebp-0x4],edx
000326CE  72CC              jc 0x3269c
000326D0  837DF800          cmp dword [ebp-0x8],byte +0x0
000326D4  752C              jnz 0x32702
000326D6  C7C2806F0300      mov edx,0x36f80
000326DC  8955FC            mov [ebp-0x4],edx
000326DF  EB10              jmp short 0x326f1
000326E1  8B55FC            mov edx,[ebp-0x4]
000326E4  8B4A60            mov ecx,[edx+0x60]
000326E7  8B55FC            mov edx,[ebp-0x4]
000326EA  894A5C            mov [edx+0x5c],ecx
000326ED  8345FC78          add dword [ebp-0x4],byte +0x78
000326F1  C7C2806F0300      mov edx,0x36f80
000326F7  8D92E0010000      lea edx,[edx+0x1e0]
000326FD  3955FC            cmp [ebp-0x4],edx
00032700  72DF              jc 0x326e1
00032702  837DF800          cmp dword [ebp-0x8],byte +0x0
00032706  7489              jz 0x32691
00032708  90                nop
00032709  90                nop
0003270A  C9                leave
0003270B  C3                ret
0003270C  55                push ebp
0003270D  89E5              mov ebp,esp
0003270F  E89BE3FFFF        call 0x30aaf
00032714  05EC280000        add eax,0x28ec
00032719  C7C0A0620300      mov eax,0x362a0
0003271F  8B00              mov eax,[eax]
00032721  5D                pop ebp
00032722  C3                ret
00032723  6690              xchg ax,ax
00032725  6690              xchg ax,ax
00032727  6690              xchg ax,ax
00032729  6690              xchg ax,ax
0003272B  6690              xchg ax,ax
0003272D  6690              xchg ax,ax
0003272F  90                nop
00032730  55                push ebp
00032731  89E5              mov ebp,esp
00032733  8B7508            mov esi,[ebp+0x8]
00032736  8B3DA4620300      mov edi,[dword 0x362a4]
0003273C  B40F              mov ah,0xf
0003273E  AC                lodsb
0003273F  84C0              test al,al
00032741  7423              jz 0x32766
00032743  3C0A              cmp al,0xa
00032745  7516              jnz 0x3275d
00032747  50                push eax
00032748  89F8              mov eax,edi
0003274A  B3A0              mov bl,0xa0
0003274C  F6F3              div bl
0003274E  25FF000000        and eax,0xff
00032753  40                inc eax
00032754  B3A0              mov bl,0xa0
00032756  F6E3              mul bl
00032758  89C7              mov edi,eax
0003275A  58                pop eax
0003275B  EBE1              jmp short 0x3273e
0003275D  65668907          mov [gs:edi],ax
00032761  83C702            add edi,byte +0x2
00032764  EBD8              jmp short 0x3273e
00032766  893DA4620300      mov [dword 0x362a4],edi
0003276C  5D                pop ebp
0003276D  C3                ret
0003276E  55                push ebp
0003276F  89E5              mov ebp,esp
00032771  8B7508            mov esi,[ebp+0x8]
00032774  8B3DA4620300      mov edi,[dword 0x362a4]
0003277A  8A650C            mov ah,[ebp+0xc]
0003277D  AC                lodsb
0003277E  84C0              test al,al
00032780  7423              jz 0x327a5
00032782  3C0A              cmp al,0xa
00032784  7516              jnz 0x3279c
00032786  50                push eax
00032787  89F8              mov eax,edi
00032789  B3A0              mov bl,0xa0
0003278B  F6F3              div bl
0003278D  25FF000000        and eax,0xff
00032792  40                inc eax
00032793  B3A0              mov bl,0xa0
00032795  F6E3              mul bl
00032797  89C7              mov edi,eax
00032799  58                pop eax
0003279A  EBE1              jmp short 0x3277d
0003279C  65668907          mov [gs:edi],ax
000327A0  83C702            add edi,byte +0x2
000327A3  EBD8              jmp short 0x3277d
000327A5  893DA4620300      mov [dword 0x362a4],edi
000327AB  5D                pop ebp
000327AC  C3                ret
000327AD  8B542404          mov edx,[esp+0x4]
000327B1  8A442408          mov al,[esp+0x8]
000327B5  EE                out dx,al
000327B6  90                nop
000327B7  90                nop
000327B8  C3                ret
000327B9  8B542404          mov edx,[esp+0x4]
000327BD  31C0              xor eax,eax
000327BF  EC                in al,dx
000327C0  90                nop
000327C1  90                nop
000327C2  C3                ret
000327C3  8B4C2404          mov ecx,[esp+0x4]
000327C7  9C                pushf
000327C8  FA                cli
000327C9  B401              mov ah,0x1
000327CB  D2C4              rol ah,cl
000327CD  80F908            cmp cl,0x8
000327D0  7311              jnc 0x327e3
000327D2  E421              in al,0x21
000327D4  84E0              test al,ah
000327D6  751C              jnz 0x327f4
000327D8  08E0              or al,ah
000327DA  E621              out 0x21,al
000327DC  9D                popf
000327DD  B801000000        mov eax,0x1
000327E2  C3                ret
000327E3  E4A1              in al,0xa1
000327E5  84E0              test al,ah
000327E7  750B              jnz 0x327f4
000327E9  08E0              or al,ah
000327EB  E6A1              out 0xa1,al
000327ED  9D                popf
000327EE  B801000000        mov eax,0x1
000327F3  C3                ret
000327F4  9D                popf
000327F5  31C0              xor eax,eax
000327F7  C3                ret
000327F8  8B4C2404          mov ecx,[esp+0x4]
000327FC  9C                pushf
000327FD  FA                cli
000327FE  B4FE              mov ah,0xfe
00032800  D2C4              rol ah,cl
00032802  80F908            cmp cl,0x8
00032805  7308              jnc 0x3280f
00032807  E421              in al,0x21
00032809  20E0              and al,ah
0003280B  E621              out 0x21,al
0003280D  9D                popf
0003280E  C3                ret
0003280F  E4A1              in al,0xa1
00032811  20E0              and al,ah
00032813  E6A1              out 0xa1,al
00032815  9D                popf
00032816  C3                ret
00032817  FA                cli
00032818  C3                ret
00032819  FB                sti
0003281A  C3                ret
0003281B  55                push ebp
0003281C  89E5              mov ebp,esp
0003281E  83EC10            sub esp,byte +0x10
00032821  E889E2FFFF        call 0x30aaf
00032826  05DA270000        add eax,0x27da
0003282B  8B4508            mov eax,[ebp+0x8]
0003282E  8945FC            mov [ebp-0x4],eax
00032831  C745F000000000    mov dword [ebp-0x10],0x0
00032838  8B45FC            mov eax,[ebp-0x4]
0003283B  8D5001            lea edx,[eax+0x1]
0003283E  8955FC            mov [ebp-0x4],edx
00032841  C60030            mov byte [eax],0x30
00032844  8B45FC            mov eax,[ebp-0x4]
00032847  8D5001            lea edx,[eax+0x1]
0003284A  8955FC            mov [ebp-0x4],edx
0003284D  C60078            mov byte [eax],0x78
00032850  837D0C00          cmp dword [ebp+0xc],byte +0x0
00032854  750E              jnz 0x32864
00032856  8B45FC            mov eax,[ebp-0x4]
00032859  8D5001            lea edx,[eax+0x1]
0003285C  8955FC            mov [ebp-0x4],edx
0003285F  C60030            mov byte [eax],0x30
00032862  EB61              jmp short 0x328c5
00032864  C745F41C000000    mov dword [ebp-0xc],0x1c
0003286B  EB52              jmp short 0x328bf
0003286D  8B45F4            mov eax,[ebp-0xc]
00032870  8B550C            mov edx,[ebp+0xc]
00032873  89C1              mov ecx,eax
00032875  D3FA              sar edx,cl
00032877  89D0              mov eax,edx
00032879  83E00F            and eax,byte +0xf
0003287C  8845FB            mov [ebp-0x5],al
0003287F  837DF000          cmp dword [ebp-0x10],byte +0x0
00032883  7506              jnz 0x3288b
00032885  807DFB00          cmp byte [ebp-0x5],0x0
00032889  7E30              jng 0x328bb
0003288B  C745F001000000    mov dword [ebp-0x10],0x1
00032892  0FB645FB          movzx eax,byte [ebp-0x5]
00032896  83C030            add eax,byte +0x30
00032899  8845FB            mov [ebp-0x5],al
0003289C  807DFB39          cmp byte [ebp-0x5],0x39
000328A0  7E0A              jng 0x328ac
000328A2  0FB645FB          movzx eax,byte [ebp-0x5]
000328A6  83C007            add eax,byte +0x7
000328A9  8845FB            mov [ebp-0x5],al
000328AC  8B45FC            mov eax,[ebp-0x4]
000328AF  8D5001            lea edx,[eax+0x1]
000328B2  8955FC            mov [ebp-0x4],edx
000328B5  0FB655FB          movzx edx,byte [ebp-0x5]
000328B9  8810              mov [eax],dl
000328BB  836DF404          sub dword [ebp-0xc],byte +0x4
000328BF  837DF400          cmp dword [ebp-0xc],byte +0x0
000328C3  79A8              jns 0x3286d
000328C5  8B45FC            mov eax,[ebp-0x4]
000328C8  C60000            mov byte [eax],0x0
000328CB  8B4508            mov eax,[ebp+0x8]
000328CE  C9                leave
000328CF  C3                ret
000328D0  55                push ebp
000328D1  89E5              mov ebp,esp
000328D3  53                push ebx
000328D4  83EC14            sub esp,byte +0x14
000328D7  E8FFDEFFFF        call 0x307db
000328DC  81C324270000      add ebx,0x2724
000328E2  FF7508            push dword [ebp+0x8]
000328E5  8D45E8            lea eax,[ebp-0x18]
000328E8  50                push eax
000328E9  E82DFFFFFF        call 0x3281b
000328EE  83C408            add esp,byte +0x8
000328F1  83EC0C            sub esp,byte +0xc
000328F4  8D45E8            lea eax,[ebp-0x18]
000328F7  50                push eax
000328F8  E833FEFFFF        call 0x32730
000328FD  83C410            add esp,byte +0x10
00032900  90                nop
00032901  8B5DFC            mov ebx,[ebp-0x4]
00032904  C9                leave
00032905  C3                ret
00032906  55                push ebp
00032907  89E5              mov ebp,esp
00032909  83EC10            sub esp,byte +0x10
0003290C  E89EE1FFFF        call 0x30aaf
00032911  05EF260000        add eax,0x26ef
00032916  C745F400000000    mov dword [ebp-0xc],0x0
0003291D  EB2D              jmp short 0x3294c
0003291F  C745FC00000000    mov dword [ebp-0x4],0x0
00032926  EB1A              jmp short 0x32942
00032928  C745F800000000    mov dword [ebp-0x8],0x0
0003292F  EB04              jmp short 0x32935
00032931  8345F801          add dword [ebp-0x8],byte +0x1
00032935  817DF80F270000    cmp dword [ebp-0x8],0x270f
0003293C  7EF3              jng 0x32931
0003293E  8345FC01          add dword [ebp-0x4],byte +0x1
00032942  837DFC09          cmp dword [ebp-0x4],byte +0x9
00032946  7EE0              jng 0x32928
00032948  8345F401          add dword [ebp-0xc],byte +0x1
0003294C  8B45F4            mov eax,[ebp-0xc]
0003294F  3B4508            cmp eax,[ebp+0x8]
00032952  7CCB              jl 0x3291f
00032954  90                nop
00032955  90                nop
00032956  C9                leave
00032957  C3                ret
00032958  6690              xchg ax,ax
0003295A  6690              xchg ax,ax
0003295C  6690              xchg ax,ax
0003295E  6690              xchg ax,ax
00032960  55                push ebp
00032961  89E5              mov ebp,esp
00032963  56                push esi
00032964  57                push edi
00032965  51                push ecx
00032966  8B7D08            mov edi,[ebp+0x8]
00032969  8B750C            mov esi,[ebp+0xc]
0003296C  8B4D10            mov ecx,[ebp+0x10]
0003296F  83F900            cmp ecx,byte +0x0
00032972  740B              jz 0x3297f
00032974  3E8A06            mov al,[ds:esi]
00032977  46                inc esi
00032978  268807            mov [es:edi],al
0003297B  47                inc edi
0003297C  49                dec ecx
0003297D  EBF0              jmp short 0x3296f
0003297F  8B4508            mov eax,[ebp+0x8]
00032982  59                pop ecx
00032983  5F                pop edi
00032984  5E                pop esi
00032985  89EC              mov esp,ebp
00032987  5D                pop ebp
00032988  C3                ret
00032989  55                push ebp
0003298A  89E5              mov ebp,esp
0003298C  56                push esi
0003298D  57                push edi
0003298E  51                push ecx
0003298F  8B7D08            mov edi,[ebp+0x8]
00032992  8B550C            mov edx,[ebp+0xc]
00032995  8B4D10            mov ecx,[ebp+0x10]
00032998  83F900            cmp ecx,byte +0x0
0003299B  7406              jz 0x329a3
0003299D  8817              mov [edi],dl
0003299F  47                inc edi
000329A0  49                dec ecx
000329A1  EBF5              jmp short 0x32998
000329A3  59                pop ecx
000329A4  5F                pop edi
000329A5  5E                pop esi
000329A6  89EC              mov esp,ebp
000329A8  5D                pop ebp
000329A9  C3                ret
000329AA  55                push ebp
000329AB  89E5              mov ebp,esp
000329AD  8B750C            mov esi,[ebp+0xc]
000329B0  8B7D08            mov edi,[ebp+0x8]
000329B3  8A06              mov al,[esi]
000329B5  46                inc esi
000329B6  8807              mov [edi],al
000329B8  47                inc edi
000329B9  3C00              cmp al,0x0
000329BB  75F6              jnz 0x329b3
000329BD  8B4508            mov eax,[ebp+0x8]
000329C0  5D                pop ebp
000329C1  C3                ret
000329C2  0000              add [eax],al
000329C4  0000              add [eax],al
000329C6  0000              add [eax],al
000329C8  0000              add [eax],al
000329CA  0000              add [eax],al
000329CC  0000              add [eax],al
000329CE  0000              add [eax],al
000329D0  0000              add [eax],al
000329D2  0000              add [eax],al
000329D4  0000              add [eax],al
000329D6  0000              add [eax],al
000329D8  0000              add [eax],al
000329DA  0000              add [eax],al
000329DC  0000              add [eax],al
000329DE  0000              add [eax],al
000329E0  0000              add [eax],al
000329E2  0000              add [eax],al
000329E4  0000              add [eax],al
000329E6  0000              add [eax],al
000329E8  0000              add [eax],al
000329EA  0000              add [eax],al
000329EC  0000              add [eax],al
000329EE  0000              add [eax],al
000329F0  0000              add [eax],al
000329F2  0000              add [eax],al
000329F4  0000              add [eax],al
000329F6  0000              add [eax],al
000329F8  0000              add [eax],al
000329FA  0000              add [eax],al
000329FC  0000              add [eax],al
000329FE  0000              add [eax],al
00032A00  0000              add [eax],al
00032A02  0000              add [eax],al
00032A04  0000              add [eax],al
00032A06  0000              add [eax],al
00032A08  0000              add [eax],al
00032A0A  0000              add [eax],al
00032A0C  0000              add [eax],al
00032A0E  0000              add [eax],al
00032A10  0000              add [eax],al
00032A12  0000              add [eax],al
00032A14  0000              add [eax],al
00032A16  0000              add [eax],al
00032A18  0000              add [eax],al
00032A1A  0000              add [eax],al
00032A1C  0000              add [eax],al
00032A1E  0000              add [eax],al
00032A20  0000              add [eax],al
00032A22  0000              add [eax],al
00032A24  0000              add [eax],al
00032A26  0000              add [eax],al
00032A28  0000              add [eax],al
00032A2A  0000              add [eax],al
00032A2C  0000              add [eax],al
00032A2E  0000              add [eax],al
00032A30  0000              add [eax],al
00032A32  0000              add [eax],al
00032A34  0000              add [eax],al
00032A36  0000              add [eax],al
00032A38  0000              add [eax],al
00032A3A  0000              add [eax],al
00032A3C  0000              add [eax],al
00032A3E  0000              add [eax],al
00032A40  0000              add [eax],al
00032A42  0000              add [eax],al
00032A44  0000              add [eax],al
00032A46  0000              add [eax],al
00032A48  0000              add [eax],al
00032A4A  0000              add [eax],al
00032A4C  0000              add [eax],al
00032A4E  0000              add [eax],al
00032A50  0000              add [eax],al
00032A52  0000              add [eax],al
00032A54  0000              add [eax],al
00032A56  0000              add [eax],al
00032A58  0000              add [eax],al
00032A5A  0000              add [eax],al
00032A5C  0000              add [eax],al
00032A5E  0000              add [eax],al
00032A60  0000              add [eax],al
00032A62  0000              add [eax],al
00032A64  0000              add [eax],al
00032A66  0000              add [eax],al
00032A68  0000              add [eax],al
00032A6A  0000              add [eax],al
00032A6C  0000              add [eax],al
00032A6E  0000              add [eax],al
00032A70  0000              add [eax],al
00032A72  0000              add [eax],al
00032A74  0000              add [eax],al
00032A76  0000              add [eax],al
00032A78  0000              add [eax],al
00032A7A  0000              add [eax],al
00032A7C  0000              add [eax],al
00032A7E  0000              add [eax],al
00032A80  0000              add [eax],al
00032A82  0000              add [eax],al
00032A84  0000              add [eax],al
00032A86  0000              add [eax],al
00032A88  0000              add [eax],al
00032A8A  0000              add [eax],al
00032A8C  0000              add [eax],al
00032A8E  0000              add [eax],al
00032A90  0000              add [eax],al
00032A92  0000              add [eax],al
00032A94  0000              add [eax],al
00032A96  0000              add [eax],al
00032A98  0000              add [eax],al
00032A9A  0000              add [eax],al
00032A9C  0000              add [eax],al
00032A9E  0000              add [eax],al
00032AA0  0000              add [eax],al
00032AA2  0000              add [eax],al
00032AA4  0000              add [eax],al
00032AA6  0000              add [eax],al
00032AA8  0000              add [eax],al
00032AAA  0000              add [eax],al
00032AAC  0000              add [eax],al
00032AAE  0000              add [eax],al
00032AB0  0000              add [eax],al
00032AB2  0000              add [eax],al
00032AB4  0000              add [eax],al
00032AB6  0000              add [eax],al
00032AB8  0000              add [eax],al
00032ABA  0000              add [eax],al
00032ABC  0000              add [eax],al
00032ABE  0000              add [eax],al
00032AC0  0000              add [eax],al
00032AC2  0000              add [eax],al
00032AC4  0000              add [eax],al
00032AC6  0000              add [eax],al
00032AC8  0000              add [eax],al
00032ACA  0000              add [eax],al
00032ACC  0000              add [eax],al
00032ACE  0000              add [eax],al
00032AD0  0000              add [eax],al
00032AD2  0000              add [eax],al
00032AD4  0000              add [eax],al
00032AD6  0000              add [eax],al
00032AD8  0000              add [eax],al
00032ADA  0000              add [eax],al
00032ADC  0000              add [eax],al
00032ADE  0000              add [eax],al
00032AE0  0000              add [eax],al
00032AE2  0000              add [eax],al
00032AE4  0000              add [eax],al
00032AE6  0000              add [eax],al
00032AE8  0000              add [eax],al
00032AEA  0000              add [eax],al
00032AEC  0000              add [eax],al
00032AEE  0000              add [eax],al
00032AF0  0000              add [eax],al
00032AF2  0000              add [eax],al
00032AF4  0000              add [eax],al
00032AF6  0000              add [eax],al
00032AF8  0000              add [eax],al
00032AFA  0000              add [eax],al
00032AFC  0000              add [eax],al
00032AFE  0000              add [eax],al
00032B00  0000              add [eax],al
00032B02  0000              add [eax],al
00032B04  0000              add [eax],al
00032B06  0000              add [eax],al
00032B08  0000              add [eax],al
00032B0A  0000              add [eax],al
00032B0C  0000              add [eax],al
00032B0E  0000              add [eax],al
00032B10  0000              add [eax],al
00032B12  0000              add [eax],al
00032B14  0000              add [eax],al
00032B16  0000              add [eax],al
00032B18  0000              add [eax],al
00032B1A  0000              add [eax],al
00032B1C  0000              add [eax],al
00032B1E  0000              add [eax],al
00032B20  0000              add [eax],al
00032B22  0000              add [eax],al
00032B24  0000              add [eax],al
00032B26  0000              add [eax],al
00032B28  0000              add [eax],al
00032B2A  0000              add [eax],al
00032B2C  0000              add [eax],al
00032B2E  0000              add [eax],al
00032B30  0000              add [eax],al
00032B32  0000              add [eax],al
00032B34  0000              add [eax],al
00032B36  0000              add [eax],al
00032B38  0000              add [eax],al
00032B3A  0000              add [eax],al
00032B3C  0000              add [eax],al
00032B3E  0000              add [eax],al
00032B40  0000              add [eax],al
00032B42  0000              add [eax],al
00032B44  0000              add [eax],al
00032B46  0000              add [eax],al
00032B48  0000              add [eax],al
00032B4A  0000              add [eax],al
00032B4C  0000              add [eax],al
00032B4E  0000              add [eax],al
00032B50  0000              add [eax],al
00032B52  0000              add [eax],al
00032B54  0000              add [eax],al
00032B56  0000              add [eax],al
00032B58  0000              add [eax],al
00032B5A  0000              add [eax],al
00032B5C  0000              add [eax],al
00032B5E  0000              add [eax],al
00032B60  0000              add [eax],al
00032B62  0000              add [eax],al
00032B64  0000              add [eax],al
00032B66  0000              add [eax],al
00032B68  0000              add [eax],al
00032B6A  0000              add [eax],al
00032B6C  0000              add [eax],al
00032B6E  0000              add [eax],al
00032B70  0000              add [eax],al
00032B72  0000              add [eax],al
00032B74  0000              add [eax],al
00032B76  0000              add [eax],al
00032B78  0000              add [eax],al
00032B7A  0000              add [eax],al
00032B7C  0000              add [eax],al
00032B7E  0000              add [eax],al
00032B80  0000              add [eax],al
00032B82  0000              add [eax],al
00032B84  0000              add [eax],al
00032B86  0000              add [eax],al
00032B88  0000              add [eax],al
00032B8A  0000              add [eax],al
00032B8C  0000              add [eax],al
00032B8E  0000              add [eax],al
00032B90  0000              add [eax],al
00032B92  0000              add [eax],al
00032B94  0000              add [eax],al
00032B96  0000              add [eax],al
00032B98  0000              add [eax],al
00032B9A  0000              add [eax],al
00032B9C  0000              add [eax],al
00032B9E  0000              add [eax],al
00032BA0  0000              add [eax],al
00032BA2  0000              add [eax],al
00032BA4  0000              add [eax],al
00032BA6  0000              add [eax],al
00032BA8  0000              add [eax],al
00032BAA  0000              add [eax],al
00032BAC  0000              add [eax],al
00032BAE  0000              add [eax],al
00032BB0  0000              add [eax],al
00032BB2  0000              add [eax],al
00032BB4  0000              add [eax],al
00032BB6  0000              add [eax],al
00032BB8  0000              add [eax],al
00032BBA  0000              add [eax],al
00032BBC  0000              add [eax],al
00032BBE  0000              add [eax],al
00032BC0  0000              add [eax],al
00032BC2  0000              add [eax],al
00032BC4  0000              add [eax],al
00032BC6  0000              add [eax],al
00032BC8  0000              add [eax],al
00032BCA  0000              add [eax],al
00032BCC  0000              add [eax],al
00032BCE  0000              add [eax],al
00032BD0  0000              add [eax],al
00032BD2  0000              add [eax],al
00032BD4  0000              add [eax],al
00032BD6  0000              add [eax],al
00032BD8  0000              add [eax],al
00032BDA  0000              add [eax],al
00032BDC  0000              add [eax],al
00032BDE  0000              add [eax],al
00032BE0  0000              add [eax],al
00032BE2  0000              add [eax],al
00032BE4  0000              add [eax],al
00032BE6  0000              add [eax],al
00032BE8  0000              add [eax],al
00032BEA  0000              add [eax],al
00032BEC  0000              add [eax],al
00032BEE  0000              add [eax],al
00032BF0  0000              add [eax],al
00032BF2  0000              add [eax],al
00032BF4  0000              add [eax],al
00032BF6  0000              add [eax],al
00032BF8  0000              add [eax],al
00032BFA  0000              add [eax],al
00032BFC  0000              add [eax],al
00032BFE  0000              add [eax],al
00032C00  0000              add [eax],al
00032C02  0000              add [eax],al
00032C04  0000              add [eax],al
00032C06  0000              add [eax],al
00032C08  0000              add [eax],al
00032C0A  0000              add [eax],al
00032C0C  0000              add [eax],al
00032C0E  0000              add [eax],al
00032C10  0000              add [eax],al
00032C12  0000              add [eax],al
00032C14  0000              add [eax],al
00032C16  0000              add [eax],al
00032C18  0000              add [eax],al
00032C1A  0000              add [eax],al
00032C1C  0000              add [eax],al
00032C1E  0000              add [eax],al
00032C20  0000              add [eax],al
00032C22  0000              add [eax],al
00032C24  0000              add [eax],al
00032C26  0000              add [eax],al
00032C28  0000              add [eax],al
00032C2A  0000              add [eax],al
00032C2C  0000              add [eax],al
00032C2E  0000              add [eax],al
00032C30  0000              add [eax],al
00032C32  0000              add [eax],al
00032C34  0000              add [eax],al
00032C36  0000              add [eax],al
00032C38  0000              add [eax],al
00032C3A  0000              add [eax],al
00032C3C  0000              add [eax],al
00032C3E  0000              add [eax],al
00032C40  0000              add [eax],al
00032C42  0000              add [eax],al
00032C44  0000              add [eax],al
00032C46  0000              add [eax],al
00032C48  0000              add [eax],al
00032C4A  0000              add [eax],al
00032C4C  0000              add [eax],al
00032C4E  0000              add [eax],al
00032C50  0000              add [eax],al
00032C52  0000              add [eax],al
00032C54  0000              add [eax],al
00032C56  0000              add [eax],al
00032C58  0000              add [eax],al
00032C5A  0000              add [eax],al
00032C5C  0000              add [eax],al
00032C5E  0000              add [eax],al
00032C60  0000              add [eax],al
00032C62  0000              add [eax],al
00032C64  0000              add [eax],al
00032C66  0000              add [eax],al
00032C68  0000              add [eax],al
00032C6A  0000              add [eax],al
00032C6C  0000              add [eax],al
00032C6E  0000              add [eax],al
00032C70  0000              add [eax],al
00032C72  0000              add [eax],al
00032C74  0000              add [eax],al
00032C76  0000              add [eax],al
00032C78  0000              add [eax],al
00032C7A  0000              add [eax],al
00032C7C  0000              add [eax],al
00032C7E  0000              add [eax],al
00032C80  0000              add [eax],al
00032C82  0000              add [eax],al
00032C84  0000              add [eax],al
00032C86  0000              add [eax],al
00032C88  0000              add [eax],al
00032C8A  0000              add [eax],al
00032C8C  0000              add [eax],al
00032C8E  0000              add [eax],al
00032C90  0000              add [eax],al
00032C92  0000              add [eax],al
00032C94  0000              add [eax],al
00032C96  0000              add [eax],al
00032C98  0000              add [eax],al
00032C9A  0000              add [eax],al
00032C9C  0000              add [eax],al
00032C9E  0000              add [eax],al
00032CA0  0000              add [eax],al
00032CA2  0000              add [eax],al
00032CA4  0000              add [eax],al
00032CA6  0000              add [eax],al
00032CA8  0000              add [eax],al
00032CAA  0000              add [eax],al
00032CAC  0000              add [eax],al
00032CAE  0000              add [eax],al
00032CB0  0000              add [eax],al
00032CB2  0000              add [eax],al
00032CB4  0000              add [eax],al
00032CB6  0000              add [eax],al
00032CB8  0000              add [eax],al
00032CBA  0000              add [eax],al
00032CBC  0000              add [eax],al
00032CBE  0000              add [eax],al
00032CC0  0000              add [eax],al
00032CC2  0000              add [eax],al
00032CC4  0000              add [eax],al
00032CC6  0000              add [eax],al
00032CC8  0000              add [eax],al
00032CCA  0000              add [eax],al
00032CCC  0000              add [eax],al
00032CCE  0000              add [eax],al
00032CD0  0000              add [eax],al
00032CD2  0000              add [eax],al
00032CD4  0000              add [eax],al
00032CD6  0000              add [eax],al
00032CD8  0000              add [eax],al
00032CDA  0000              add [eax],al
00032CDC  0000              add [eax],al
00032CDE  0000              add [eax],al
00032CE0  0000              add [eax],al
00032CE2  0000              add [eax],al
00032CE4  0000              add [eax],al
00032CE6  0000              add [eax],al
00032CE8  0000              add [eax],al
00032CEA  0000              add [eax],al
00032CEC  0000              add [eax],al
00032CEE  0000              add [eax],al
00032CF0  0000              add [eax],al
00032CF2  0000              add [eax],al
00032CF4  0000              add [eax],al
00032CF6  0000              add [eax],al
00032CF8  0000              add [eax],al
00032CFA  0000              add [eax],al
00032CFC  0000              add [eax],al
00032CFE  0000              add [eax],al
00032D00  0000              add [eax],al
00032D02  0000              add [eax],al
00032D04  0000              add [eax],al
00032D06  0000              add [eax],al
00032D08  0000              add [eax],al
00032D0A  0000              add [eax],al
00032D0C  0000              add [eax],al
00032D0E  0000              add [eax],al
00032D10  0000              add [eax],al
00032D12  0000              add [eax],al
00032D14  0000              add [eax],al
00032D16  0000              add [eax],al
00032D18  0000              add [eax],al
00032D1A  0000              add [eax],al
00032D1C  0000              add [eax],al
00032D1E  0000              add [eax],al
00032D20  0000              add [eax],al
00032D22  0000              add [eax],al
00032D24  0000              add [eax],al
00032D26  0000              add [eax],al
00032D28  0000              add [eax],al
00032D2A  0000              add [eax],al
00032D2C  0000              add [eax],al
00032D2E  0000              add [eax],al
00032D30  0000              add [eax],al
00032D32  0000              add [eax],al
00032D34  0000              add [eax],al
00032D36  0000              add [eax],al
00032D38  0000              add [eax],al
00032D3A  0000              add [eax],al
00032D3C  0000              add [eax],al
00032D3E  0000              add [eax],al
00032D40  0000              add [eax],al
00032D42  0000              add [eax],al
00032D44  0000              add [eax],al
00032D46  0000              add [eax],al
00032D48  0000              add [eax],al
00032D4A  0000              add [eax],al
00032D4C  0000              add [eax],al
00032D4E  0000              add [eax],al
00032D50  0000              add [eax],al
00032D52  0000              add [eax],al
00032D54  0000              add [eax],al
00032D56  0000              add [eax],al
00032D58  0000              add [eax],al
00032D5A  0000              add [eax],al
00032D5C  0000              add [eax],al
00032D5E  0000              add [eax],al
00032D60  0000              add [eax],al
00032D62  0000              add [eax],al
00032D64  0000              add [eax],al
00032D66  0000              add [eax],al
00032D68  0000              add [eax],al
00032D6A  0000              add [eax],al
00032D6C  0000              add [eax],al
00032D6E  0000              add [eax],al
00032D70  0000              add [eax],al
00032D72  0000              add [eax],al
00032D74  0000              add [eax],al
00032D76  0000              add [eax],al
00032D78  0000              add [eax],al
00032D7A  0000              add [eax],al
00032D7C  0000              add [eax],al
00032D7E  0000              add [eax],al
00032D80  0000              add [eax],al
00032D82  0000              add [eax],al
00032D84  0000              add [eax],al
00032D86  0000              add [eax],al
00032D88  0000              add [eax],al
00032D8A  0000              add [eax],al
00032D8C  0000              add [eax],al
00032D8E  0000              add [eax],al
00032D90  0000              add [eax],al
00032D92  0000              add [eax],al
00032D94  0000              add [eax],al
00032D96  0000              add [eax],al
00032D98  0000              add [eax],al
00032D9A  0000              add [eax],al
00032D9C  0000              add [eax],al
00032D9E  0000              add [eax],al
00032DA0  0000              add [eax],al
00032DA2  0000              add [eax],al
00032DA4  0000              add [eax],al
00032DA6  0000              add [eax],al
00032DA8  0000              add [eax],al
00032DAA  0000              add [eax],al
00032DAC  0000              add [eax],al
00032DAE  0000              add [eax],al
00032DB0  0000              add [eax],al
00032DB2  0000              add [eax],al
00032DB4  0000              add [eax],al
00032DB6  0000              add [eax],al
00032DB8  0000              add [eax],al
00032DBA  0000              add [eax],al
00032DBC  0000              add [eax],al
00032DBE  0000              add [eax],al
00032DC0  0000              add [eax],al
00032DC2  0000              add [eax],al
00032DC4  0000              add [eax],al
00032DC6  0000              add [eax],al
00032DC8  0000              add [eax],al
00032DCA  0000              add [eax],al
00032DCC  0000              add [eax],al
00032DCE  0000              add [eax],al
00032DD0  0000              add [eax],al
00032DD2  0000              add [eax],al
00032DD4  0000              add [eax],al
00032DD6  0000              add [eax],al
00032DD8  0000              add [eax],al
00032DDA  0000              add [eax],al
00032DDC  0000              add [eax],al
00032DDE  0000              add [eax],al
00032DE0  0000              add [eax],al
00032DE2  0000              add [eax],al
00032DE4  0000              add [eax],al
00032DE6  0000              add [eax],al
00032DE8  0000              add [eax],al
00032DEA  0000              add [eax],al
00032DEC  0000              add [eax],al
00032DEE  0000              add [eax],al
00032DF0  0000              add [eax],al
00032DF2  0000              add [eax],al
00032DF4  0000              add [eax],al
00032DF6  0000              add [eax],al
00032DF8  0000              add [eax],al
00032DFA  0000              add [eax],al
00032DFC  0000              add [eax],al
00032DFE  0000              add [eax],al
00032E00  0000              add [eax],al
00032E02  0000              add [eax],al
00032E04  0000              add [eax],al
00032E06  0000              add [eax],al
00032E08  0000              add [eax],al
00032E0A  0000              add [eax],al
00032E0C  0000              add [eax],al
00032E0E  0000              add [eax],al
00032E10  0000              add [eax],al
00032E12  0000              add [eax],al
00032E14  0000              add [eax],al
00032E16  0000              add [eax],al
00032E18  0000              add [eax],al
00032E1A  0000              add [eax],al
00032E1C  0000              add [eax],al
00032E1E  0000              add [eax],al
00032E20  0000              add [eax],al
00032E22  0000              add [eax],al
00032E24  0000              add [eax],al
00032E26  0000              add [eax],al
00032E28  0000              add [eax],al
00032E2A  0000              add [eax],al
00032E2C  0000              add [eax],al
00032E2E  0000              add [eax],al
00032E30  0000              add [eax],al
00032E32  0000              add [eax],al
00032E34  0000              add [eax],al
00032E36  0000              add [eax],al
00032E38  0000              add [eax],al
00032E3A  0000              add [eax],al
00032E3C  0000              add [eax],al
00032E3E  0000              add [eax],al
00032E40  0000              add [eax],al
00032E42  0000              add [eax],al
00032E44  0000              add [eax],al
00032E46  0000              add [eax],al
00032E48  0000              add [eax],al
00032E4A  0000              add [eax],al
00032E4C  0000              add [eax],al
00032E4E  0000              add [eax],al
00032E50  0000              add [eax],al
00032E52  0000              add [eax],al
00032E54  0000              add [eax],al
00032E56  0000              add [eax],al
00032E58  0000              add [eax],al
00032E5A  0000              add [eax],al
00032E5C  0000              add [eax],al
00032E5E  0000              add [eax],al
00032E60  0000              add [eax],al
00032E62  0000              add [eax],al
00032E64  0000              add [eax],al
00032E66  0000              add [eax],al
00032E68  0000              add [eax],al
00032E6A  0000              add [eax],al
00032E6C  0000              add [eax],al
00032E6E  0000              add [eax],al
00032E70  0000              add [eax],al
00032E72  0000              add [eax],al
00032E74  0000              add [eax],al
00032E76  0000              add [eax],al
00032E78  0000              add [eax],al
00032E7A  0000              add [eax],al
00032E7C  0000              add [eax],al
00032E7E  0000              add [eax],al
00032E80  0000              add [eax],al
00032E82  0000              add [eax],al
00032E84  0000              add [eax],al
00032E86  0000              add [eax],al
00032E88  0000              add [eax],al
00032E8A  0000              add [eax],al
00032E8C  0000              add [eax],al
00032E8E  0000              add [eax],al
00032E90  0000              add [eax],al
00032E92  0000              add [eax],al
00032E94  0000              add [eax],al
00032E96  0000              add [eax],al
00032E98  0000              add [eax],al
00032E9A  0000              add [eax],al
00032E9C  0000              add [eax],al
00032E9E  0000              add [eax],al
00032EA0  0000              add [eax],al
00032EA2  0000              add [eax],al
00032EA4  0000              add [eax],al
00032EA6  0000              add [eax],al
00032EA8  0000              add [eax],al
00032EAA  0000              add [eax],al
00032EAC  0000              add [eax],al
00032EAE  0000              add [eax],al
00032EB0  0000              add [eax],al
00032EB2  0000              add [eax],al
00032EB4  0000              add [eax],al
00032EB6  0000              add [eax],al
00032EB8  0000              add [eax],al
00032EBA  0000              add [eax],al
00032EBC  0000              add [eax],al
00032EBE  0000              add [eax],al
00032EC0  0000              add [eax],al
00032EC2  0000              add [eax],al
00032EC4  0000              add [eax],al
00032EC6  0000              add [eax],al
00032EC8  0000              add [eax],al
00032ECA  0000              add [eax],al
00032ECC  0000              add [eax],al
00032ECE  0000              add [eax],al
00032ED0  0000              add [eax],al
00032ED2  0000              add [eax],al
00032ED4  0000              add [eax],al
00032ED6  0000              add [eax],al
00032ED8  0000              add [eax],al
00032EDA  0000              add [eax],al
00032EDC  0000              add [eax],al
00032EDE  0000              add [eax],al
00032EE0  0000              add [eax],al
00032EE2  0000              add [eax],al
00032EE4  0000              add [eax],al
00032EE6  0000              add [eax],al
00032EE8  0000              add [eax],al
00032EEA  0000              add [eax],al
00032EEC  0000              add [eax],al
00032EEE  0000              add [eax],al
00032EF0  0000              add [eax],al
00032EF2  0000              add [eax],al
00032EF4  0000              add [eax],al
00032EF6  0000              add [eax],al
00032EF8  0000              add [eax],al
00032EFA  0000              add [eax],al
00032EFC  0000              add [eax],al
00032EFE  0000              add [eax],al
00032F00  0000              add [eax],al
00032F02  0000              add [eax],al
00032F04  0000              add [eax],al
00032F06  0000              add [eax],al
00032F08  0000              add [eax],al
00032F0A  0000              add [eax],al
00032F0C  0000              add [eax],al
00032F0E  0000              add [eax],al
00032F10  0000              add [eax],al
00032F12  0000              add [eax],al
00032F14  0000              add [eax],al
00032F16  0000              add [eax],al
00032F18  0000              add [eax],al
00032F1A  0000              add [eax],al
00032F1C  0000              add [eax],al
00032F1E  0000              add [eax],al
00032F20  0000              add [eax],al
00032F22  0000              add [eax],al
00032F24  0000              add [eax],al
00032F26  0000              add [eax],al
00032F28  0000              add [eax],al
00032F2A  0000              add [eax],al
00032F2C  0000              add [eax],al
00032F2E  0000              add [eax],al
00032F30  0000              add [eax],al
00032F32  0000              add [eax],al
00032F34  0000              add [eax],al
00032F36  0000              add [eax],al
00032F38  0000              add [eax],al
00032F3A  0000              add [eax],al
00032F3C  0000              add [eax],al
00032F3E  0000              add [eax],al
00032F40  0000              add [eax],al
00032F42  0000              add [eax],al
00032F44  0000              add [eax],al
00032F46  0000              add [eax],al
00032F48  0000              add [eax],al
00032F4A  0000              add [eax],al
00032F4C  0000              add [eax],al
00032F4E  0000              add [eax],al
00032F50  0000              add [eax],al
00032F52  0000              add [eax],al
00032F54  0000              add [eax],al
00032F56  0000              add [eax],al
00032F58  0000              add [eax],al
00032F5A  0000              add [eax],al
00032F5C  0000              add [eax],al
00032F5E  0000              add [eax],al
00032F60  0000              add [eax],al
00032F62  0000              add [eax],al
00032F64  0000              add [eax],al
00032F66  0000              add [eax],al
00032F68  0000              add [eax],al
00032F6A  0000              add [eax],al
00032F6C  0000              add [eax],al
00032F6E  0000              add [eax],al
00032F70  0000              add [eax],al
00032F72  0000              add [eax],al
00032F74  0000              add [eax],al
00032F76  0000              add [eax],al
00032F78  0000              add [eax],al
00032F7A  0000              add [eax],al
00032F7C  0000              add [eax],al
00032F7E  0000              add [eax],al
00032F80  0000              add [eax],al
00032F82  0000              add [eax],al
00032F84  0000              add [eax],al
00032F86  0000              add [eax],al
00032F88  0000              add [eax],al
00032F8A  0000              add [eax],al
00032F8C  0000              add [eax],al
00032F8E  0000              add [eax],al
00032F90  0000              add [eax],al
00032F92  0000              add [eax],al
00032F94  0000              add [eax],al
00032F96  0000              add [eax],al
00032F98  0000              add [eax],al
00032F9A  0000              add [eax],al
00032F9C  0000              add [eax],al
00032F9E  0000              add [eax],al
00032FA0  0000              add [eax],al
00032FA2  0000              add [eax],al
00032FA4  0000              add [eax],al
00032FA6  0000              add [eax],al
00032FA8  0000              add [eax],al
00032FAA  0000              add [eax],al
00032FAC  0000              add [eax],al
00032FAE  0000              add [eax],al
00032FB0  0000              add [eax],al
00032FB2  0000              add [eax],al
00032FB4  0000              add [eax],al
00032FB6  0000              add [eax],al
00032FB8  0000              add [eax],al
00032FBA  0000              add [eax],al
00032FBC  0000              add [eax],al
00032FBE  0000              add [eax],al
00032FC0  0000              add [eax],al
00032FC2  0000              add [eax],al
00032FC4  0000              add [eax],al
00032FC6  0000              add [eax],al
00032FC8  0000              add [eax],al
00032FCA  0000              add [eax],al
00032FCC  0000              add [eax],al
00032FCE  0000              add [eax],al
00032FD0  0000              add [eax],al
00032FD2  0000              add [eax],al
00032FD4  0000              add [eax],al
00032FD6  0000              add [eax],al
00032FD8  0000              add [eax],al
00032FDA  0000              add [eax],al
00032FDC  0000              add [eax],al
00032FDE  0000              add [eax],al
00032FE0  0000              add [eax],al
00032FE2  0000              add [eax],al
00032FE4  0000              add [eax],al
00032FE6  0000              add [eax],al
00032FE8  0000              add [eax],al
00032FEA  0000              add [eax],al
00032FEC  0000              add [eax],al
00032FEE  0000              add [eax],al
00032FF0  0000              add [eax],al
00032FF2  0000              add [eax],al
00032FF4  0000              add [eax],al
00032FF6  0000              add [eax],al
00032FF8  0000              add [eax],al
00032FFA  0000              add [eax],al
00032FFC  0000              add [eax],al
00032FFE  0000              add [eax],al
00033000  0A0A              or cl,[edx]
00033002  0A0A              or cl,[edx]
00033004  0A0A              or cl,[edx]
00033006  0A0A              or cl,[edx]
00033008  0A0A              or cl,[edx]
0003300A  0A0A              or cl,[edx]
0003300C  0A0A              or cl,[edx]
0003300E  0A2D2D2D2D2D      or ch,[dword 0x2d2d2d2d]
00033014  226373            and ah,[ebx+0x73]
00033017  7461              jz 0x3307a
00033019  7274              jc 0x3308f
0003301B  2220              and ah,[eax]
0003301D  626567            bound esp,[ebp+0x67]
00033020  696E732D2D2D2D    imul ebp,[esi+0x73],dword 0x2d2d2d2d
00033027  2D0A002D2D        sub eax,0x2d2d000a
0003302C  2D2D2D2263        sub eax,0x63222d2d
00033031  7374              jnc 0x330a7
00033033  61                popa
00033034  7274              jc 0x330aa
00033036  2220              and ah,[eax]
00033038  66696E697368      imul bp,[esi+0x69],word 0x6873
0003303E  65642D2D2D2D2D    fs sub eax,0x2d2d2d2d
00033045  0A00              or al,[eax]
00033047  002D2D2D2D2D      add [dword 0x2d2d2d2d],ch
0003304D  226B65            and ch,[ebx+0x65]
00033050  726E              jc 0x330c0
00033052  656C              gs insb
00033054  5F                pop edi
00033055  6D                insd
00033056  61                popa
00033057  696E2220626567    imul ebp,[esi+0x22],dword 0x67656220
0003305E  696E732D2D2D2D    imul ebp,[esi+0x73],dword 0x2d2d2d2d
00033065  2D0A00E9BE        sub eax,0xbee9000a
0003306A  FF                db 0xff
0003306B  FFF7              push edi
0003306D  BEFFFF05BF        mov esi,0xbf05ffff
00033072  FF                db 0xff
00033073  FF13              call [ebx]
00033075  BFFFFF21BF        mov edi,0xbf21ffff
0003307A  FF                db 0xff
0003307B  FF2CBF            jmp far [edi+edi*4]
0003307E  FF                db 0xff
0003307F  FF37              push dword [edi]
00033081  BFFFFF58BF        mov edi,0xbf58ffff
00033086  FF                db 0xff
00033087  FF                db 0xff
00033088  79BF              jns 0x33049
0003308A  FF                db 0xff
0003308B  FFF1              push ecx
0003308D  BFFFFFFDBF        mov edi,0xbffdffff
00033092  FF                db 0xff
00033093  FF09              dec dword [ecx]
00033095  C0FFFF            sar bh,byte 0xff
00033098  15C0FFFF21        adc eax,0x21ffffc0
0003309D  C0FFFF            sar bh,byte 0xff
000330A0  DDC0              ffree st0
000330A2  FF                db 0xff
000330A3  FFB0C0FFFF95      push dword [eax-0x6a000040]
000330A9  C0FFFF            sar bh,byte 0xff
000330AC  C2C0FF            ret 0xffc0
000330AF  FFA7C0FFFFCB      jmp [edi-0x34000040]
000330B5  C0FFFF            sar bh,byte 0xff
000330B8  E6C0              out 0xc0,al
000330BA  FF                db 0xff
000330BB  FFD4              call esp
000330BD  C0FFFF            sar bh,byte 0xff
000330C0  8CC0              mov eax,es
000330C2  FF                db 0xff
000330C3  FF                db 0xff
000330C4  B9C0FFFF9E        mov ecx,0x9effffc0
000330C9  C0FFFF            sar bh,byte 0xff
000330CC  54                push esp
000330CD  C4                db 0xc4
000330CE  FF                db 0xff
000330CF  FF                db 0xff
000330D0  3F                aas
000330D1  C4                db 0xc4
000330D2  FF                db 0xff
000330D3  FF69C4            jmp far [ecx-0x3c]
000330D6  FF                db 0xff
000330D7  FF1F              call far [edi]
000330D9  C5                db 0xc5
000330DA  FF                db 0xff
000330DB  FF1F              call far [edi]
000330DD  C5                db 0xc5
000330DE  FF                db 0xff
000330DF  FF1F              call far [edi]
000330E1  C5                db 0xc5
000330E2  FF                db 0xff
000330E3  FF1F              call far [edi]
000330E5  C5                db 0xc5
000330E6  FF                db 0xff
000330E7  FF1F              call far [edi]
000330E9  C5                db 0xc5
000330EA  FF                db 0xff
000330EB  FF1F              call far [edi]
000330ED  C5                db 0xc5
000330EE  FF                db 0xff
000330EF  FF1F              call far [edi]
000330F1  C5                db 0xc5
000330F2  FF                db 0xff
000330F3  FF1F              call far [edi]
000330F5  C5                db 0xc5
000330F6  FF                db 0xff
000330F7  FF1F              call far [edi]
000330F9  C5                db 0xc5
000330FA  FF                db 0xff
000330FB  FF1F              call far [edi]
000330FD  C5                db 0xc5
000330FE  FF                db 0xff
000330FF  FF1F              call far [edi]
00033101  C5                db 0xc5
00033102  FF                db 0xff
00033103  FF1F              call far [edi]
00033105  C5                db 0xc5
00033106  FF                db 0xff
00033107  FF                db 0xff
00033108  EC                in al,dx
00033109  C4                db 0xc4
0003310A  FF                db 0xff
0003310B  FF                db 0xff
0003310C  EC                in al,dx
0003310D  C4                db 0xc4
0003310E  FF                db 0xff
0003310F  FF                db 0xff
00033110  EC                in al,dx
00033111  C4                db 0xc4
00033112  FF                db 0xff
00033113  FF                db 0xff
00033114  EC                in al,dx
00033115  C4                db 0xc4
00033116  FF                db 0xff
00033117  FF                db 0xff
00033118  EC                in al,dx
00033119  C4                db 0xc4
0003311A  FF                db 0xff
0003311B  FF                db 0xff
0003311C  EC                in al,dx
0003311D  C4                db 0xc4
0003311E  FF                db 0xff
0003311F  FF                db 0xff
00033120  EC                in al,dx
00033121  C4                db 0xc4
00033122  FF                db 0xff
00033123  FF                db 0xff
00033124  EC                in al,dx
00033125  C4                db 0xc4
00033126  FF                db 0xff
00033127  FF                db 0xff
00033128  EC                in al,dx
00033129  C4                db 0xc4
0003312A  FF                db 0xff
0003312B  FF                db 0xff
0003312C  EC                in al,dx
0003312D  C4                db 0xc4
0003312E  FF                db 0xff
0003312F  FF                db 0xff
00033130  EC                in al,dx
00033131  C4                db 0xc4
00033132  FF                db 0xff
00033133  FF                db 0xff
00033134  EC                in al,dx
00033135  C4                db 0xc4
00033136  FF                db 0xff
00033137  FF1F              call far [edi]
00033139  C5                db 0xc5
0003313A  FF                db 0xff
0003313B  FF1F              call far [edi]
0003313D  C5                db 0xc5
0003313E  FF                db 0xff
0003313F  FF1F              call far [edi]
00033141  C5                db 0xc5
00033142  FF                db 0xff
00033143  FF1F              call far [edi]
00033145  C5                db 0xc5
00033146  FF                db 0xff
00033147  FF1F              call far [edi]
00033149  C5                db 0xc5
0003314A  FF                db 0xff
0003314B  FF1F              call far [edi]
0003314D  C5                db 0xc5
0003314E  FF                db 0xff
0003314F  FF1F              call far [edi]
00033151  C5                db 0xc5
00033152  FF                db 0xff
00033153  FF1F              call far [edi]
00033155  C5                db 0xc5
00033156  FF                db 0xff
00033157  FF                db 0xff
00033158  7EC4              jng 0x3311e
0003315A  FF                db 0xff
0003315B  FFB7C4FFFF73      push dword [edi+0x73ffffc4]
00033161  7075              jo 0x331d8
00033163  7269              jc 0x331ce
00033165  6F                outsd
00033166  7573              jnz 0x331db
00033168  5F                pop edi
00033169  6972713A20000A    imul esi,[edx+0x71],dword 0xa00203a
00033170  0000              add [eax],al
00033172  0000              add [eax],al
00033174  0000              add [eax],al
00033176  0000              add [eax],al
00033178  0000              add [eax],al
0003317A  0000              add [eax],al
0003317C  0000              add [eax],al
0003317E  0000              add [eax],al
00033180  2000              and [eax],al
00033182  45                inc ebp
00033183  7863              js 0x331e8
00033185  657074            gs jo 0x331fc
00033188  696F6E21202D2D    imul ebp,[edi+0x6e],dword 0x2d2d2021
0003318F  3E2000            and [ds:eax],al
00033192  0A0A              or cl,[edx]
00033194  004546            add [ebp+0x46],al
00033197  4C                dec esp
00033198  41                inc ecx
00033199  47                inc edi
0003319A  53                push ebx
0003319B  3A00              cmp al,[eax]
0003319D  43                inc ebx
0003319E  53                push ebx
0003319F  3A00              cmp al,[eax]
000331A1  45                inc ebp
000331A2  49                dec ecx
000331A3  50                push eax
000331A4  3A00              cmp al,[eax]
000331A6  45                inc ebp
000331A7  7272              jc 0x3321b
000331A9  6F                outsd
000331AA  7220              jc 0x331cc
000331AC  636F64            arpl [edi+0x64],bp
000331AF  653A00            cmp al,[gs:eax]
000331B2  0000              add [eax],al
000331B4  0000              add [eax],al
000331B6  0000              add [eax],al
000331B8  0000              add [eax],al
000331BA  0000              add [eax],al
000331BC  0000              add [eax],al
000331BE  0000              add [eax],al
000331C0  23444520          and eax,[ebp+eax*2+0x20]
000331C4  44                inc esp
000331C5  69766964652045    imul esi,[esi+0x69],dword 0x45206564
000331CC  7272              jc 0x33240
000331CE  6F                outsd
000331CF  7200              jc 0x331d1
000331D1  0000              add [eax],al
000331D3  0000              add [eax],al
000331D5  0000              add [eax],al
000331D7  0000              add [eax],al
000331D9  0000              add [eax],al
000331DB  0000              add [eax],al
000331DD  0000              add [eax],al
000331DF  0000              add [eax],al
000331E1  0000              add [eax],al
000331E3  0000              add [eax],al
000331E5  0000              add [eax],al
000331E7  0000              add [eax],al
000331E9  0000              add [eax],al
000331EB  0000              add [eax],al
000331ED  0000              add [eax],al
000331EF  0000              add [eax],al
000331F1  0000              add [eax],al
000331F3  0000              add [eax],al
000331F5  0000              add [eax],al
000331F7  0000              add [eax],al
000331F9  0000              add [eax],al
000331FB  0000              add [eax],al
000331FD  0000              add [eax],al
000331FF  0023              add [ebx],ah
00033201  44                inc esp
00033202  42                inc edx
00033203  205245            and [edx+0x45],dl
00033206  53                push ebx
00033207  45                inc ebp
00033208  52                push edx
00033209  56                push esi
0003320A  45                inc ebp
0003320B  44                inc esp
0003320C  0000              add [eax],al
0003320E  0000              add [eax],al
00033210  0000              add [eax],al
00033212  0000              add [eax],al
00033214  0000              add [eax],al
00033216  0000              add [eax],al
00033218  0000              add [eax],al
0003321A  0000              add [eax],al
0003321C  0000              add [eax],al
0003321E  0000              add [eax],al
00033220  0000              add [eax],al
00033222  0000              add [eax],al
00033224  0000              add [eax],al
00033226  0000              add [eax],al
00033228  0000              add [eax],al
0003322A  0000              add [eax],al
0003322C  0000              add [eax],al
0003322E  0000              add [eax],al
00033230  0000              add [eax],al
00033232  0000              add [eax],al
00033234  0000              add [eax],al
00033236  0000              add [eax],al
00033238  0000              add [eax],al
0003323A  0000              add [eax],al
0003323C  0000              add [eax],al
0003323E  0000              add [eax],al
00033240  E280              loop 0x331c2
00033242  94                xchg eax,esp
00033243  2020              and [eax],ah
00033245  4E                dec esi
00033246  4D                dec ebp
00033247  49                dec ecx
00033248  20496E            and [ecx+0x6e],cl
0003324B  7465              jz 0x332b2
0003324D  7272              jc 0x332c1
0003324F  7570              jnz 0x332c1
00033251  7400              jz 0x33253
00033253  0000              add [eax],al
00033255  0000              add [eax],al
00033257  0000              add [eax],al
00033259  0000              add [eax],al
0003325B  0000              add [eax],al
0003325D  0000              add [eax],al
0003325F  0000              add [eax],al
00033261  0000              add [eax],al
00033263  0000              add [eax],al
00033265  0000              add [eax],al
00033267  0000              add [eax],al
00033269  0000              add [eax],al
0003326B  0000              add [eax],al
0003326D  0000              add [eax],al
0003326F  0000              add [eax],al
00033271  0000              add [eax],al
00033273  0000              add [eax],al
00033275  0000              add [eax],al
00033277  0000              add [eax],al
00033279  0000              add [eax],al
0003327B  0000              add [eax],al
0003327D  0000              add [eax],al
0003327F  0023              add [ebx],ah
00033281  42                inc edx
00033282  50                push eax
00033283  204272            and [edx+0x72],al
00033286  6561              gs popa
00033288  6B706F69          imul esi,[eax+0x6f],byte +0x69
0003328C  6E                outsb
0003328D  7400              jz 0x3328f
0003328F  0000              add [eax],al
00033291  0000              add [eax],al
00033293  0000              add [eax],al
00033295  0000              add [eax],al
00033297  0000              add [eax],al
00033299  0000              add [eax],al
0003329B  0000              add [eax],al
0003329D  0000              add [eax],al
0003329F  0000              add [eax],al
000332A1  0000              add [eax],al
000332A3  0000              add [eax],al
000332A5  0000              add [eax],al
000332A7  0000              add [eax],al
000332A9  0000              add [eax],al
000332AB  0000              add [eax],al
000332AD  0000              add [eax],al
000332AF  0000              add [eax],al
000332B1  0000              add [eax],al
000332B3  0000              add [eax],al
000332B5  0000              add [eax],al
000332B7  0000              add [eax],al
000332B9  0000              add [eax],al
000332BB  0000              add [eax],al
000332BD  0000              add [eax],al
000332BF  0023              add [ebx],ah
000332C1  4F                dec edi
000332C2  46                inc esi
000332C3  204F76            and [edi+0x76],cl
000332C6  657266            gs jc 0x3332f
000332C9  6C                insb
000332CA  6F                outsd
000332CB  7700              ja 0x332cd
000332CD  0000              add [eax],al
000332CF  0000              add [eax],al
000332D1  0000              add [eax],al
000332D3  0000              add [eax],al
000332D5  0000              add [eax],al
000332D7  0000              add [eax],al
000332D9  0000              add [eax],al
000332DB  0000              add [eax],al
000332DD  0000              add [eax],al
000332DF  0000              add [eax],al
000332E1  0000              add [eax],al
000332E3  0000              add [eax],al
000332E5  0000              add [eax],al
000332E7  0000              add [eax],al
000332E9  0000              add [eax],al
000332EB  0000              add [eax],al
000332ED  0000              add [eax],al
000332EF  0000              add [eax],al
000332F1  0000              add [eax],al
000332F3  0000              add [eax],al
000332F5  0000              add [eax],al
000332F7  0000              add [eax],al
000332F9  0000              add [eax],al
000332FB  0000              add [eax],al
000332FD  0000              add [eax],al
000332FF  0023              add [ebx],ah
00033301  42                inc edx
00033302  52                push edx
00033303  20424F            and [edx+0x4f],al
00033306  55                push ebp
00033307  4E                dec esi
00033308  44                inc esp
00033309  205261            and [edx+0x61],dl
0003330C  6E                outsb
0003330D  6765204578        and [gs:di+0x78],al
00033312  636565            arpl [ebp+0x65],sp
00033315  6465640000        add [fs:eax],al
0003331A  0000              add [eax],al
0003331C  0000              add [eax],al
0003331E  0000              add [eax],al
00033320  0000              add [eax],al
00033322  0000              add [eax],al
00033324  0000              add [eax],al
00033326  0000              add [eax],al
00033328  0000              add [eax],al
0003332A  0000              add [eax],al
0003332C  0000              add [eax],al
0003332E  0000              add [eax],al
00033330  0000              add [eax],al
00033332  0000              add [eax],al
00033334  0000              add [eax],al
00033336  0000              add [eax],al
00033338  0000              add [eax],al
0003333A  0000              add [eax],al
0003333C  0000              add [eax],al
0003333E  0000              add [eax],al
00033340  235544            and edx,[ebp+0x44]
00033343  20496E            and [ecx+0x6e],cl
00033346  7661              jna 0x333a9
00033348  6C                insb
00033349  6964204F70636F64  imul esp,[eax+0x4f],dword 0x646f6370
00033351  652028            and [gs:eax],ch
00033354  55                push ebp
00033355  6E                outsb
00033356  646566696E656420  imul bp,[gs:esi+0x65],word 0x2064
0003335E  4F                dec edi
0003335F  7063              jo 0x333c4
00033361  6F                outsd
00033362  64652900          sub [gs:eax],eax
00033366  0000              add [eax],al
00033368  0000              add [eax],al
0003336A  0000              add [eax],al
0003336C  0000              add [eax],al
0003336E  0000              add [eax],al
00033370  0000              add [eax],al
00033372  0000              add [eax],al
00033374  0000              add [eax],al
00033376  0000              add [eax],al
00033378  0000              add [eax],al
0003337A  0000              add [eax],al
0003337C  0000              add [eax],al
0003337E  0000              add [eax],al
00033380  234E4D            and ecx,[esi+0x4d]
00033383  20446576          and [ebp+0x76],al
00033387  696365204E6F74    imul esp,[ebx+0x65],dword 0x746f4e20
0003338E  204176            and [ecx+0x76],al
00033391  61                popa
00033392  696C61626C652028  imul ebp,[ecx+0x62],dword 0x2820656c
0003339A  4E                dec esi
0003339B  6F                outsd
0003339C  204D61            and [ebp+0x61],cl
0003339F  7468              jz 0x33409
000333A1  20436F            and [ebx+0x6f],al
000333A4  7072              jo 0x33418
000333A6  6F                outsd
000333A7  636573            arpl [ebp+0x73],sp
000333AA  736F              jnc 0x3341b
000333AC  7229              jc 0x333d7
000333AE  0000              add [eax],al
000333B0  0000              add [eax],al
000333B2  0000              add [eax],al
000333B4  0000              add [eax],al
000333B6  0000              add [eax],al
000333B8  0000              add [eax],al
000333BA  0000              add [eax],al
000333BC  0000              add [eax],al
000333BE  0000              add [eax],al
000333C0  23444620          and eax,[esi+eax*2+0x20]
000333C4  44                inc esp
000333C5  6F                outsd
000333C6  7562              jnz 0x3342a
000333C8  6C                insb
000333C9  65204661          and [gs:esi+0x61],al
000333CD  756C              jnz 0x3343b
000333CF  7400              jz 0x333d1
000333D1  0000              add [eax],al
000333D3  0000              add [eax],al
000333D5  0000              add [eax],al
000333D7  0000              add [eax],al
000333D9  0000              add [eax],al
000333DB  0000              add [eax],al
000333DD  0000              add [eax],al
000333DF  0000              add [eax],al
000333E1  0000              add [eax],al
000333E3  0000              add [eax],al
000333E5  0000              add [eax],al
000333E7  0000              add [eax],al
000333E9  0000              add [eax],al
000333EB  0000              add [eax],al
000333ED  0000              add [eax],al
000333EF  0000              add [eax],al
000333F1  0000              add [eax],al
000333F3  0000              add [eax],al
000333F5  0000              add [eax],al
000333F7  0000              add [eax],al
000333F9  0000              add [eax],al
000333FB  0000              add [eax],al
000333FD  0000              add [eax],al
000333FF  0020              add [eax],ah
00033401  2020              and [eax],ah
00033403  20436F            and [ebx+0x6f],al
00033406  7072              jo 0x3347a
00033408  6F                outsd
00033409  636573            arpl [ebp+0x73],sp
0003340C  736F              jnc 0x3347d
0003340E  7220              jc 0x33430
00033410  53                push ebx
00033411  65676D            gs a16 insd
00033414  656E              gs outsb
00033416  7420              jz 0x33438
00033418  4F                dec edi
00033419  7665              jna 0x33480
0003341B  7272              jc 0x3348f
0003341D  756E              jnz 0x3348d
0003341F  2028              and [eax],ch
00033421  7265              jc 0x33488
00033423  7365              jnc 0x3348a
00033425  7276              jc 0x3349d
00033427  65642900          sub [fs:eax],eax
0003342B  0000              add [eax],al
0003342D  0000              add [eax],al
0003342F  0000              add [eax],al
00033431  0000              add [eax],al
00033433  0000              add [eax],al
00033435  0000              add [eax],al
00033437  0000              add [eax],al
00033439  0000              add [eax],al
0003343B  0000              add [eax],al
0003343D  0000              add [eax],al
0003343F  0023              add [ebx],ah
00033441  54                push esp
00033442  53                push ebx
00033443  20496E            and [ecx+0x6e],cl
00033446  7661              jna 0x334a9
00033448  6C                insb
00033449  6964205453530000  imul esp,[eax+0x54],dword 0x5353
00033451  0000              add [eax],al
00033453  0000              add [eax],al
00033455  0000              add [eax],al
00033457  0000              add [eax],al
00033459  0000              add [eax],al
0003345B  0000              add [eax],al
0003345D  0000              add [eax],al
0003345F  0000              add [eax],al
00033461  0000              add [eax],al
00033463  0000              add [eax],al
00033465  0000              add [eax],al
00033467  0000              add [eax],al
00033469  0000              add [eax],al
0003346B  0000              add [eax],al
0003346D  0000              add [eax],al
0003346F  0000              add [eax],al
00033471  0000              add [eax],al
00033473  0000              add [eax],al
00033475  0000              add [eax],al
00033477  0000              add [eax],al
00033479  0000              add [eax],al
0003347B  0000              add [eax],al
0003347D  0000              add [eax],al
0003347F  0023              add [ebx],ah
00033481  4E                dec esi
00033482  50                push eax
00033483  205365            and [ebx+0x65],dl
00033486  676D              a16 insd
00033488  656E              gs outsb
0003348A  7420              jz 0x334ac
0003348C  4E                dec esi
0003348D  6F                outsd
0003348E  7420              jz 0x334b0
00033490  50                push eax
00033491  7265              jc 0x334f8
00033493  7365              jnc 0x334fa
00033495  6E                outsb
00033496  7400              jz 0x33498
00033498  0000              add [eax],al
0003349A  0000              add [eax],al
0003349C  0000              add [eax],al
0003349E  0000              add [eax],al
000334A0  0000              add [eax],al
000334A2  0000              add [eax],al
000334A4  0000              add [eax],al
000334A6  0000              add [eax],al
000334A8  0000              add [eax],al
000334AA  0000              add [eax],al
000334AC  0000              add [eax],al
000334AE  0000              add [eax],al
000334B0  0000              add [eax],al
000334B2  0000              add [eax],al
000334B4  0000              add [eax],al
000334B6  0000              add [eax],al
000334B8  0000              add [eax],al
000334BA  0000              add [eax],al
000334BC  0000              add [eax],al
000334BE  0000              add [eax],al
000334C0  235353            and edx,[ebx+0x53]
000334C3  205374            and [ebx+0x74],dl
000334C6  61                popa
000334C7  636B2D            arpl [ebx+0x2d],bp
000334CA  53                push ebx
000334CB  65676D            gs a16 insd
000334CE  656E              gs outsb
000334D0  7420              jz 0x334f2
000334D2  46                inc esi
000334D3  61                popa
000334D4  756C              jnz 0x33542
000334D6  7400              jz 0x334d8
000334D8  0000              add [eax],al
000334DA  0000              add [eax],al
000334DC  0000              add [eax],al
000334DE  0000              add [eax],al
000334E0  0000              add [eax],al
000334E2  0000              add [eax],al
000334E4  0000              add [eax],al
000334E6  0000              add [eax],al
000334E8  0000              add [eax],al
000334EA  0000              add [eax],al
000334EC  0000              add [eax],al
000334EE  0000              add [eax],al
000334F0  0000              add [eax],al
000334F2  0000              add [eax],al
000334F4  0000              add [eax],al
000334F6  0000              add [eax],al
000334F8  0000              add [eax],al
000334FA  0000              add [eax],al
000334FC  0000              add [eax],al
000334FE  0000              add [eax],al
00033500  234750            and eax,[edi+0x50]
00033503  204765            and [edi+0x65],al
00033506  6E                outsb
00033507  657261            gs jc 0x3356b
0003350A  6C                insb
0003350B  205072            and [eax+0x72],dl
0003350E  6F                outsd
0003350F  7465              jz 0x33576
00033511  6374696F          arpl [ecx+ebp*2+0x6f],si
00033515  6E                outsb
00033516  0000              add [eax],al
00033518  0000              add [eax],al
0003351A  0000              add [eax],al
0003351C  0000              add [eax],al
0003351E  0000              add [eax],al
00033520  0000              add [eax],al
00033522  0000              add [eax],al
00033524  0000              add [eax],al
00033526  0000              add [eax],al
00033528  0000              add [eax],al
0003352A  0000              add [eax],al
0003352C  0000              add [eax],al
0003352E  0000              add [eax],al
00033530  0000              add [eax],al
00033532  0000              add [eax],al
00033534  0000              add [eax],al
00033536  0000              add [eax],al
00033538  0000              add [eax],al
0003353A  0000              add [eax],al
0003353C  0000              add [eax],al
0003353E  0000              add [eax],al
00033540  235046            and edx,[eax+0x46]
00033543  205061            and [eax+0x61],dl
00033546  6765204661        and [gs:bp+0x61],al
0003354B  756C              jnz 0x335b9
0003354D  7400              jz 0x3354f
0003354F  0000              add [eax],al
00033551  0000              add [eax],al
00033553  0000              add [eax],al
00033555  0000              add [eax],al
00033557  0000              add [eax],al
00033559  0000              add [eax],al
0003355B  0000              add [eax],al
0003355D  0000              add [eax],al
0003355F  0000              add [eax],al
00033561  0000              add [eax],al
00033563  0000              add [eax],al
00033565  0000              add [eax],al
00033567  0000              add [eax],al
00033569  0000              add [eax],al
0003356B  0000              add [eax],al
0003356D  0000              add [eax],al
0003356F  0000              add [eax],al
00033571  0000              add [eax],al
00033573  0000              add [eax],al
00033575  0000              add [eax],al
00033577  0000              add [eax],al
00033579  0000              add [eax],al
0003357B  0000              add [eax],al
0003357D  0000              add [eax],al
0003357F  00E2              add dl,ah
00033581  8094202028496E74  adc byte [eax+0x6e492820],0x74
00033589  656C              gs insb
0003358B  207265            and [edx+0x65],dh
0003358E  7365              jnc 0x335f5
00033590  7276              jc 0x33608
00033592  65642E20446F20    and [cs:edi+ebp*2+0x20],al
00033599  6E                outsb
0003359A  6F                outsd
0003359B  7420              jz 0x335bd
0003359D  7573              jnz 0x33612
0003359F  652E2900          sub [cs:eax],eax
000335A3  0000              add [eax],al
000335A5  0000              add [eax],al
000335A7  0000              add [eax],al
000335A9  0000              add [eax],al
000335AB  0000              add [eax],al
000335AD  0000              add [eax],al
000335AF  0000              add [eax],al
000335B1  0000              add [eax],al
000335B3  0000              add [eax],al
000335B5  0000              add [eax],al
000335B7  0000              add [eax],al
000335B9  0000              add [eax],al
000335BB  0000              add [eax],al
000335BD  0000              add [eax],al
000335BF  0023              add [ebx],ah
000335C1  4D                dec ebp
000335C2  46                inc esi
000335C3  207838            and [eax+0x38],bh
000335C6  37                aaa
000335C7  204650            and [esi+0x50],al
000335CA  55                push ebp
000335CB  20466C            and [esi+0x6c],al
000335CE  6F                outsd
000335CF  61                popa
000335D0  7469              jz 0x3363b
000335D2  6E                outsb
000335D3  672D506F696E      sub eax,0x6e696f50
000335D9  7420              jz 0x335fb
000335DB  45                inc ebp
000335DC  7272              jc 0x33650
000335DE  6F                outsd
000335DF  7220              jc 0x33601
000335E1  284D61            sub [ebp+0x61],cl
000335E4  7468              jz 0x3364e
000335E6  204661            and [esi+0x61],al
000335E9  756C              jnz 0x33657
000335EB  7429              jz 0x33616
000335ED  0000              add [eax],al
000335EF  0000              add [eax],al
000335F1  0000              add [eax],al
000335F3  0000              add [eax],al
000335F5  0000              add [eax],al
000335F7  0000              add [eax],al
000335F9  0000              add [eax],al
000335FB  0000              add [eax],al
000335FD  0000              add [eax],al
000335FF  0023              add [ebx],ah
00033601  41                inc ecx
00033602  43                inc ebx
00033603  20416C            and [ecx+0x6c],al
00033606  69676E6D656E74    imul esp,[edi+0x6e],dword 0x746e656d
0003360D  204368            and [ebx+0x68],al
00033610  65636B00          arpl [gs:ebx+0x0],bp
00033614  0000              add [eax],al
00033616  0000              add [eax],al
00033618  0000              add [eax],al
0003361A  0000              add [eax],al
0003361C  0000              add [eax],al
0003361E  0000              add [eax],al
00033620  0000              add [eax],al
00033622  0000              add [eax],al
00033624  0000              add [eax],al
00033626  0000              add [eax],al
00033628  0000              add [eax],al
0003362A  0000              add [eax],al
0003362C  0000              add [eax],al
0003362E  0000              add [eax],al
00033630  0000              add [eax],al
00033632  0000              add [eax],al
00033634  0000              add [eax],al
00033636  0000              add [eax],al
00033638  0000              add [eax],al
0003363A  0000              add [eax],al
0003363C  0000              add [eax],al
0003363E  0000              add [eax],al
00033640  234D43            and ecx,[ebp+0x43]
00033643  204D61            and [ebp+0x61],cl
00033646  636869            arpl [eax+0x69],bp
00033649  6E                outsb
0003364A  65204368          and [gs:ebx+0x68],al
0003364E  65636B00          arpl [gs:ebx+0x0],bp
00033652  0000              add [eax],al
00033654  0000              add [eax],al
00033656  0000              add [eax],al
00033658  0000              add [eax],al
0003365A  0000              add [eax],al
0003365C  0000              add [eax],al
0003365E  0000              add [eax],al
00033660  0000              add [eax],al
00033662  0000              add [eax],al
00033664  0000              add [eax],al
00033666  0000              add [eax],al
00033668  0000              add [eax],al
0003366A  0000              add [eax],al
0003366C  0000              add [eax],al
0003366E  0000              add [eax],al
00033670  0000              add [eax],al
00033672  0000              add [eax],al
00033674  0000              add [eax],al
00033676  0000              add [eax],al
00033678  0000              add [eax],al
0003367A  0000              add [eax],al
0003367C  0000              add [eax],al
0003367E  0000              add [eax],al
00033680  235846            and ebx,[eax+0x46]
00033683  205349            and [ebx+0x49],dl
00033686  4D                dec ebp
00033687  44                inc esp
00033688  20466C            and [esi+0x6c],al
0003368B  6F                outsd
0003368C  61                popa
0003368D  7469              jz 0x336f8
0003368F  6E                outsb
00033690  672D506F696E      sub eax,0x6e696f50
00033696  7420              jz 0x336b8
00033698  45                inc ebp
00033699  7863              js 0x336fe
0003369B  657074            gs jo 0x33712
0003369E  696F6E00000000    imul ebp,[edi+0x6e],dword 0x0
000336A5  0000              add [eax],al
000336A7  0000              add [eax],al
000336A9  0000              add [eax],al
000336AB  0000              add [eax],al
000336AD  0000              add [eax],al
000336AF  0000              add [eax],al
000336B1  0000              add [eax],al
000336B3  0000              add [eax],al
000336B5  0000              add [eax],al
000336B7  0000              add [eax],al
000336B9  0000              add [eax],al
000336BB  0000              add [eax],al
000336BD  0000              add [eax],al
000336BF  001400            add [eax+eax],dl
000336C2  0000              add [eax],al
000336C4  0000              add [eax],al
000336C6  0000              add [eax],al
000336C8  017A52            add [edx+0x52],edi
000336CB  0001              add [ecx],al
000336CD  7C08              jl 0x336d7
000336CF  011B              add [ebx],ebx
000336D1  0C04              or al,0x4
000336D3  0488              add al,0x88
000336D5  0100              add [eax],eax
000336D7  0020              add [eax],ah
000336D9  0000              add [eax],al
000336DB  001C00            add [eax+eax],bl
000336DE  0000              add [eax],al
000336E0  38D0              cmp al,dl
000336E2  FF                db 0xff
000336E3  FFC3              inc ebx
000336E5  0000              add [eax],al
000336E7  0000              add [eax],al
000336E9  41                inc ecx
000336EA  0E                push cs
000336EB  088502420D05      or [ebp+0x50d4202],al
000336F1  44                inc esp
000336F2  830302            add dword [ebx],byte +0x2
000336F5  BBC5C30C04        mov ebx,0x40cc3c5
000336FA  0400              add al,0x0
000336FC  1000              adc [eax],al
000336FE  0000              add [eax],al
00033700  40                inc eax
00033701  0000              add [eax],al
00033703  00D7              add bh,dl
00033705  D0FF              sar bh,1
00033707  FF0400            inc dword [eax+eax]
0003370A  0000              add [eax],al
0003370C  0000              add [eax],al
0003370E  0000              add [eax],al
00033710  1800              sbb [eax],al
00033712  0000              add [eax],al
00033714  54                push esp
00033715  0000              add [eax],al
00033717  00C7              add bh,al
00033719  D0FF              sar bh,1
0003371B  FF8902000000      dec dword [ecx+0x2]
00033721  41                inc ecx
00033722  0E                push cs
00033723  088502420D05      or [ebp+0x50d4202],al
00033729  44                inc esp
0003372A  830318            add dword [ebx],byte +0x18
0003372D  0000              add [eax],al
0003372F  007000            add [eax+0x0],dh
00033732  0000              add [eax],al
00033734  34D3              xor al,0xd3
00033736  FF                db 0xff
00033737  FF29              jmp far [ecx]
00033739  0000              add [eax],al
0003373B  0000              add [eax],al
0003373D  41                inc ecx
0003373E  0E                push cs
0003373F  088502420D05      or [ebp+0x50d4202],al
00033745  44                inc esp
00033746  830318            add dword [ebx],byte +0x18
00033749  0000              add [eax],al
0003374B  008C00000041D3    add [eax+eax-0x2cbf0000],cl
00033752  FF                db 0xff
00033753  FF0F              dec dword [edi]
00033755  0000              add [eax],al
00033757  0000              add [eax],al
00033759  41                inc ecx
0003375A  0E                push cs
0003375B  088502420D05      or [ebp+0x50d4202],al
00033761  0000              add [eax],al
00033763  0018              add [eax],bl
00033765  0000              add [eax],al
00033767  00A800000034      add [eax+0x34000000],ch
0003376D  D3FF              sar edi,cl
0003376F  FF0F              dec dword [edi]
00033771  0000              add [eax],al
00033773  0000              add [eax],al
00033775  41                inc ecx
00033776  0E                push cs
00033777  088502420D05      or [ebp+0x50d4202],al
0003377D  0000              add [eax],al
0003377F  0010              add [eax],dl
00033781  0000              add [eax],al
00033783  00C4              add ah,al
00033785  0000              add [eax],al
00033787  0027              add [edi],ah
00033789  D3FF              sar edi,cl
0003378B  FF0400            inc dword [eax+eax]
0003378E  0000              add [eax],al
00033790  0000              add [eax],al
00033792  0000              add [eax],al
00033794  2000              and [eax],al
00033796  0000              add [eax],al
00033798  D800              fadd dword [eax]
0003379A  0000              add [eax],al
0003379C  17                pop ss
0003379D  D3FF              sar edi,cl
0003379F  FF6200            jmp [edx+0x0]
000337A2  0000              add [eax],al
000337A4  00410E            add [ecx+0xe],al
000337A7  088502420D05      or [ebp+0x50d4202],al
000337AD  44                inc esp
000337AE  830302            add dword [ebx],byte +0x2
000337B1  5A                pop edx
000337B2  C5                db 0xc5
000337B3  C3                ret
000337B4  0C04              or al,0x4
000337B6  0400              add al,0x0
000337B8  2000              and [eax],al
000337BA  0000              add [eax],al
000337BC  FC                cld
000337BD  0000              add [eax],al
000337BF  0055D3            add [ebp-0x2d],dl
000337C2  FF                db 0xff
000337C3  FF                db 0xff
000337C4  3A00              cmp al,[eax]
000337C6  0000              add [eax],al
000337C8  00410E            add [ecx+0xe],al
000337CB  088502420D05      or [ebp+0x50d4202],al
000337D1  44                inc esp
000337D2  830372            add dword [ebx],byte +0x72
000337D5  C5                db 0xc5
000337D6  C3                ret
000337D7  0C04              or al,0x4
000337D9  0400              add al,0x0
000337DB  0020              add [eax],ah
000337DD  0000              add [eax],al
000337DF  0020              add [eax],ah
000337E1  0100              add [eax],eax
000337E3  006BD3            add [ebx-0x2d],ch
000337E6  FF                db 0xff
000337E7  FF6900            jmp far [ecx+0x0]
000337EA  0000              add [eax],al
000337EC  00410E            add [ecx+0xe],al
000337EF  088502420D05      or [ebp+0x50d4202],al
000337F5  44                inc esp
000337F6  830302            add dword [ebx],byte +0x2
000337F9  61                popa
000337FA  C5                db 0xc5
000337FB  C3                ret
000337FC  0C04              or al,0x4
000337FE  0400              add al,0x0
00033800  2000              and [eax],al
00033802  0000              add [eax],al
00033804  44                inc esp
00033805  0100              add [eax],eax
00033807  00B0D3FFFF79      add [eax+0x79ffffd3],dh
0003380D  0000              add [eax],al
0003380F  0000              add [eax],al
00033811  41                inc ecx
00033812  0E                push cs
00033813  088502420D05      or [ebp+0x50d4202],al
00033819  44                inc esp
0003381A  830302            add dword [ebx],byte +0x2
0003381D  71C5              jno 0x337e4
0003381F  C3                ret
00033820  0C04              or al,0x4
00033822  0400              add al,0x0
00033824  2000              and [eax],al
00033826  0000              add [eax],al
00033828  6801000005        push dword 0x5000001
0003382D  D4FF              aam 0xff
0003382F  FFC0              inc eax
00033831  0000              add [eax],al
00033833  0000              add [eax],al
00033835  41                inc ecx
00033836  0E                push cs
00033837  088502420D05      or [ebp+0x50d4202],al
0003383D  44                inc esp
0003383E  830302            add dword [ebx],byte +0x2
00033841  B8C5C30C04        mov eax,0x40cc3c5
00033846  0400              add al,0x0
00033848  2000              and [eax],al
0003384A  0000              add [eax],al
0003384C  8C01              mov [ecx],es
0003384E  0000              add [eax],al
00033850  A1D4FFFFB9        mov eax,[0xb9ffffd4]
00033855  0400              add al,0x0
00033857  0000              add [eax],al
00033859  41                inc ecx
0003385A  0E                push cs
0003385B  088502420D05      or [ebp+0x50d4202],al
00033861  44                inc esp
00033862  830303            add dword [ebx],byte +0x3
00033865  B104              mov cl,0x4
00033867  C5                db 0xc5
00033868  C3                ret
00033869  0C04              or al,0x4
0003386B  0420              add al,0x20
0003386D  0000              add [eax],al
0003386F  00B001000036      add [eax+0x36000001],dh
00033875  D9FF              fcos
00033877  FF7600            push dword [esi+0x0]
0003387A  0000              add [eax],al
0003387C  00410E            add [ecx+0xe],al
0003387F  088502420D05      or [ebp+0x50d4202],al
00033885  44                inc esp
00033886  830302            add dword [ebx],byte +0x2
00033889  6E                outsb
0003388A  C5                db 0xc5
0003388B  C3                ret
0003388C  0C04              or al,0x4
0003388E  0400              add al,0x0
00033890  2000              and [eax],al
00033892  0000              add [eax],al
00033894  D401              aam 0x1
00033896  0000              add [eax],al
00033898  88D9              mov cl,bl
0003389A  FF                db 0xff
0003389B  FF3400            push dword [eax+eax]
0003389E  0000              add [eax],al
000338A0  00410E            add [ecx+0xe],al
000338A3  088502420D05      or [ebp+0x50d4202],al
000338A9  44                inc esp
000338AA  83036C            add dword [ebx],byte +0x6c
000338AD  C5                db 0xc5
000338AE  C3                ret
000338AF  0C04              or al,0x4
000338B1  0400              add al,0x0
000338B3  0020              add [eax],ah
000338B5  0000              add [eax],al
000338B7  00F8              add al,bh
000338B9  0100              add [eax],eax
000338BB  0098D9FFFF2D      add [eax+0x2dffffd9],bl
000338C1  0000              add [eax],al
000338C3  0000              add [eax],al
000338C5  41                inc ecx
000338C6  0E                push cs
000338C7  088502420D05      or [ebp+0x50d4202],al
000338CD  44                inc esp
000338CE  830365            add dword [ebx],byte +0x65
000338D1  C5                db 0xc5
000338D2  C3                ret
000338D3  0C04              or al,0x4
000338D5  0400              add al,0x0
000338D7  0020              add [eax],ah
000338D9  0000              add [eax],al
000338DB  001C02            add [edx+eax],bl
000338DE  0000              add [eax],al
000338E0  A1D9FFFF70        mov eax,[0x70ffffd9]
000338E5  0000              add [eax],al
000338E7  0000              add [eax],al
000338E9  41                inc ecx
000338EA  0E                push cs
000338EB  088502420D05      or [ebp+0x50d4202],al
000338F1  44                inc esp
000338F2  830302            add dword [ebx],byte +0x2
000338F5  68C5C30C04        push dword 0x40cc3c5
000338FA  0400              add al,0x0
000338FC  1800              sbb [eax],al
000338FE  0000              add [eax],al
00033900  40                inc eax
00033901  0200              add al,[eax]
00033903  00ED              add ch,ch
00033905  D9FF              fcos
00033907  FF9600000000      call [esi+0x0]
0003390D  41                inc ecx
0003390E  0E                push cs
0003390F  088502420D05      or [ebp+0x50d4202],al
00033915  44                inc esp
00033916  830320            add dword [ebx],byte +0x20
00033919  0000              add [eax],al
0003391B  005C0200          add [edx+eax+0x0],bl
0003391F  0067DA            add [edi-0x26],ah
00033922  FF                db 0xff
00033923  FF5200            call [edx+0x0]
00033926  0000              add [eax],al
00033928  00410E            add [ecx+0xe],al
0003392B  088502420D05      or [ebp+0x50d4202],al
00033931  44                inc esp
00033932  830302            add dword [ebx],byte +0x2
00033935  4A                dec edx
00033936  C5                db 0xc5
00033937  C3                ret
00033938  0C04              or al,0x4
0003393A  0400              add al,0x0
0003393C  2000              and [eax],al
0003393E  0000              add [eax],al
00033940  800200            add byte [edx],0x0
00033943  0095DAFFFF56      add [ebp+0x56ffffda],dl
00033949  0100              add [eax],eax
0003394B  0000              add [eax],al
0003394D  41                inc ecx
0003394E  0E                push cs
0003394F  088502420D05      or [ebp+0x50d4202],al
00033955  44                inc esp
00033956  830303            add dword [ebx],byte +0x3
00033959  4E                dec esi
0003395A  01C5              add ebp,eax
0003395C  C3                ret
0003395D  0C04              or al,0x4
0003395F  041C              add al,0x1c
00033961  0000              add [eax],al
00033963  00A4020000C7DB    add [edx+eax-0x24390000],ah
0003396A  FF                db 0xff
0003396B  FF                db 0xff
0003396C  7A00              jpe 0x3396e
0003396E  0000              add [eax],al
00033970  00410E            add [ecx+0xe],al
00033973  088502420D05      or [ebp+0x50d4202],al
00033979  0276C5            add dh,[esi-0x3b]
0003397C  0C04              or al,0x4
0003397E  0400              add al,0x0
00033980  2000              and [eax],al
00033982  0000              add [eax],al
00033984  C402              les eax,[edx]
00033986  0000              add [eax],al
00033988  21DC              and esp,ebx
0003398A  FF                db 0xff
0003398B  FF                db 0xff
0003398C  3F                aas
0003398D  0000              add [eax],al
0003398F  0000              add [eax],al
00033991  41                inc ecx
00033992  0E                push cs
00033993  088502420D05      or [ebp+0x50d4202],al
00033999  44                inc esp
0003399A  830377            add dword [ebx],byte +0x77
0003399D  C5                db 0xc5
0003399E  C3                ret
0003399F  0C04              or al,0x4
000339A1  0400              add al,0x0
000339A3  0020              add [eax],ah
000339A5  0000              add [eax],al
000339A7  00E8              add al,ch
000339A9  0200              add al,[eax]
000339AB  003CDC            add [esp+ebx*8],bh
000339AE  FF                db 0xff
000339AF  FF9A00000000      call far [edx+0x0]
000339B5  41                inc ecx
000339B6  0E                push cs
000339B7  088502420D05      or [ebp+0x50d4202],al
000339BD  44                inc esp
000339BE  830302            add dword [ebx],byte +0x2
000339C1  92                xchg eax,edx
000339C2  C5                db 0xc5
000339C3  C3                ret
000339C4  0C04              or al,0x4
000339C6  0400              add al,0x0
000339C8  2000              and [eax],al
000339CA  0000              add [eax],al
000339CC  0C03              or al,0x3
000339CE  0000              add [eax],al
000339D0  B2DC              mov dl,0xdc
000339D2  FF                db 0xff
000339D3  FF6A00            jmp far [edx+0x0]
000339D6  0000              add [eax],al
000339D8  00410E            add [ecx+0xe],al
000339DB  088502420D05      or [ebp+0x50d4202],al
000339E1  44                inc esp
000339E2  830302            add dword [ebx],byte +0x2
000339E5  62                db 0x62
000339E6  C5                db 0xc5
000339E7  C3                ret
000339E8  0C04              or al,0x4
000339EA  0400              add al,0x0
000339EC  2000              and [eax],al
000339EE  0000              add [eax],al
000339F0  3003              xor [ebx],al
000339F2  0000              add [eax],al
000339F4  F8                clc
000339F5  DCFF              fdiv to st7
000339F7  FF9701000000      call [edi+0x1]
000339FD  41                inc ecx
000339FE  0E                push cs
000339FF  088502420D05      or [ebp+0x50d4202],al
00033A05  44                inc esp
00033A06  830303            add dword [ebx],byte +0x3
00033A09  8F01              pop dword [ecx]
00033A0B  C5                db 0xc5
00033A0C  C3                ret
00033A0D  0C04              or al,0x4
00033A0F  041C              add al,0x1c
00033A11  0000              add [eax],al
00033A13  00540300          add [ebx+eax+0x0],dl
00033A17  006BDE            add [ebx-0x22],ch
00033A1A  FF                db 0xff
00033A1B  FF2B              jmp far [ebx]
00033A1D  0000              add [eax],al
00033A1F  0000              add [eax],al
00033A21  41                inc ecx
00033A22  0E                push cs
00033A23  088502420D05      or [ebp+0x50d4202],al
00033A29  67C50C            lds ecx,[si]
00033A2C  0404              add al,0x4
00033A2E  0000              add [eax],al
00033A30  2000              and [eax],al
00033A32  0000              add [eax],al
00033A34  7403              jz 0x33a39
00033A36  0000              add [eax],al
00033A38  76DE              jna 0x33a18
00033A3A  FF                db 0xff
00033A3B  FF                db 0xff
00033A3C  EC                in al,dx
00033A3D  0200              add al,[eax]
00033A3F  0000              add [eax],al
00033A41  41                inc ecx
00033A42  0E                push cs
00033A43  088502420D05      or [ebp+0x50d4202],al
00033A49  44                inc esp
00033A4A  830303            add dword [ebx],byte +0x3
00033A4D  E402              in al,0x2
00033A4F  C5                db 0xc5
00033A50  C3                ret
00033A51  0C04              or al,0x4
00033A53  041C              add al,0x1c
00033A55  0000              add [eax],al
00033A57  00980300003E      add [eax+0x3e000003],bl
00033A5D  E1FF              loope 0x33a5e
00033A5F  FF36              push dword [esi]
00033A61  0000              add [eax],al
00033A63  0000              add [eax],al
00033A65  41                inc ecx
00033A66  0E                push cs
00033A67  088502420D05      or [ebp+0x50d4202],al
00033A6D  72C5              jc 0x33a34
00033A6F  0C04              or al,0x4
00033A71  0400              add al,0x0
00033A73  0020              add [eax],ah
00033A75  0000              add [eax],al
00033A77  00B803000054      add [eax+0x54000003],bh
00033A7D  E1FF              loope 0x33a7e
00033A7F  FF7700            push dword [edi+0x0]
00033A82  0000              add [eax],al
00033A84  00410E            add [ecx+0xe],al
00033A87  088502420D05      or [ebp+0x50d4202],al
00033A8D  44                inc esp
00033A8E  830302            add dword [ebx],byte +0x2
00033A91  6F                outsd
00033A92  C5                db 0xc5
00033A93  C3                ret
00033A94  0C04              or al,0x4
00033A96  0400              add al,0x0
00033A98  2000              and [eax],al
00033A9A  0000              add [eax],al
00033A9C  DC03              fadd qword [ebx]
00033A9E  0000              add [eax],al
00033AA0  A7                cmpsd
00033AA1  E1FF              loope 0x33aa2
00033AA3  FF7700            push dword [edi+0x0]
00033AA6  0000              add [eax],al
00033AA8  00410E            add [ecx+0xe],al
00033AAB  088502420D05      or [ebp+0x50d4202],al
00033AB1  44                inc esp
00033AB2  830302            add dword [ebx],byte +0x2
00033AB5  6F                outsd
00033AB6  C5                db 0xc5
00033AB7  C3                ret
00033AB8  0C04              or al,0x4
00033ABA  0400              add al,0x0
00033ABC  2000              and [eax],al
00033ABE  0000              add [eax],al
00033AC0  000400            add [eax+eax],al
00033AC3  00FA              add dl,bh
00033AC5  E1FF              loope 0x33ac6
00033AC7  FF6C0000          jmp far [eax+eax+0x0]
00033ACB  0000              add [eax],al
00033ACD  41                inc ecx
00033ACE  0E                push cs
00033ACF  088502420D05      or [ebp+0x50d4202],al
00033AD5  44                inc esp
00033AD6  830302            add dword [ebx],byte +0x2
00033AD9  64                fs
00033ADA  C5                db 0xc5
00033ADB  C3                ret
00033ADC  0C04              or al,0x4
00033ADE  0400              add al,0x0
00033AE0  1C00              sbb al,0x0
00033AE2  0000              add [eax],al
00033AE4  2404              and al,0x4
00033AE6  0000              add [eax],al
00033AE8  42                inc edx
00033AE9  E2FF              loop 0x33aea
00033AEB  FF8A00000000      dec dword [edx+0x0]
00033AF1  41                inc ecx
00033AF2  0E                push cs
00033AF3  088502420D05      or [ebp+0x50d4202],al
00033AF9  0286C50C0404      add al,[esi+0x4040cc5]
00033AFF  001C00            add [eax+eax],bl
00033B02  0000              add [eax],al
00033B04  44                inc esp
00033B05  0400              add al,0x0
00033B07  00ACE2FFFF9800    add [edx+0x98ffff],ch
00033B0E  0000              add [eax],al
00033B10  00410E            add [ecx+0xe],al
00033B13  088502420D05      or [ebp+0x50d4202],al
00033B19  0294C50C040400    add dl,[ebp+eax*8+0x4040c]
00033B20  1000              adc [eax],al
00033B22  0000              add [eax],al
00033B24  640400            fs add al,0x0
00033B27  0024E3            add [ebx],ah
00033B2A  FF                db 0xff
00033B2B  FF0400            inc dword [eax+eax]
00033B2E  0000              add [eax],al
00033B30  0000              add [eax],al
00033B32  0000              add [eax],al
00033B34  2000              and [eax],al
00033B36  0000              add [eax],al
00033B38  7804              js 0x33b3e
00033B3A  0000              add [eax],al
00033B3C  14E3              adc al,0xe3
00033B3E  FF                db 0xff
00033B3F  FF                db 0xff
00033B40  E900000000        jmp 0x33b45
00033B45  41                inc ecx
00033B46  0E                push cs
00033B47  088502420D05      or [ebp+0x50d4202],al
00033B4D  44                inc esp
00033B4E  830302            add dword [ebx],byte +0x2
00033B51  E1C5              loope 0x33b18
00033B53  C3                ret
00033B54  0C04              or al,0x4
00033B56  0400              add al,0x0
00033B58  2000              and [eax],al
00033B5A  0000              add [eax],al
00033B5C  9C                pushf
00033B5D  0400              add al,0x0
00033B5F  00D9              add cl,bl
00033B61  E3FF              jecxz 0x33b62
00033B63  FF4A00            dec dword [edx+0x0]
00033B66  0000              add [eax],al
00033B68  00410E            add [ecx+0xe],al
00033B6B  088502420D05      or [ebp+0x50d4202],al
00033B71  44                inc esp
00033B72  830302            add dword [ebx],byte +0x2
00033B75  42                inc edx
00033B76  C5                db 0xc5
00033B77  C3                ret
00033B78  0C04              or al,0x4
00033B7A  0400              add al,0x0
00033B7C  2000              and [eax],al
00033B7E  0000              add [eax],al
00033B80  C0040000          rol byte [eax+eax],byte 0x0
00033B84  FFE3              jmp ebx
00033B86  FF                db 0xff
00033B87  FF3500000000      push dword [dword 0x0]
00033B8D  41                inc ecx
00033B8E  0E                push cs
00033B8F  088502420D05      or [ebp+0x50d4202],al
00033B95  44                inc esp
00033B96  83036D            add dword [ebx],byte +0x6d
00033B99  C5                db 0xc5
00033B9A  C3                ret
00033B9B  0C04              or al,0x4
00033B9D  0400              add al,0x0
00033B9F  0020              add [eax],ah
00033BA1  0000              add [eax],al
00033BA3  00E4              add ah,ah
00033BA5  0400              add al,0x0
00033BA7  0010              add [eax],dl
00033BA9  E4FF              in al,0xff
00033BAB  FF1404            call [esp+eax]
00033BAE  0000              add [eax],al
00033BB0  00410E            add [ecx+0xe],al
00033BB3  088502420D05      or [ebp+0x50d4202],al
00033BB9  44                inc esp
00033BBA  830303            add dword [ebx],byte +0x3
00033BBD  0C04              or al,0x4
00033BBF  C5                db 0xc5
00033BC0  C3                ret
00033BC1  0C04              or al,0x4
00033BC3  0420              add al,0x20
00033BC5  0000              add [eax],al
00033BC7  0008              add [eax],cl
00033BC9  05000000E8        add eax,0xe8000000
00033BCE  FF                db 0xff
00033BCF  FF8200000000      inc dword [edx+0x0]
00033BD5  41                inc ecx
00033BD6  0E                push cs
00033BD7  088502420D05      or [ebp+0x50d4202],al
00033BDD  44                inc esp
00033BDE  830302            add dword [ebx],byte +0x2
00033BE1  7AC5              jpe 0x33ba8
00033BE3  C3                ret
00033BE4  0C04              or al,0x4
00033BE6  0400              add al,0x0
00033BE8  1C00              sbb al,0x0
00033BEA  0000              add [eax],al
00033BEC  2C05              sub al,0x5
00033BEE  0000              add [eax],al
00033BF0  5E                pop esi
00033BF1  E8FFFF5C00        call 0x603bf5
00033BF6  0000              add [eax],al
00033BF8  00410E            add [ecx+0xe],al
00033BFB  088502420D05      or [ebp+0x50d4202],al
00033C01  0258C5            add bl,[eax-0x3b]
00033C04  0C04              or al,0x4
00033C06  0400              add al,0x0
00033C08  1C00              sbb al,0x0
00033C0A  0000              add [eax],al
00033C0C  4C                dec esp
00033C0D  0500009AE8        add eax,0xe89a0000
00033C12  FF                db 0xff
00033C13  FF7700            push dword [edi+0x0]
00033C16  0000              add [eax],al
00033C18  00410E            add [ecx+0xe],al
00033C1B  088502420D05      or [ebp+0x50d4202],al
00033C21  0273C5            add dh,[ebx-0x3b]
00033C24  0C04              or al,0x4
00033C26  0400              add al,0x0
00033C28  2C00              sub al,0x0
00033C2A  0000              add [eax],al
00033C2C  6C                insb
00033C2D  050000F1E8        add eax,0xe8f10000
00033C32  FF                db 0xff
00033C33  FF5701            call [edi+0x1]
00033C36  0000              add [eax],al
00033C38  00410E            add [ecx+0xe],al
00033C3B  088502420D05      or [ebp+0x50d4202],al
00033C41  49                dec ecx
00033C42  8703              xchg eax,[ebx]
00033C44  860483            xchg al,[ebx+eax*4]
00033C47  05034701C3        add eax,0xc3014703
00033C4C  41                inc ecx
00033C4D  C641C741          mov byte [ecx-0x39],0x41
00033C51  C50C04            lds ecx,[esp+eax]
00033C54  0400              add al,0x0
00033C56  0000              add [eax],al
00033C58  1C00              sbb al,0x0
00033C5A  0000              add [eax],al
00033C5C  9C                pushf
00033C5D  05000018EA        add eax,0xea180000
00033C62  FF                db 0xff
00033C63  FF940000000041    call [eax+eax+0x41000000]
00033C6A  0E                push cs
00033C6B  088502420D05      or [ebp+0x50d4202],al
00033C71  0290C50C0404      add dl,[eax+0x4040cc5]
00033C77  001C00            add [eax+eax],bl
00033C7A  0000              add [eax],al
00033C7C  BC0500008C        mov esp,0x8c000005
00033C81  EAFFFF17000000    jmp 0x0:0x17ffff
00033C88  00410E            add [ecx+0xe],al
00033C8B  088502420D05      or [ebp+0x50d4202],al
00033C91  53                push ebx
00033C92  C50C04            lds ecx,[esp+eax]
00033C95  0400              add al,0x0
00033C97  001C00            add [eax+eax],bl
00033C9A  0000              add [eax],al
00033C9C  DC0500007BEB      fadd qword [dword 0xeb7b0000]
00033CA2  FF                db 0xff
00033CA3  FFB500000000      push dword [ebp+0x0]
00033CA9  41                inc ecx
00033CAA  0E                push cs
00033CAB  088502420D05      or [ebp+0x50d4202],al
00033CB1  02B1C50C0404      add dh,[ecx+0x4040cc5]
00033CB7  0020              add [eax],ah
00033CB9  0000              add [eax],al
00033CBB  00FC              add ah,bh
00033CBD  05000010EC        add eax,0xec100000
00033CC2  FF                db 0xff
00033CC3  FF36              push dword [esi]
00033CC5  0000              add [eax],al
00033CC7  0000              add [eax],al
00033CC9  41                inc ecx
00033CCA  0E                push cs
00033CCB  088502420D05      or [ebp+0x50d4202],al
00033CD1  44                inc esp
00033CD2  83036E            add dword [ebx],byte +0x6e
00033CD5  C5                db 0xc5
00033CD6  C3                ret
00033CD7  0C04              or al,0x4
00033CD9  0400              add al,0x0
00033CDB  001C00            add [eax+eax],bl
00033CDE  0000              add [eax],al
00033CE0  2006              and [esi],al
00033CE2  0000              add [eax],al
00033CE4  22EC              and ch,ah
00033CE6  FF                db 0xff
00033CE7  FF5200            call [edx+0x0]
00033CEA  0000              add [eax],al
00033CEC  00410E            add [ecx+0xe],al
00033CEF  088502420D05      or [ebp+0x50d4202],al
00033CF5  024EC5            add cl,[esi-0x3b]
00033CF8  0C04              or al,0x4
00033CFA  0400              add al,0x0
00033CFC  0000              add [eax],al
00033CFE  0000              add [eax],al
00033D00  0000              add [eax],al
00033D02  0000              add [eax],al
00033D04  0000              add [eax],al
00033D06  0000              add [eax],al
00033D08  0000              add [eax],al
00033D0A  0000              add [eax],al
00033D0C  0000              add [eax],al
00033D0E  0000              add [eax],al
00033D10  0000              add [eax],al
00033D12  0000              add [eax],al
00033D14  0000              add [eax],al
00033D16  0000              add [eax],al
00033D18  0000              add [eax],al
00033D1A  0000              add [eax],al
00033D1C  0000              add [eax],al
00033D1E  0000              add [eax],al
00033D20  0000              add [eax],al
00033D22  0000              add [eax],al
00033D24  0000              add [eax],al
00033D26  0000              add [eax],al
00033D28  0000              add [eax],al
00033D2A  0000              add [eax],al
00033D2C  0000              add [eax],al
00033D2E  0000              add [eax],al
00033D30  0000              add [eax],al
00033D32  0000              add [eax],al
00033D34  0000              add [eax],al
00033D36  0000              add [eax],al
00033D38  0000              add [eax],al
00033D3A  0000              add [eax],al
00033D3C  0000              add [eax],al
00033D3E  0000              add [eax],al
00033D40  0000              add [eax],al
00033D42  0000              add [eax],al
00033D44  0000              add [eax],al
00033D46  0000              add [eax],al
00033D48  0000              add [eax],al
00033D4A  0000              add [eax],al
00033D4C  0000              add [eax],al
00033D4E  0000              add [eax],al
00033D50  0000              add [eax],al
00033D52  0000              add [eax],al
00033D54  0000              add [eax],al
00033D56  0000              add [eax],al
00033D58  0000              add [eax],al
00033D5A  0000              add [eax],al
00033D5C  0000              add [eax],al
00033D5E  0000              add [eax],al
00033D60  0000              add [eax],al
00033D62  0000              add [eax],al
00033D64  0000              add [eax],al
00033D66  0000              add [eax],al
00033D68  0000              add [eax],al
00033D6A  0000              add [eax],al
00033D6C  0000              add [eax],al
00033D6E  0000              add [eax],al
00033D70  0000              add [eax],al
00033D72  0000              add [eax],al
00033D74  0000              add [eax],al
00033D76  0000              add [eax],al
00033D78  0000              add [eax],al
00033D7A  0000              add [eax],al
00033D7C  0000              add [eax],al
00033D7E  0000              add [eax],al
00033D80  0000              add [eax],al
00033D82  0000              add [eax],al
00033D84  0000              add [eax],al
00033D86  0000              add [eax],al
00033D88  0000              add [eax],al
00033D8A  0000              add [eax],al
00033D8C  0000              add [eax],al
00033D8E  0000              add [eax],al
00033D90  0000              add [eax],al
00033D92  0000              add [eax],al
00033D94  0000              add [eax],al
00033D96  0000              add [eax],al
00033D98  0000              add [eax],al
00033D9A  0000              add [eax],al
00033D9C  0000              add [eax],al
00033D9E  0000              add [eax],al
00033DA0  0000              add [eax],al
00033DA2  0000              add [eax],al
00033DA4  0000              add [eax],al
00033DA6  0000              add [eax],al
00033DA8  0000              add [eax],al
00033DAA  0000              add [eax],al
00033DAC  0000              add [eax],al
00033DAE  0000              add [eax],al
00033DB0  0000              add [eax],al
00033DB2  0000              add [eax],al
00033DB4  0000              add [eax],al
00033DB6  0000              add [eax],al
00033DB8  0000              add [eax],al
00033DBA  0000              add [eax],al
00033DBC  0000              add [eax],al
00033DBE  0000              add [eax],al
00033DC0  0000              add [eax],al
00033DC2  0000              add [eax],al
00033DC4  0000              add [eax],al
00033DC6  0000              add [eax],al
00033DC8  0000              add [eax],al
00033DCA  0000              add [eax],al
00033DCC  0000              add [eax],al
00033DCE  0000              add [eax],al
00033DD0  0000              add [eax],al
00033DD2  0000              add [eax],al
00033DD4  0000              add [eax],al
00033DD6  0000              add [eax],al
00033DD8  0000              add [eax],al
00033DDA  0000              add [eax],al
00033DDC  0000              add [eax],al
00033DDE  0000              add [eax],al
00033DE0  0000              add [eax],al
00033DE2  0000              add [eax],al
00033DE4  0000              add [eax],al
00033DE6  0000              add [eax],al
00033DE8  0000              add [eax],al
00033DEA  0000              add [eax],al
00033DEC  0000              add [eax],al
00033DEE  0000              add [eax],al
00033DF0  0000              add [eax],al
00033DF2  0000              add [eax],al
00033DF4  0000              add [eax],al
00033DF6  0000              add [eax],al
00033DF8  0000              add [eax],al
00033DFA  0000              add [eax],al
00033DFC  0000              add [eax],al
00033DFE  0000              add [eax],al
00033E00  0000              add [eax],al
00033E02  0000              add [eax],al
00033E04  0000              add [eax],al
00033E06  0000              add [eax],al
00033E08  0000              add [eax],al
00033E0A  0000              add [eax],al
00033E0C  0000              add [eax],al
00033E0E  0000              add [eax],al
00033E10  0000              add [eax],al
00033E12  0000              add [eax],al
00033E14  0000              add [eax],al
00033E16  0000              add [eax],al
00033E18  0000              add [eax],al
00033E1A  0000              add [eax],al
00033E1C  0000              add [eax],al
00033E1E  0000              add [eax],al
00033E20  0000              add [eax],al
00033E22  0000              add [eax],al
00033E24  0000              add [eax],al
00033E26  0000              add [eax],al
00033E28  0000              add [eax],al
00033E2A  0000              add [eax],al
00033E2C  0000              add [eax],al
00033E2E  0000              add [eax],al
00033E30  0000              add [eax],al
00033E32  0000              add [eax],al
00033E34  0000              add [eax],al
00033E36  0000              add [eax],al
00033E38  0000              add [eax],al
00033E3A  0000              add [eax],al
00033E3C  0000              add [eax],al
00033E3E  0000              add [eax],al
00033E40  0000              add [eax],al
00033E42  0000              add [eax],al
00033E44  0000              add [eax],al
00033E46  0000              add [eax],al
00033E48  0000              add [eax],al
00033E4A  0000              add [eax],al
00033E4C  0000              add [eax],al
00033E4E  0000              add [eax],al
00033E50  0000              add [eax],al
00033E52  0000              add [eax],al
00033E54  0000              add [eax],al
00033E56  0000              add [eax],al
00033E58  0000              add [eax],al
00033E5A  0000              add [eax],al
00033E5C  0000              add [eax],al
00033E5E  0000              add [eax],al
00033E60  0000              add [eax],al
00033E62  0000              add [eax],al
00033E64  0000              add [eax],al
00033E66  0000              add [eax],al
00033E68  0000              add [eax],al
00033E6A  0000              add [eax],al
00033E6C  0000              add [eax],al
00033E6E  0000              add [eax],al
00033E70  0000              add [eax],al
00033E72  0000              add [eax],al
00033E74  0000              add [eax],al
00033E76  0000              add [eax],al
00033E78  0000              add [eax],al
00033E7A  0000              add [eax],al
00033E7C  0000              add [eax],al
00033E7E  0000              add [eax],al
00033E80  0000              add [eax],al
00033E82  0000              add [eax],al
00033E84  0000              add [eax],al
00033E86  0000              add [eax],al
00033E88  0000              add [eax],al
00033E8A  0000              add [eax],al
00033E8C  0000              add [eax],al
00033E8E  0000              add [eax],al
00033E90  0000              add [eax],al
00033E92  0000              add [eax],al
00033E94  0000              add [eax],al
00033E96  0000              add [eax],al
00033E98  0000              add [eax],al
00033E9A  0000              add [eax],al
00033E9C  0000              add [eax],al
00033E9E  0000              add [eax],al
00033EA0  0000              add [eax],al
00033EA2  0000              add [eax],al
00033EA4  0000              add [eax],al
00033EA6  0000              add [eax],al
00033EA8  0000              add [eax],al
00033EAA  0000              add [eax],al
00033EAC  0000              add [eax],al
00033EAE  0000              add [eax],al
00033EB0  0000              add [eax],al
00033EB2  0000              add [eax],al
00033EB4  0000              add [eax],al
00033EB6  0000              add [eax],al
00033EB8  0000              add [eax],al
00033EBA  0000              add [eax],al
00033EBC  0000              add [eax],al
00033EBE  0000              add [eax],al
00033EC0  0000              add [eax],al
00033EC2  0000              add [eax],al
00033EC4  0000              add [eax],al
00033EC6  0000              add [eax],al
00033EC8  0000              add [eax],al
00033ECA  0000              add [eax],al
00033ECC  0000              add [eax],al
00033ECE  0000              add [eax],al
00033ED0  0000              add [eax],al
00033ED2  0000              add [eax],al
00033ED4  0000              add [eax],al
00033ED6  0000              add [eax],al
00033ED8  0000              add [eax],al
00033EDA  0000              add [eax],al
00033EDC  0000              add [eax],al
00033EDE  0000              add [eax],al
00033EE0  0000              add [eax],al
00033EE2  0000              add [eax],al
00033EE4  0000              add [eax],al
00033EE6  0000              add [eax],al
00033EE8  0000              add [eax],al
00033EEA  0000              add [eax],al
00033EEC  0000              add [eax],al
00033EEE  0000              add [eax],al
00033EF0  0000              add [eax],al
00033EF2  0000              add [eax],al
00033EF4  0000              add [eax],al
00033EF6  0000              add [eax],al
00033EF8  0000              add [eax],al
00033EFA  0000              add [eax],al
00033EFC  0000              add [eax],al
00033EFE  0000              add [eax],al
00033F00  0000              add [eax],al
00033F02  0000              add [eax],al
00033F04  0000              add [eax],al
00033F06  0000              add [eax],al
00033F08  0000              add [eax],al
00033F0A  0000              add [eax],al
00033F0C  0000              add [eax],al
00033F0E  0000              add [eax],al
00033F10  0000              add [eax],al
00033F12  0000              add [eax],al
00033F14  0000              add [eax],al
00033F16  0000              add [eax],al
00033F18  0000              add [eax],al
00033F1A  0000              add [eax],al
00033F1C  0000              add [eax],al
00033F1E  0000              add [eax],al
00033F20  0000              add [eax],al
00033F22  0000              add [eax],al
00033F24  0000              add [eax],al
00033F26  0000              add [eax],al
00033F28  0000              add [eax],al
00033F2A  0000              add [eax],al
00033F2C  0000              add [eax],al
00033F2E  0000              add [eax],al
00033F30  0000              add [eax],al
00033F32  0000              add [eax],al
00033F34  0000              add [eax],al
00033F36  0000              add [eax],al
00033F38  0000              add [eax],al
00033F3A  0000              add [eax],al
00033F3C  0000              add [eax],al
00033F3E  0000              add [eax],al
00033F40  0000              add [eax],al
00033F42  0000              add [eax],al
00033F44  0000              add [eax],al
00033F46  0000              add [eax],al
00033F48  0000              add [eax],al
00033F4A  0000              add [eax],al
00033F4C  0000              add [eax],al
00033F4E  0000              add [eax],al
00033F50  0000              add [eax],al
00033F52  0000              add [eax],al
00033F54  0000              add [eax],al
00033F56  0000              add [eax],al
00033F58  0000              add [eax],al
00033F5A  0000              add [eax],al
00033F5C  0000              add [eax],al
00033F5E  0000              add [eax],al
00033F60  0000              add [eax],al
00033F62  0000              add [eax],al
00033F64  0000              add [eax],al
00033F66  0000              add [eax],al
00033F68  0000              add [eax],al
00033F6A  0000              add [eax],al
00033F6C  0000              add [eax],al
00033F6E  0000              add [eax],al
00033F70  0000              add [eax],al
00033F72  0000              add [eax],al
00033F74  0000              add [eax],al
00033F76  0000              add [eax],al
00033F78  0000              add [eax],al
00033F7A  0000              add [eax],al
00033F7C  0000              add [eax],al
00033F7E  0000              add [eax],al
00033F80  0000              add [eax],al
00033F82  0000              add [eax],al
00033F84  0000              add [eax],al
00033F86  0000              add [eax],al
00033F88  0000              add [eax],al
00033F8A  0000              add [eax],al
00033F8C  0000              add [eax],al
00033F8E  0000              add [eax],al
00033F90  0000              add [eax],al
00033F92  0000              add [eax],al
00033F94  0000              add [eax],al
00033F96  0000              add [eax],al
00033F98  0000              add [eax],al
00033F9A  0000              add [eax],al
00033F9C  0000              add [eax],al
00033F9E  0000              add [eax],al
00033FA0  0000              add [eax],al
00033FA2  0000              add [eax],al
00033FA4  0000              add [eax],al
00033FA6  0000              add [eax],al
00033FA8  0000              add [eax],al
00033FAA  0000              add [eax],al
00033FAC  0000              add [eax],al
00033FAE  0000              add [eax],al
00033FB0  0000              add [eax],al
00033FB2  0000              add [eax],al
00033FB4  0000              add [eax],al
00033FB6  0000              add [eax],al
00033FB8  0000              add [eax],al
00033FBA  0000              add [eax],al
00033FBC  0000              add [eax],al
00033FBE  0000              add [eax],al
00033FC0  0000              add [eax],al
00033FC2  0000              add [eax],al
00033FC4  0000              add [eax],al
00033FC6  0000              add [eax],al
00033FC8  0000              add [eax],al
00033FCA  0000              add [eax],al
00033FCC  0000              add [eax],al
00033FCE  0000              add [eax],al
00033FD0  0000              add [eax],al
00033FD2  0000              add [eax],al
00033FD4  0000              add [eax],al
00033FD6  0000              add [eax],al
00033FD8  0000              add [eax],al
00033FDA  0000              add [eax],al
00033FDC  0000              add [eax],al
00033FDE  0000              add [eax],al
00033FE0  0000              add [eax],al
00033FE2  0000              add [eax],al
00033FE4  0000              add [eax],al
00033FE6  0000              add [eax],al
00033FE8  0000              add [eax],al
00033FEA  0000              add [eax],al
00033FEC  0000              add [eax],al
00033FEE  0000              add [eax],al
00033FF0  0000              add [eax],al
00033FF2  0000              add [eax],al
00033FF4  0000              add [eax],al
00033FF6  0000              add [eax],al
00033FF8  0000              add [eax],al
00033FFA  0000              add [eax],al
00033FFC  0000              add [eax],al
00033FFE  0000              add [eax],al
00034000  0000              add [eax],al
00034002  0000              add [eax],al
00034004  0000              add [eax],al
00034006  0000              add [eax],al
00034008  0000              add [eax],al
0003400A  0000              add [eax],al
0003400C  0000              add [eax],al
0003400E  0000              add [eax],al
00034010  0000              add [eax],al
00034012  0000              add [eax],al
00034014  0000              add [eax],al
00034016  0000              add [eax],al
00034018  0000              add [eax],al
0003401A  0000              add [eax],al
0003401C  0000              add [eax],al
0003401E  0000              add [eax],al
00034020  5E                pop esi
00034021  0000              add [eax],al
00034023  0000              add [eax],al
00034025  0000              add [eax],al
00034027  0000              add [eax],al
00034029  0000              add [eax],al
0003402B  0000              add [eax],al
0003402D  0000              add [eax],al
0003402F  0000              add [eax],al
00034031  0000              add [eax],al
00034033  0000              add [eax],al
00034035  0000              add [eax],al
00034037  0000              add [eax],al
00034039  0000              add [eax],al
0003403B  0000              add [eax],al
0003403D  0000              add [eax],al
0003403F  0000              add [eax],al
00034041  0000              add [eax],al
00034043  0000              add [eax],al
00034045  0000              add [eax],al
00034047  0000              add [eax],al
00034049  0000              add [eax],al
0003404B  0001              add [ecx],al
0003404D  0100              add [eax],eax
0003404F  0001              add [ecx],al
00034051  0100              add [eax],eax
00034053  0000              add [eax],al
00034055  0000              add [eax],al
00034057  0031              add [ecx],dh
00034059  0000              add [eax],al
0003405B  0021              add [ecx],ah
0003405D  0000              add [eax],al
0003405F  0000              add [eax],al
00034061  0000              add [eax],al
00034063  0032              add [edx],dh
00034065  0000              add [eax],al
00034067  004000            add [eax+0x0],al
0003406A  0000              add [eax],al
0003406C  0000              add [eax],al
0003406E  0000              add [eax],al
00034070  3300              xor eax,[eax]
00034072  0000              add [eax],al
00034074  2300              and eax,[eax]
00034076  0000              add [eax],al
00034078  0000              add [eax],al
0003407A  0000              add [eax],al
0003407C  3400              xor al,0x0
0003407E  0000              add [eax],al
00034080  2400              and al,0x0
00034082  0000              add [eax],al
00034084  0000              add [eax],al
00034086  0000              add [eax],al
00034088  3500000025        xor eax,0x25000000
0003408D  0000              add [eax],al
0003408F  0000              add [eax],al
00034091  0000              add [eax],al
00034093  0036              add [esi],dh
00034095  0000              add [eax],al
00034097  005E00            add [esi+0x0],bl
0003409A  0000              add [eax],al
0003409C  0000              add [eax],al
0003409E  0000              add [eax],al
000340A0  37                aaa
000340A1  0000              add [eax],al
000340A3  0026              add [esi],ah
000340A5  0000              add [eax],al
000340A7  0000              add [eax],al
000340A9  0000              add [eax],al
000340AB  0038              add [eax],bh
000340AD  0000              add [eax],al
000340AF  002A              add [edx],ch
000340B1  0000              add [eax],al
000340B3  0000              add [eax],al
000340B5  0000              add [eax],al
000340B7  0039              add [ecx],bh
000340B9  0000              add [eax],al
000340BB  0028              add [eax],ch
000340BD  0000              add [eax],al
000340BF  0000              add [eax],al
000340C1  0000              add [eax],al
000340C3  0030              add [eax],dh
000340C5  0000              add [eax],al
000340C7  0029              add [ecx],ch
000340C9  0000              add [eax],al
000340CB  0000              add [eax],al
000340CD  0000              add [eax],al
000340CF  002D0000005F      add [dword 0x5f000000],ch
000340D5  0000              add [eax],al
000340D7  0000              add [eax],al
000340D9  0000              add [eax],al
000340DB  003D0000002B      add [dword 0x2b000000],bh
000340E1  0000              add [eax],al
000340E3  0000              add [eax],al
000340E5  0000              add [eax],al
000340E7  000401            add [ecx+eax],al
000340EA  0000              add [eax],al
000340EC  0401              add al,0x1
000340EE  0000              add [eax],al
000340F0  0000              add [eax],al
000340F2  0000              add [eax],al
000340F4  0201              add al,[ecx]
000340F6  0000              add [eax],al
000340F8  0201              add al,[ecx]
000340FA  0000              add [eax],al
000340FC  0000              add [eax],al
000340FE  0000              add [eax],al
00034100  7100              jno 0x34102
00034102  0000              add [eax],al
00034104  51                push ecx
00034105  0000              add [eax],al
00034107  0000              add [eax],al
00034109  0000              add [eax],al
0003410B  007700            add [edi+0x0],dh
0003410E  0000              add [eax],al
00034110  57                push edi
00034111  0000              add [eax],al
00034113  0000              add [eax],al
00034115  0000              add [eax],al
00034117  006500            add [ebp+0x0],ah
0003411A  0000              add [eax],al
0003411C  45                inc ebp
0003411D  0000              add [eax],al
0003411F  0000              add [eax],al
00034121  0000              add [eax],al
00034123  007200            add [edx+0x0],dh
00034126  0000              add [eax],al
00034128  52                push edx
00034129  0000              add [eax],al
0003412B  0000              add [eax],al
0003412D  0000              add [eax],al
0003412F  00740000          add [eax+eax+0x0],dh
00034133  00540000          add [eax+eax+0x0],dl
00034137  0000              add [eax],al
00034139  0000              add [eax],al
0003413B  007900            add [ecx+0x0],bh
0003413E  0000              add [eax],al
00034140  59                pop ecx
00034141  0000              add [eax],al
00034143  0000              add [eax],al
00034145  0000              add [eax],al
00034147  007500            add [ebp+0x0],dh
0003414A  0000              add [eax],al
0003414C  55                push ebp
0003414D  0000              add [eax],al
0003414F  0000              add [eax],al
00034151  0000              add [eax],al
00034153  006900            add [ecx+0x0],ch
00034156  0000              add [eax],al
00034158  49                dec ecx
00034159  0000              add [eax],al
0003415B  0000              add [eax],al
0003415D  0000              add [eax],al
0003415F  006F00            add [edi+0x0],ch
00034162  0000              add [eax],al
00034164  4F                dec edi
00034165  0000              add [eax],al
00034167  0000              add [eax],al
00034169  0000              add [eax],al
0003416B  007000            add [eax+0x0],dh
0003416E  0000              add [eax],al
00034170  50                push eax
00034171  0000              add [eax],al
00034173  0000              add [eax],al
00034175  0000              add [eax],al
00034177  005B00            add [ebx+0x0],bl
0003417A  0000              add [eax],al
0003417C  7B00              jpo 0x3417e
0003417E  0000              add [eax],al
00034180  0000              add [eax],al
00034182  0000              add [eax],al
00034184  5D                pop ebp
00034185  0000              add [eax],al
00034187  007D00            add [ebp+0x0],bh
0003418A  0000              add [eax],al
0003418C  0000              add [eax],al
0003418E  0000              add [eax],al
00034190  0301              add eax,[ecx]
00034192  0000              add [eax],al
00034194  0301              add eax,[ecx]
00034196  0000              add [eax],al
00034198  3001              xor [ecx],al
0003419A  0000              add [eax],al
0003419C  0A01              or al,[ecx]
0003419E  0000              add [eax],al
000341A0  0A01              or al,[ecx]
000341A2  0000              add [eax],al
000341A4  0B01              or eax,[ecx]
000341A6  0000              add [eax],al
000341A8  61                popa
000341A9  0000              add [eax],al
000341AB  004100            add [ecx+0x0],al
000341AE  0000              add [eax],al
000341B0  0000              add [eax],al
000341B2  0000              add [eax],al
000341B4  7300              jnc 0x341b6
000341B6  0000              add [eax],al
000341B8  53                push ebx
000341B9  0000              add [eax],al
000341BB  0000              add [eax],al
000341BD  0000              add [eax],al
000341BF  00640000          add [eax+eax+0x0],ah
000341C3  00440000          add [eax+eax+0x0],al
000341C7  0000              add [eax],al
000341C9  0000              add [eax],al
000341CB  006600            add [esi+0x0],ah
000341CE  0000              add [eax],al
000341D0  46                inc esi
000341D1  0000              add [eax],al
000341D3  0000              add [eax],al
000341D5  0000              add [eax],al
000341D7  006700            add [edi+0x0],ah
000341DA  0000              add [eax],al
000341DC  47                inc edi
000341DD  0000              add [eax],al
000341DF  0000              add [eax],al
000341E1  0000              add [eax],al
000341E3  006800            add [eax+0x0],ch
000341E6  0000              add [eax],al
000341E8  48                dec eax
000341E9  0000              add [eax],al
000341EB  0000              add [eax],al
000341ED  0000              add [eax],al
000341EF  006A00            add [edx+0x0],ch
000341F2  0000              add [eax],al
000341F4  4A                dec edx
000341F5  0000              add [eax],al
000341F7  0000              add [eax],al
000341F9  0000              add [eax],al
000341FB  006B00            add [ebx+0x0],ch
000341FE  0000              add [eax],al
00034200  4B                dec ebx
00034201  0000              add [eax],al
00034203  0000              add [eax],al
00034205  0000              add [eax],al
00034207  006C0000          add [eax+eax+0x0],ch
0003420B  004C0000          add [eax+eax+0x0],cl
0003420F  0000              add [eax],al
00034211  0000              add [eax],al
00034213  003B              add [ebx],bh
00034215  0000              add [eax],al
00034217  003A              add [edx],bh
00034219  0000              add [eax],al
0003421B  0000              add [eax],al
0003421D  0000              add [eax],al
0003421F  0027              add [edi],ah
00034221  0000              add [eax],al
00034223  0022              add [edx],ah
00034225  0000              add [eax],al
00034227  0000              add [eax],al
00034229  0000              add [eax],al
0003422B  006000            add [eax+0x0],ah
0003422E  0000              add [eax],al
00034230  7E00              jng 0x34232
00034232  0000              add [eax],al
00034234  0000              add [eax],al
00034236  0000              add [eax],al
00034238  0801              or [ecx],al
0003423A  0000              add [eax],al
0003423C  0801              or [ecx],al
0003423E  0000              add [eax],al
00034240  0000              add [eax],al
00034242  0000              add [eax],al
00034244  5C                pop esp
00034245  0000              add [eax],al
00034247  007C0000          add [eax+eax+0x0],bh
0003424B  0000              add [eax],al
0003424D  0000              add [eax],al
0003424F  007A00            add [edx+0x0],bh
00034252  0000              add [eax],al
00034254  5A                pop edx
00034255  0000              add [eax],al
00034257  0000              add [eax],al
00034259  0000              add [eax],al
0003425B  007800            add [eax+0x0],bh
0003425E  0000              add [eax],al
00034260  58                pop eax
00034261  0000              add [eax],al
00034263  0000              add [eax],al
00034265  0000              add [eax],al
00034267  006300            add [ebx+0x0],ah
0003426A  0000              add [eax],al
0003426C  43                inc ebx
0003426D  0000              add [eax],al
0003426F  0000              add [eax],al
00034271  0000              add [eax],al
00034273  007600            add [esi+0x0],dh
00034276  0000              add [eax],al
00034278  56                push esi
00034279  0000              add [eax],al
0003427B  0000              add [eax],al
0003427D  0000              add [eax],al
0003427F  006200            add [edx+0x0],ah
00034282  0000              add [eax],al
00034284  42                inc edx
00034285  0000              add [eax],al
00034287  0000              add [eax],al
00034289  0000              add [eax],al
0003428B  006E00            add [esi+0x0],ch
0003428E  0000              add [eax],al
00034290  4E                dec esi
00034291  0000              add [eax],al
00034293  0000              add [eax],al
00034295  0000              add [eax],al
00034297  006D00            add [ebp+0x0],ch
0003429A  0000              add [eax],al
0003429C  4D                dec ebp
0003429D  0000              add [eax],al
0003429F  0000              add [eax],al
000342A1  0000              add [eax],al
000342A3  002C00            add [eax+eax],ch
000342A6  0000              add [eax],al
000342A8  3C00              cmp al,0x0
000342AA  0000              add [eax],al
000342AC  0000              add [eax],al
000342AE  0000              add [eax],al
000342B0  2E0000            add [cs:eax],al
000342B3  003E              add [esi],bh
000342B5  0000              add [eax],al
000342B7  0000              add [eax],al
000342B9  0000              add [eax],al
000342BB  002F              add [edi],ch
000342BD  0000              add [eax],al
000342BF  003F              add [edi],bh
000342C1  0000              add [eax],al
000342C3  002C01            add [ecx+eax],ch
000342C6  0000              add [eax],al
000342C8  0901              or [ecx],eax
000342CA  0000              add [eax],al
000342CC  0901              or [ecx],eax
000342CE  0000              add [eax],al
000342D0  0000              add [eax],al
000342D2  0000              add [eax],al
000342D4  2A00              sub al,[eax]
000342D6  0000              add [eax],al
000342D8  2A00              sub al,[eax]
000342DA  0000              add [eax],al
000342DC  0000              add [eax],al
000342DE  0000              add [eax],al
000342E0  0C01              or al,0x1
000342E2  0000              add [eax],al
000342E4  0C01              or al,0x1
000342E6  0000              add [eax],al
000342E8  0D01000020        or eax,0x20000001
000342ED  0000              add [eax],al
000342EF  0020              add [eax],ah
000342F1  0000              add [eax],al
000342F3  0000              add [eax],al
000342F5  0000              add [eax],al
000342F7  000E              add [esi],cl
000342F9  0100              add [eax],eax
000342FB  000E              add [esi],cl
000342FD  0100              add [eax],eax
000342FF  0000              add [eax],al
00034301  0000              add [eax],al
00034303  0011              add [ecx],dl
00034305  0100              add [eax],eax
00034307  0011              add [ecx],dl
00034309  0100              add [eax],eax
0003430B  0000              add [eax],al
0003430D  0000              add [eax],al
0003430F  0012              add [edx],dl
00034311  0100              add [eax],eax
00034313  0012              add [edx],dl
00034315  0100              add [eax],eax
00034317  0000              add [eax],al
00034319  0000              add [eax],al
0003431B  0013              add [ebx],dl
0003431D  0100              add [eax],eax
0003431F  0013              add [ebx],dl
00034321  0100              add [eax],eax
00034323  0000              add [eax],al
00034325  0000              add [eax],al
00034327  001401            add [ecx+eax],dl
0003432A  0000              add [eax],al
0003432C  1401              adc al,0x1
0003432E  0000              add [eax],al
00034330  0000              add [eax],al
00034332  0000              add [eax],al
00034334  1501000015        adc eax,0x15000001
00034339  0100              add [eax],eax
0003433B  0000              add [eax],al
0003433D  0000              add [eax],al
0003433F  0016              add [esi],dl
00034341  0100              add [eax],eax
00034343  0016              add [esi],dl
00034345  0100              add [eax],eax
00034347  0000              add [eax],al
00034349  0000              add [eax],al
0003434B  0017              add [edi],dl
0003434D  0100              add [eax],eax
0003434F  0017              add [edi],dl
00034351  0100              add [eax],eax
00034353  0000              add [eax],al
00034355  0000              add [eax],al
00034357  0018              add [eax],bl
00034359  0100              add [eax],eax
0003435B  0018              add [eax],bl
0003435D  0100              add [eax],eax
0003435F  0000              add [eax],al
00034361  0000              add [eax],al
00034363  0019              add [ecx],bl
00034365  0100              add [eax],eax
00034367  0019              add [ecx],bl
00034369  0100              add [eax],eax
0003436B  0000              add [eax],al
0003436D  0000              add [eax],al
0003436F  001A              add [edx],bl
00034371  0100              add [eax],eax
00034373  001A              add [edx],bl
00034375  0100              add [eax],eax
00034377  0000              add [eax],al
00034379  0000              add [eax],al
0003437B  000F              add [edi],cl
0003437D  0100              add [eax],eax
0003437F  000F              add [edi],cl
00034381  0100              add [eax],eax
00034383  0000              add [eax],al
00034385  0000              add [eax],al
00034387  0010              add [eax],dl
00034389  0100              add [eax],eax
0003438B  0010              add [eax],dl
0003438D  0100              add [eax],eax
0003438F  0000              add [eax],al
00034391  0000              add [eax],al
00034393  0039              add [ecx],bh
00034395  0100              add [eax],eax
00034397  0037              add [edi],dh
00034399  0000              add [eax],al
0003439B  0021              add [ecx],ah
0003439D  0100              add [eax],eax
0003439F  003A              add [edx],bh
000343A1  0100              add [eax],eax
000343A3  0038              add [eax],bh
000343A5  0000              add [eax],al
000343A7  00250100003B      add [dword 0x3b000001],ah
000343AD  0100              add [eax],eax
000343AF  0039              add [ecx],bh
000343B1  0000              add [eax],al
000343B3  0023              add [ebx],ah
000343B5  0100              add [eax],eax
000343B7  002E              add [esi],ch
000343B9  0100              add [eax],eax
000343BB  002D00000000      add [dword 0x0],ch
000343C1  0000              add [eax],al
000343C3  0036              add [esi],dh
000343C5  0100              add [eax],eax
000343C7  003400            add [eax+eax],dh
000343CA  0000              add [eax],al
000343CC  27                daa
000343CD  0100              add [eax],eax
000343CF  0037              add [edi],dh
000343D1  0100              add [eax],eax
000343D3  003500000000      add [dword 0x0],dh
000343D9  0000              add [eax],al
000343DB  0038              add [eax],bh
000343DD  0100              add [eax],eax
000343DF  0036              add [esi],dh
000343E1  0000              add [eax],al
000343E3  0028              add [eax],ch
000343E5  0100              add [eax],eax
000343E7  002F              add [edi],ch
000343E9  0100              add [eax],eax
000343EB  002B              add [ebx],ch
000343ED  0000              add [eax],al
000343EF  0000              add [eax],al
000343F1  0000              add [eax],al
000343F3  0033              add [ebx],dh
000343F5  0100              add [eax],eax
000343F7  0031              add [ecx],dh
000343F9  0000              add [eax],al
000343FB  0022              add [edx],ah
000343FD  0100              add [eax],eax
000343FF  003401            add [ecx+eax],dh
00034402  0000              add [eax],al
00034404  3200              xor al,[eax]
00034406  0000              add [eax],al
00034408  260100            add [es:eax],eax
0003440B  003501000033      add [dword 0x33000001],dh
00034411  0000              add [eax],al
00034413  002401            add [ecx+eax],ah
00034416  0000              add [eax],al
00034418  3201              xor al,[ecx]
0003441A  0000              add [eax],al
0003441C  3000              xor [eax],al
0003441E  0000              add [eax],al
00034420  1F                pop ds
00034421  0100              add [eax],eax
00034423  0031              add [ecx],dh
00034425  0100              add [eax],eax
00034427  002E              add [esi],ch
00034429  0000              add [eax],al
0003442B  0020              add [eax],ah
0003442D  0100              add [eax],eax
0003442F  0000              add [eax],al
00034431  0000              add [eax],al
00034433  0000              add [eax],al
00034435  0000              add [eax],al
00034437  0000              add [eax],al
00034439  0000              add [eax],al
0003443B  0000              add [eax],al
0003443D  0000              add [eax],al
0003443F  0000              add [eax],al
00034441  0000              add [eax],al
00034443  0000              add [eax],al
00034445  0000              add [eax],al
00034447  0000              add [eax],al
00034449  0000              add [eax],al
0003444B  0000              add [eax],al
0003444D  0000              add [eax],al
0003444F  0000              add [eax],al
00034451  0000              add [eax],al
00034453  001B              add [ebx],bl
00034455  0100              add [eax],eax
00034457  001B              add [ebx],bl
00034459  0100              add [eax],eax
0003445B  0000              add [eax],al
0003445D  0000              add [eax],al
0003445F  001C01            add [ecx+eax],bl
00034462  0000              add [eax],al
00034464  1C01              sbb al,0x1
00034466  0000              add [eax],al
00034468  0000              add [eax],al
0003446A  0000              add [eax],al
0003446C  0000              add [eax],al
0003446E  0000              add [eax],al
00034470  0000              add [eax],al
00034472  0000              add [eax],al
00034474  0000              add [eax],al
00034476  0000              add [eax],al
00034478  0000              add [eax],al
0003447A  0000              add [eax],al
0003447C  0000              add [eax],al
0003447E  0000              add [eax],al
00034480  0000              add [eax],al
00034482  0000              add [eax],al
00034484  0000              add [eax],al
00034486  0000              add [eax],al
00034488  0000              add [eax],al
0003448A  0000              add [eax],al
0003448C  0501000000        add eax,0x1
00034491  0000              add [eax],al
00034493  0000              add [eax],al
00034495  0000              add [eax],al
00034497  0006              add [esi],al
00034499  0100              add [eax],eax
0003449B  0000              add [eax],al
0003449D  0000              add [eax],al
0003449F  0000              add [eax],al
000344A1  0000              add [eax],al
000344A3  0007              add [edi],al
000344A5  0100              add [eax],eax
000344A7  0000              add [eax],al
000344A9  0000              add [eax],al
000344AB  0000              add [eax],al
000344AD  0000              add [eax],al
000344AF  0000              add [eax],al
000344B1  0000              add [eax],al
000344B3  0000              add [eax],al
000344B5  0000              add [eax],al
000344B7  0000              add [eax],al
000344B9  0000              add [eax],al
000344BB  0000              add [eax],al
000344BD  0000              add [eax],al
000344BF  0000              add [eax],al
000344C1  0000              add [eax],al
000344C3  0000              add [eax],al
000344C5  0000              add [eax],al
000344C7  0000              add [eax],al
000344C9  0000              add [eax],al
000344CB  0000              add [eax],al
000344CD  0000              add [eax],al
000344CF  0000              add [eax],al
000344D1  0000              add [eax],al
000344D3  0000              add [eax],al
000344D5  0000              add [eax],al
000344D7  0000              add [eax],al
000344D9  0000              add [eax],al
000344DB  0000              add [eax],al
000344DD  0000              add [eax],al
000344DF  0000              add [eax],al
000344E1  0000              add [eax],al
000344E3  0000              add [eax],al
000344E5  0000              add [eax],al
000344E7  0000              add [eax],al
000344E9  0000              add [eax],al
000344EB  0000              add [eax],al
000344ED  0000              add [eax],al
000344EF  0000              add [eax],al
000344F1  0000              add [eax],al
000344F3  0000              add [eax],al
000344F5  0000              add [eax],al
000344F7  0000              add [eax],al
000344F9  0000              add [eax],al
000344FB  0000              add [eax],al
000344FD  0000              add [eax],al
000344FF  0000              add [eax],al
00034501  0000              add [eax],al
00034503  0000              add [eax],al
00034505  0000              add [eax],al
00034507  0000              add [eax],al
00034509  0000              add [eax],al
0003450B  0000              add [eax],al
0003450D  0000              add [eax],al
0003450F  0000              add [eax],al
00034511  0000              add [eax],al
00034513  0000              add [eax],al
00034515  0000              add [eax],al
00034517  0000              add [eax],al
00034519  0000              add [eax],al
0003451B  0000              add [eax],al
0003451D  0000              add [eax],al
0003451F  0000              add [eax],al
00034521  0000              add [eax],al
00034523  0000              add [eax],al
00034525  0000              add [eax],al
00034527  0000              add [eax],al
00034529  0000              add [eax],al
0003452B  0000              add [eax],al
0003452D  0000              add [eax],al
0003452F  0000              add [eax],al
00034531  0000              add [eax],al
00034533  0000              add [eax],al
00034535  0000              add [eax],al
00034537  0000              add [eax],al
00034539  0000              add [eax],al
0003453B  0000              add [eax],al
0003453D  0000              add [eax],al
0003453F  0000              add [eax],al
00034541  0000              add [eax],al
00034543  0000              add [eax],al
00034545  0000              add [eax],al
00034547  0000              add [eax],al
00034549  0000              add [eax],al
0003454B  0000              add [eax],al
0003454D  0000              add [eax],al
0003454F  0000              add [eax],al
00034551  0000              add [eax],al
00034553  0000              add [eax],al
00034555  0000              add [eax],al
00034557  0000              add [eax],al
00034559  0000              add [eax],al
0003455B  0000              add [eax],al
0003455D  0000              add [eax],al
0003455F  0000              add [eax],al
00034561  0000              add [eax],al
00034563  0000              add [eax],al
00034565  0000              add [eax],al
00034567  0000              add [eax],al
00034569  0000              add [eax],al
0003456B  0000              add [eax],al
0003456D  0000              add [eax],al
0003456F  0000              add [eax],al
00034571  0000              add [eax],al
00034573  0000              add [eax],al
00034575  0000              add [eax],al
00034577  0000              add [eax],al
00034579  0000              add [eax],al
0003457B  0000              add [eax],al
0003457D  0000              add [eax],al
0003457F  0000              add [eax],al
00034581  0000              add [eax],al
00034583  0000              add [eax],al
00034585  0000              add [eax],al
00034587  0000              add [eax],al
00034589  0000              add [eax],al
0003458B  0000              add [eax],al
0003458D  0000              add [eax],al
0003458F  0000              add [eax],al
00034591  0000              add [eax],al
00034593  0000              add [eax],al
00034595  0000              add [eax],al
00034597  0000              add [eax],al
00034599  0000              add [eax],al
0003459B  0000              add [eax],al
0003459D  0000              add [eax],al
0003459F  0000              add [eax],al
000345A1  0000              add [eax],al
000345A3  0000              add [eax],al
000345A5  0000              add [eax],al
000345A7  0000              add [eax],al
000345A9  0000              add [eax],al
000345AB  0000              add [eax],al
000345AD  0000              add [eax],al
000345AF  0000              add [eax],al
000345B1  0000              add [eax],al
000345B3  0000              add [eax],al
000345B5  0000              add [eax],al
000345B7  0000              add [eax],al
000345B9  0000              add [eax],al
000345BB  0000              add [eax],al
000345BD  0000              add [eax],al
000345BF  0000              add [eax],al
000345C1  0000              add [eax],al
000345C3  0000              add [eax],al
000345C5  0000              add [eax],al
000345C7  0000              add [eax],al
000345C9  0000              add [eax],al
000345CB  0000              add [eax],al
000345CD  0000              add [eax],al
000345CF  0000              add [eax],al
000345D1  0000              add [eax],al
000345D3  0000              add [eax],al
000345D5  0000              add [eax],al
000345D7  0000              add [eax],al
000345D9  0000              add [eax],al
000345DB  0000              add [eax],al
000345DD  0000              add [eax],al
000345DF  0000              add [eax],al
000345E1  0000              add [eax],al
000345E3  0000              add [eax],al
000345E5  0000              add [eax],al
000345E7  0000              add [eax],al
000345E9  0000              add [eax],al
000345EB  0000              add [eax],al
000345ED  0000              add [eax],al
000345EF  0000              add [eax],al
000345F1  0000              add [eax],al
000345F3  0000              add [eax],al
000345F5  0000              add [eax],al
000345F7  0000              add [eax],al
000345F9  0000              add [eax],al
000345FB  0000              add [eax],al
000345FD  0000              add [eax],al
000345FF  0000              add [eax],al
00034601  0000              add [eax],al
00034603  0000              add [eax],al
00034605  0000              add [eax],al
00034607  0000              add [eax],al
00034609  0000              add [eax],al
0003460B  0000              add [eax],al
0003460D  0000              add [eax],al
0003460F  0000              add [eax],al
00034611  0000              add [eax],al
00034613  0000              add [eax],al
00034615  0000              add [eax],al
00034617  0000              add [eax],al
00034619  0000              add [eax],al
0003461B  0000              add [eax],al
0003461D  0000              add [eax],al
0003461F  0000              add [eax],al
00034621  0000              add [eax],al
00034623  0000              add [eax],al
00034625  0000              add [eax],al
00034627  0000              add [eax],al
00034629  0000              add [eax],al
0003462B  0000              add [eax],al
0003462D  0000              add [eax],al
0003462F  0000              add [eax],al
00034631  0000              add [eax],al
00034633  0000              add [eax],al
00034635  0000              add [eax],al
00034637  0000              add [eax],al
00034639  0000              add [eax],al
0003463B  0000              add [eax],al
0003463D  0000              add [eax],al
0003463F  00F1              add cl,dh
00034641  1203              adc al,[ebx]
00034643  0000              add [eax],al
00034645  800000            add byte [eax],0x0
00034648  7474              jz 0x346be
0003464A  7900              jns 0x3464c
0003464C  0000              add [eax],al
0003464E  0000              add [eax],al
00034650  0000              add [eax],al
00034652  0000              add [eax],al
00034654  0000              add [eax],al
00034656  0000              add [eax],al
00034658  0000              add [eax],al
0003465A  0000              add [eax],al
0003465C  0000              add [eax],al
0003465E  0000              add [eax],al
00034660  0000              add [eax],al
00034662  0000              add [eax],al
00034664  0000              add [eax],al
00034666  0000              add [eax],al
00034668  0000              add [eax],al
0003466A  0000              add [eax],al
0003466C  0000              add [eax],al
0003466E  0000              add [eax],al
00034670  0000              add [eax],al
00034672  0000              add [eax],al
00034674  0000              add [eax],al
00034676  0000              add [eax],al
00034678  0000              add [eax],al
0003467A  0000              add [eax],al
0003467C  0000              add [eax],al
0003467E  0000              add [eax],al
00034680  680A030000        push dword 0x30a
00034685  800000            add byte [eax],0x0
00034688  54                push esp
00034689  657374            gs jnc 0x34700
0003468C  41                inc ecx
0003468D  0000              add [eax],al
0003468F  0000              add [eax],al
00034691  0000              add [eax],al
00034693  0000              add [eax],al
00034695  0000              add [eax],al
00034697  0000              add [eax],al
00034699  0000              add [eax],al
0003469B  0000              add [eax],al
0003469D  0000              add [eax],al
0003469F  0000              add [eax],al
000346A1  0000              add [eax],al
000346A3  0000              add [eax],al
000346A5  0000              add [eax],al
000346A7  00910A030000      add [ecx+0x30a],dl
000346AD  800000            add byte [eax],0x0
000346B0  54                push esp
000346B1  657374            gs jnc 0x34728
000346B4  42                inc edx
000346B5  0000              add [eax],al
000346B7  0000              add [eax],al
000346B9  0000              add [eax],al
000346BB  0000              add [eax],al
000346BD  0000              add [eax],al
000346BF  0000              add [eax],al
000346C1  0000              add [eax],al
000346C3  0000              add [eax],al
000346C5  0000              add [eax],al
000346C7  0000              add [eax],al
000346C9  0000              add [eax],al
000346CB  0000              add [eax],al
000346CD  0000              add [eax],al
000346CF  00A00A030000      add [eax+0x30a],ah
000346D5  800000            add byte [eax],0x0
000346D8  54                push esp
000346D9  657374            gs jnc 0x34750
000346DC  43                inc ebx
000346DD  0000              add [eax],al
000346DF  0000              add [eax],al
000346E1  0000              add [eax],al
000346E3  0000              add [eax],al
000346E5  0000              add [eax],al
000346E7  0000              add [eax],al
000346E9  0000              add [eax],al
000346EB  0000              add [eax],al
000346ED  0000              add [eax],al
000346EF  0000              add [eax],al
000346F1  0000              add [eax],al
000346F3  0000              add [eax],al
000346F5  0000              add [eax],al
000346F7  000C27            add [edi],cl
000346FA  0300              add eax,[eax]
000346FC  47                inc edi
000346FD  43                inc ebx
000346FE  43                inc ebx
000346FF  3A20              cmp ah,[eax]
00034701  285562            sub [ebp+0x62],dl
00034704  756E              jnz 0x34774
00034706  7475              jz 0x3477d
00034708  2031              and [ecx],dh
0003470A  312E              xor [esi],ebp
0003470C  342E              xor al,0x2e
0003470E  302D31756275      xor [dword 0x75627531],ch
00034714  6E                outsb
00034715  7475              jz 0x3478c
00034717  317E32            xor [esi+0x32],edi
0003471A  322E              xor ch,[esi]
0003471C  303429            xor [ecx+ebp],dh
0003471F  2031              and [ecx],dh
00034721  312E              xor [esi],ebp
00034723  342E              xor al,0x2e
00034725  3000              xor [eax],al
00034727  002E              add [esi],ch
00034729  7368              jnc 0x34793
0003472B  7374              jnc 0x347a1
0003472D  7274              jc 0x347a3
0003472F  61                popa
00034730  6200              bound eax,[eax]
00034732  2E7465            cs jz 0x3479a
00034735  7874              js 0x347ab
00034737  002E              add [esi],ch
00034739  726F              jc 0x347aa
0003473B  6461              fs popa
0003473D  7461              jz 0x347a0
0003473F  002E              add [esi],ch
00034741  65685F667261      gs push dword 0x6172665f
00034747  6D                insd
00034748  65002E            add [gs:esi],ch
0003474B  676F              a16 outsd
0003474D  742E              jz 0x3477d
0003474F  706C              jo 0x347bd
00034751  7400              jz 0x34753
00034753  2E6461            fs popa
00034756  7461              jz 0x347b9
00034758  002E              add [esi],ch
0003475A  627373            bound esi,[ebx+0x73]
0003475D  002E              add [esi],ch
0003475F  636F6D            arpl [edi+0x6d],bp
00034762  6D                insd
00034763  656E              gs outsb
00034765  7400              jz 0x34767
00034767  0000              add [eax],al
00034769  0000              add [eax],al
0003476B  0000              add [eax],al
0003476D  0000              add [eax],al
0003476F  0000              add [eax],al
00034771  0000              add [eax],al
00034773  0000              add [eax],al
00034775  0000              add [eax],al
00034777  0000              add [eax],al
00034779  0000              add [eax],al
0003477B  0000              add [eax],al
0003477D  0000              add [eax],al
0003477F  0000              add [eax],al
00034781  0000              add [eax],al
00034783  0000              add [eax],al
00034785  0000              add [eax],al
00034787  0000              add [eax],al
00034789  0000              add [eax],al
0003478B  0000              add [eax],al
0003478D  0000              add [eax],al
0003478F  000B              add [ebx],cl
00034791  0000              add [eax],al
00034793  0001              add [ecx],al
00034795  0000              add [eax],al
00034797  0006              add [esi],al
00034799  0000              add [eax],al
0003479B  0000              add [eax],al
0003479D  0403              add al,0x3
0003479F  0000              add [eax],al
000347A1  0400              add al,0x0
000347A3  00C2              add dl,al
000347A5  2500000000        and eax,0x0
000347AA  0000              add [eax],al
000347AC  0000              add [eax],al
000347AE  0000              add [eax],al
000347B0  1000              adc [eax],al
000347B2  0000              add [eax],al
000347B4  0000              add [eax],al
000347B6  0000              add [eax],al
000347B8  1100              adc [eax],eax
000347BA  0000              add [eax],al
000347BC  0100              add [eax],eax
000347BE  0000              add [eax],al
000347C0  0200              add al,[eax]
000347C2  0000              add [eax],al
000347C4  0030              add [eax],dh
000347C6  0300              add eax,[eax]
000347C8  0030              add [eax],dh
000347CA  0000              add [eax],al
000347CC  C00600            rol byte [esi],byte 0x0
000347CF  0000              add [eax],al
000347D1  0000              add [eax],al
000347D3  0000              add [eax],al
000347D5  0000              add [eax],al
000347D7  0020              add [eax],ah
000347D9  0000              add [eax],al
000347DB  0000              add [eax],al
000347DD  0000              add [eax],al
000347DF  0019              add [ecx],bl
000347E1  0000              add [eax],al
000347E3  0001              add [ecx],al
000347E5  0000              add [eax],al
000347E7  0002              add [edx],al
000347E9  0000              add [eax],al
000347EB  00C0              add al,al
000347ED  360300            add eax,[ss:eax]
000347F0  C0                db 0xc0
000347F1  360000            add [ss:eax],al
000347F4  3C06              cmp al,0x6
000347F6  0000              add [eax],al
000347F8  0000              add [eax],al
000347FA  0000              add [eax],al
000347FC  0000              add [eax],al
000347FE  0000              add [eax],al
00034800  0400              add al,0x0
00034802  0000              add [eax],al
00034804  0000              add [eax],al
00034806  0000              add [eax],al
00034808  2300              and eax,[eax]
0003480A  0000              add [eax],al
0003480C  0100              add [eax],eax
0003480E  0000              add [eax],al
00034810  0300              add eax,[eax]
00034812  0000              add [eax],al
00034814  005003            add [eax+0x3],dl
00034817  0000              add [eax],al
00034819  40                inc eax
0003481A  0000              add [eax],al
0003481C  0C00              or al,0x0
0003481E  0000              add [eax],al
00034820  0000              add [eax],al
00034822  0000              add [eax],al
00034824  0000              add [eax],al
00034826  0000              add [eax],al
00034828  0400              add al,0x0
0003482A  0000              add [eax],al
0003482C  0400              add al,0x0
0003482E  0000              add [eax],al
00034830  2C00              sub al,0x0
00034832  0000              add [eax],al
00034834  0100              add [eax],eax
00034836  0000              add [eax],al
00034838  0300              add eax,[eax]
0003483A  0000              add [eax],al
0003483C  205003            and [eax+0x3],dl
0003483F  0020              add [eax],ah
00034841  40                inc eax
00034842  0000              add [eax],al
00034844  DC06              fadd qword [esi]
00034846  0000              add [eax],al
00034848  0000              add [eax],al
0003484A  0000              add [eax],al
0003484C  0000              add [eax],al
0003484E  0000              add [eax],al
00034850  2000              and [eax],al
00034852  0000              add [eax],al
00034854  0000              add [eax],al
00034856  0000              add [eax],al
00034858  3200              xor al,[eax]
0003485A  0000              add [eax],al
0003485C  0800              or [eax],al
0003485E  0000              add [eax],al
00034860  0300              add eax,[eax]
00034862  0000              add [eax],al
00034864  005703            add [edi+0x3],dl
00034867  00FC              add ah,bh
00034869  46                inc esi
0003486A  0000              add [eax],al
0003486C  2027              and [edi],ah
0003486E  0200              add al,[eax]
00034870  0000              add [eax],al
00034872  0000              add [eax],al
00034874  0000              add [eax],al
00034876  0000              add [eax],al
00034878  2000              and [eax],al
0003487A  0000              add [eax],al
0003487C  0000              add [eax],al
0003487E  0000              add [eax],al
00034880  37                aaa
00034881  0000              add [eax],al
00034883  0001              add [ecx],al
00034885  0000              add [eax],al
00034887  0030              add [eax],dh
00034889  0000              add [eax],al
0003488B  0000              add [eax],al
0003488D  0000              add [eax],al
0003488F  00FC              add ah,bh
00034891  46                inc esi
00034892  0000              add [eax],al
00034894  2B00              sub eax,[eax]
00034896  0000              add [eax],al
00034898  0000              add [eax],al
0003489A  0000              add [eax],al
0003489C  0000              add [eax],al
0003489E  0000              add [eax],al
000348A0  0100              add [eax],eax
000348A2  0000              add [eax],al
000348A4  0100              add [eax],eax
000348A6  0000              add [eax],al
000348A8  0100              add [eax],eax
000348AA  0000              add [eax],al
000348AC  0300              add eax,[eax]
000348AE  0000              add [eax],al
000348B0  0000              add [eax],al
000348B2  0000              add [eax],al
000348B4  0000              add [eax],al
000348B6  0000              add [eax],al
000348B8  27                daa
000348B9  47                inc edi
000348BA  0000              add [eax],al
000348BC  40                inc eax
000348BD  0000              add [eax],al
000348BF  0000              add [eax],al
000348C1  0000              add [eax],al
000348C3  0000              add [eax],al
000348C5  0000              add [eax],al
000348C7  0001              add [ecx],al
000348C9  0000              add [eax],al
000348CB  0000              add [eax],al
000348CD  0000              add [eax],al
000348CF  00                db 0x00
