program prog_8_3;
uses crt;

var
    CurHour: Integer;
    CurHeight: Integer;
    DefaultDelay: Integer;
    name: string;

begin
    // ���樠������
    DefaultDelay:=800;
    CurHour := 0;
    CurHeight := 0;
    Window(1,1,100,100);
    Writeln('                         ���� ���������� �� �������');
    writeln();
    delay(DefaultDelay);
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/'); textcolor(15);write(',,*//(('); textcolor(lightblue);write('#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%'); textcolor(15);write('(#(.*.,...,.*((#'); textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%%%%'); textcolor(15);write('(#(**,,**#(*,,*//.,,*##'); textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%'); textcolor(15);write('@&@&**/#/,*#.***.,,,../,*((('); textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%'); textcolor(15);write('##,,(#&((,*..,/*/(*,..,%(/((((('); textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%%'); textcolor(15);write('##@&%%(*./&((((/...,.*/**..,#,*//((((#'); textcolor(lightblue);write('%%%%%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%%%'); textcolor(15);write('((((@&(&@@@&..,.*(%#*.,**,....*. ..,*////(((#'); textcolor(lightblue);write('%%%%%%%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%%%'); textcolor(15);write('((#&%(%#(@@&@(*../*..(.../,**/@#(/*.*... ,**//((((((#'); textcolor(lightblue);write('%%%%%%%%%');writeln();
    textcolor(lightblue);write('%%%%%%%%%%%%%'); textcolor(15);write('(((&&&/*(&@@@(@..,.***.. */(,,*(////&.,,./*.///(((((((((((((((((');writeln();
    textcolor(lightblue);write('%%%%%%%%%....'); textcolor(15);write('*(@&(//&/*/%@&///....%%(//,*,,*,*////#//.,,*,*//((((((((((((((((');writeln();
    textcolor(lightblue);write('%,,,....   '); textcolor(15);write('&/&%#%*/**(@&@(%#%@,**//.,((/@@*(//#*###(@(/((@//,#//(((((((((((((');;writeln();
    textcolor(lightblue);write(',******,,,'); textcolor(15);write('&&*/,**/&&&&%&%(#%.**/*((*/@#%(//%#(/(/*(&////#../((/////(/////////');;writeln();
    textcolor(lightblue);write(',**,,,,,'); textcolor(15);write('#*@/(*,,/,*(%&/&/*/&&(/*#(,,,***,/@/(*&&/////#(/*(/**,///////////////');;writeln();
    textcolor(lightblue);write('****,,,'); textcolor(15);write('#%**,*(/##(%*/&@&&&@@&(&,*///.&&/(/,*(,*/,,%/***/*//*/*///(,*#////////');;writeln();
    textcolor(lightblue);write('****%'); textcolor(15);write('((%%&%%@/#@#%@&%#&&@(#(&(%%#&/%(*&%(,*#/,,*/*,#,**,*,***#/#,/(/*///,/*/*');;writeln();
    writeln('*#@@**&&&@&/&(@@&@&&&&@&%@@&/%%&((@@%,*/#/**((,/********,,*,&/*/,//*&%...*%#*');
    writeln('&&*,/&@&&&&@&&%&%&&@&&&&%%(,,*%,&&@@&&&@&/%./%&&&/**,.*/#/*#/*(@@(**/*@(&&(%%');
    writeln('@&&&&@&%&&&&%&%&&&%#(*,,*//@&@%@&@@@&&&%&%#,%%/** /,*((*(/@%&%//**/,*&@&&/*/*');
    writeln('&@&&@&&@&%&%%&%(#&%%*%%*,,,&@@@@@@@@&%&@@@@&&@*,*,.(*,/@%(/%@&/@#*/@@%&@&%/#%');
    writeln('&%(&@@&@&@@@@&&&&,*(//*,&*,/(&&@@%&@&&&&@&@&@@##@@.*(*.#...&/,@@@&@&&@&&*&&@&');
    writeln('@@&@@@@&&@@&&&&@&%&&@&&&&&&,/*(%&@@@&@&%%@&@%%@@&&@%**%%,*.%((#&@@@##/,,*//(/');
    writeln('&@@@@@@@&&@@@@&&&&&%&&@&&%@@@&%&&@&&@@@@&&%&&&&@@&@@&@@@&%/(%*&&&&(/(@&@/(/*,');
    writeln();
    delay(DefaultDelay);
    writeln('������ ENTER');
    readln();
    ClrScr;

    writeln('������㭣��, ������, ����ଠ��...');
    delay(DefaultDelay);
    writeln();
    writeln('��� ����� ���� � �⮩ ������㯭�� ��ᠢ���, ��������� �⮫� ᨫ�묨 ���ࠬ�,');
    delay(DefaultDelay);
    writeln();
    writeln('�� ���� �������� ᭥����� �㬥�� ����ঠ���� �� �� ���������� ���������� ᪫����.');
    delay(DefaultDelay);
    writeln();
    writeln('��⨭��� ����㦨�� ��������, � ������ �� ���ன ᣨ�� �� ���� ����� ��쯨����.');
    delay(DefaultDelay);
    writeln();
    writeln('�� ��⠢�� ��ਪ�, ���� �� �� �� �⨬ ��襫 �, �� ⠪ ��?');
    delay(DefaultDelay);
    writeln();
    writeln('���� ���� ������ ⢮� ࠧ� �� ����拉 �� �� ᮢ��襭�� 8848 �.');
    delay(DefaultDelay);
    writeln();
    writeln('������� ��, ��⠢��� ᫥� ᢮��� ������㯠 �� ���設� ���. ');
    delay(DefaultDelay);
    writeln();
    writeln('� 楫� �� ⠪ �����稢� ������...');
    delay(DefaultDelay);
    writeln();
    writeln();
    writeln('������ ENTER');
    readln();
    ClrScr;

    writeln('����� �뫮 �� ������� ⥡� �।�⠢�����, �� �⮨� �� ������� ⥡� ����������?');
    delay(DefaultDelay);
    writeln();
    writeln('��� ����� ��� ����⪨ �����.');
    readln();
    ClrScr;

    while (CurHour < 12) and (CurHeight < 800)  do
    begin
    writeln('������ ���� = ', CurHeight, ' �');
    writeln('����饥 �६� = ', CurHour, ' �');

    // ��ࠡ�⪠ ��砩���� ᮡ���
    writeln('�� ��');

    // �롮� ����⢨�
    writeln('������ Enter');
    readln();

    // ��ࠡ�⪠ ����⢨�
    CurHeight:=CurHeight+200;
    CurHour:=CurHour+1;

    end;

    if (CurHeight >= 800) then
    begin
        ClrScr;
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::::');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:::');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~~~~~=====~==~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~~========++++=+===~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~==+++++?????IIII+I?++=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~==+++??IIIII=:+?I 7=7+I??==~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~===+++++III7~+~+:=,I7++=7~~?~~=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~=======+++?II+~~~~==::~=:==~?~:+I7?+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~======+++???I:~?I??I:~7,+~~+=+::+:=~7~=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~=======+??IIII+III?I::==~~::=7=+7:I,I,?~~~+=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('==========+III++?+~:~+:+=?=77=III=77777++=:~:~::?~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('=======+=+?I::::::::::+,?=7++:+7:7?7::I=:~=~~~+==:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('====+==+I?~:~:~~:::::?:~:~I~?~7 I7?+I:I~=:~:++:::=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('===++?~:=++~+:~:~~:I::~::~:::,,+=+:==:~+::~:?:=,~:=::~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('==+?+::+::~::?:~::~=:~~,:=~,:7?++~:~:=:~:~=~==:77II?=+==~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('=?=:::~~:::::::?~::~:~~~:~I=~+?,:::+=~:~:~:::~77II7++I:~?~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('I7:~:~~~:~=~:::?::~~~~?:~:~:~+:~~:::~~~~~:+::,?7II~?+:=+~+I~~~~~~~~~~~~~~~~~~~~~');
        writeln('I??==~=:~~:~~::~~~==?::::~=::,?,?:+::~::?,I?=??7?:+==::::=~:7~~~~~~~~~~~~~~~~~~~');
        writeln('IIII?I,::~~=::~:~=???I::=:::::,~=::+~:~,:~:~=I+?I=+=:::=:::::++=~~~~~~~~~~~~~~~~');
        writeln('?+?IIII?II7~=~~=???~::::=:,,,:~I:+~:~:::?I7I+~=~:~:~~::~7=~:~~:I~77+~~~~~~~~~~~~');
        writeln('?I+=I+IIIII77I+===~:?::?+~~~~=~,,I+I:?+:::7++=?=?~:::I~~:~::~::I~=+I+7II777~~~~?');
        writeln('?~=7+=++?+IIII=?+=::++~+=~:::=+7?7I+++~+====~=~+.I=?I~::~?~:~I+:+::~7II~==+??77I');
        writeln('I~I?++?=+IIII7?+?~I+?7777777?+?I=?+++=++~=++==+=:===??+?7=~,~?+~~:II=+77777IIIII');
        writeln('+=7++?I?==7I?III?+?III+?=I??++=++I+++~=+~=~===+==+~=+=I+:I~=~=:7?=:77II+7I7777II');
        writeln('==I++?=?++??II==?:=?II=?=I?II?+?I====?~====++=~~~=+:=7,:::?I:?=?7I+~:~I===?77777');
        writeln('~~??++I=~+?+?I7+=I+??~+=+?????I++==++I?~=+==+=====:~+,:~~+..==I:~?~I::=:I??7I7~7');
        writeln('::::==?++??,~~7+II+=~=+=:.+~7II?=~=I?+~~~=~==+:=+==~~?::.,=~,,:?=?7I++I+?III=I?7');
        writeln('.........+:,,:I+~?+=I7==+:=+?7I7I+=:+~??:~~=+~~+==~=~=,:~==~~++??,:~7I++7?+~:~?+');
        writeln('.............:==++,+7?I=?===~?++=II=+?++?~~~~==:,=~,=~,,~,,.....~:=+?I7+:?I+???=');
        writeln('................,,,.,.,+~+::~I++,~=~=,~,+=~~~====:~=~~,=~:~~..=.~.+,,.+~?????=?~');
        writeln();
        writeln('� ��� ������ � ⢮�� ���.');
        delay(DefaultDelay);
        writeln('�������, ��� ᫠��� ����, �������騩 ⢮� ����饥 ���?');
        delay(DefaultDelay);
        writeln('���頥�� �����, �墠�뢠�騩 ������������� ⥫�, �ਫ�� ������ � ᨫ?');
        delay(DefaultDelay);
        writeln('�� ⥡� �� ᫠���쪨� ��䥨� �� ������襩 ��䥩��, �� �������!');
        delay(DefaultDelay);
        writeln('�� �������! �� ᬮ�! �� �� ���設� ���!');
        delay(DefaultDelay);
        writeln('����, ��� ⥡� �����?');
        readln(name);
        writeln('����᭮� ����, ', name, ' ... �� ���� ������⥫� �� ���� � ��砩�����.');
        end
    else
    begin
        ClrScr;
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::::');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:::');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~::');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~~~~~=====~==~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~~========++++=+===~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~==+++++?????IIII+I?++=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~~==+++??IIIII=:+?I 7=7+I??==~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~~~~===+++++III7~+~+:=,I7++=7~~?~~=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~~=======+++?II+~~~~==::~=:==~?~:+I7?+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~~~======+++???I:~?I??I:~7,+~~+=+::+:=~7~=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('~~~=======+??IIII+III?I::==~~::=7=+7:I,I,?~~~+=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('==========+III++?+~:~+:+=?=77=III=77777++=:~:~::?~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('=======+=+?I::::::::::+,?=7++:+7:7?7::I=:~=~~~+==:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('====+==+I?~:~:~~:::::?:~:~I~?~7 I7?+I:I~=:~:++:::=~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('===++?~:=++~+:~:~~:I::~::~:::,,+=+:==:~+::~:?:=,~:=::~~~~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('==+?+::+::~::?:~::~=:~~,:=~,:7?++~:~:=:~:~=~==:77II?=+==~~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('=?=:::~~:::::::?~::~:~~~:~I=~+?,:::+=~:~:~:::~77II7++I:~?~~~~~~~~~~~~~~~~~~~~~~~');
        writeln('I7:~:~~~:~=~:::?::~~~~?:~:~:~+:~~:::~~~~~:+::,?7II~?+:=+~+I~~~~~~~~~~~~~~~~~~~~~');
        writeln('I??==~=:~~:~~::~~~==?::::~=::,?,?:+::~::?,I?=??7?:+==::::=~:7~~~~~~~~~~~~~~~~~~~');
        writeln('IIII?I,::~~=::~:~=???I::=:::::,~=::+~:~,:~:~=I+?I=+=:::=:::::++=~~~~~~~~~~~~~~~~');
        writeln('?+?IIII?II7~=~~=???~::::=:,,,:~I:+~:~:::?I7I+~=~:~:~~::~7=~:~~:I~77+~~~~~~~~~~~~');
        writeln('?I+=I+IIIII77I+===~:?::?+~~~~=~,,I+I:?+:::7++=?=?~:::I~~:~::~::I~=+I+7II777~~~~?');
        writeln('?~=7+=++?+IIII=?+=::++~+=~:::=+7?7I+++~+====~=~+.I=?I~::~?~:~I+:+::~7II~==+??77I');
        writeln('I~I?++?=+IIII7?+?~I+?7777777?+?I=?+++=++~=++==+=:===??+?7=~,~?+~~:II=+77777IIIII');
        writeln('+=7++?I?==7I?III?+?III+?=I??++=++I+++~=+~=~===+==+~=+=I+:I~=~=:7?=:77II+7I7777II');
        writeln('==I++?=?++??II==?:=?II=?=I?II?+?I====?~====++=~~~=+:=7,:::?I:?=?7I+~:~I===?77777');
        writeln('~~??++I=~+?+?I7+=I+??~+=+?????I++==++I?~=+==+=====:~+,:~~+..==I:~?~I::=:I??7I7~7');
        writeln('::::==?++??,~~7+II+=~=+=:.+~7II?=~=I?+~~~=~==+:=+==~~?::.,=~,,:?=?7I++I+?III=I?7');
        writeln('.........+:,,:I+~?+=I7==+:=+?7I7I+=:+~??:~~=+~~+==~=~=,:~==~~++??,:~7I++7?+~:~?+');
        writeln('.............:==++,+7?I=?===~?++=II=+?++?~~~~==:,=~,=~,,~,,.....~:=+?I7+:?I+???=');
        writeln('................,,,.,.,+~+::~I++,~=~=,~,+=~~~====:~=~~,=~:~~..=.~.+,,.+~?????=?~');
        writeln();
        writeln('��ᬮ��, ��� ������ �뫠 ������.');
        delay(DefaultDelay);
        writeln('������� �ᨫ��, � ������ ����૨�� �� � ⢮�� ���.');
        delay(DefaultDelay);
        writeln('���� �����, �� �⥫ �� ᮡ����� � ᨫ��� � ���஡����� �� ࠧ?');
        delay(DefaultDelay);
        writeln('�� �, ������ �㤥� �����.');
    end;
readln();
end.