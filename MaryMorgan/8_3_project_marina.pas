program prog_8_3;
uses uniconsole;
const
    lightblue = 1;

var
    CurHour: Integer; //текущее время.
    CurHeight: Integer; //текущая высота.uniconsole;
    health: integer; //усталость.
    YetiFoto: Boolean; //было ли сделано фото с Йети.
    foodPacks: integer; //количество порций еды.
    hooks: integer; //количество крюков.
    oxygen: Integer;


procedure Init();
begin
    CurHour:= 0;
    CurHeight:= 0;
    health:=0;
    foodPacks:=10;
    hooks:=5;
    oxygen:=2;
end;

procedure Status();
begin
    Writeln('Вам осталось пройти' ,(800 - CurHeight), 'метров, ваше здоровье ', health, ' и время ', CurHour, ' часов');
    
end;

procedure StartScreen();
begin
    ClrScr;
    Writeln('                         Добро пожаловать на ЭВЕРЕСТ');
    writeln();
    delay(1000);
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
    delay(1000);
    writeln('Нажмите ENTER');
    readln();

    ClrScr;
    writeln('Джомолунгма, Эверест, Сагарматха...');
    delay(1000);
    writeln();
    writeln('Как много имен у этой неприступной красавицы, овеваемой столь сильными ветрами,');
    delay(1000);
    writeln();
    writeln('что лишь немногие снежинки сумели задержаться на ее оледенелых каменистых склонах.');
    delay(1000);
    writeln();
    writeln('Истинная жемчужина Гималаев, в погоне за которой сгинул не один опытный альпинист.');
    delay(1000);
    writeln();
    writeln('Но оставим лирику, ведь ты не за этим пришел сюда, не так ли?');
    delay(1000);
    writeln();
    writeln('Лишь одно гложет твой разум при взгляде на эти совершенные 8848 м.');
    delay(1000);
    writeln();
    writeln('Покорить ее, оставить след своего ледоступа на Вершине Мира. ');
    delay(1000);
    writeln();
    writeln('И цель эта так обманчиво близка...');
    delay(1000);
    writeln();
    writeln();
    writeln('Нажмите ENTER');
    readln(); 

    ClrScr;
    writeln('Можно было бы попросить тебя представиться, но стоит ли Эвересту тебя запоминать?');
    delay(1000);
    writeln();
    writeln('Вас каждый год десятки новых.');
    readln();
    ClrScr;
end;

procedure DrawEverest();
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
end;


procedure DrawYetiPhoto();
begin
    writeln('                                                                               ');
    writeln('           7777777                                                            ');
    writeln('          7777777777                                                          ');
    writeln('          7=?=77?,777           77777                                          ');
    writeln('      77777~?=77?+,777       7777,7+?=~777777                                  ');
    writeln('  77777+:777??77?I:7777    777+:=77777777:777                                  ');
    writeln('      7:??I+???III,=,?7777 7:7777777777777777777                               ');
    writeln('     7777:++~?=?I:II==77777,+?77?7,~?7777777=777                               ');
    writeln('      777~?+=:?????+7777777~?77==+++:==+=777:777                               ');
    writeln('       77+?I?I??I+:,777  77I7I++.77=777+I7777777');
    writeln('      7 .~??=+=::I:I77  77,I7~+~7..I:.7,?I?77:77');
    writeln('      77,:+~==:+~.7 7  777:7+=I??,.=.+?:I?~77 ~7777');
    writeln('      7~I7=777777. 77  7 7~7:+=,+I7I77I77I77777:7777');
    writeln('   7777II77777777+777777I,77777777777777777I777777777777777');
    writeln('   777,I777777777I,77777III77II=IIIII,:~:77:,7777=777777777');
    writeln('   777?77777777777I~777I=I?+~?.:7......=..,?I77777~~?:+II+:');
    writeln('   777I777777777777~7777+II?I+~.........=.=7777777777777777?:7777 7');
    writeln('   777?7777777777777777,I?I?I?+,,:.,..,?,:7777777777777777777?:7777');
    writeln('   77:77777777777777:+?IIIII7II?,++~=~?.77777777777777777777777?+7777 7');
    writeln('   77.?77777777I7777I?II?7I77777I7IIII7777777777777777777777777777:7777');
    writeln('   777I77777777777777??777777777II777777777777777777777777777777777?~77  7');
    writeln('    77:I7777777777777I7777777777777777777777777777777777777777777777I=7777');
    writeln('   777:II?7777777777777777777777777777II777777777777777777777777777777=:7');
    writeln('      7,II?I7I777777I777777777777777III77777777777777777777777777777777=7777');
    writeln('      7,:IIIIII77777I777777777777777III7777777777777777777 7777777777777?77');
    writeln('      77..?III77I7III7777777777777777II7777777777777777777II7777777777777,7777');
    writeln('      7777~~II?IIII?I777777777777777IIII77777777777777 77II,+I77777777777?~777');
    writeln('       777777,:I?I?II777777777777777III?777777777777777II=,+7,I7II 7777777?777');
    writeln('           77 777,=II7777777 7777777II?II7777777777777III,=77I+I?777777777?,77');
    writeln('             7777777I7777IIII777777777IIIIIII777 7777?I??~7777~II777777777I=77');
    writeln('                 77:?7I77777777777777777777I77777 77IIIII,7777,I?7777777777,77');
    writeln('                 77,II777777777777777777777777777I777III+,7 777,+?77777777I.77');
    writeln('                 77+II7777777777777777777777777777777I?I:I7777777?77777777?~77');
    writeln('                 777:?I777777777777777777777777777777I?I777    77~,I77777I?777');
    writeln('                  77I+?I77777777777777777777777777777?I=777  777:=++,I=7:+7777');
    writeln('                   7 7II7777777777777777777777777777III,77777777~??I=~~=+777');
    writeln('                   777.??7777777777777777777777777II?II+777777+=??=?III+I77');
    writeln('                    777IIII777777777777777777777IIIII?I77 7777:,=7????=:7');
    writeln('                     77:III7777 777777777777777IIIIIII~777 7777?~???+:777');
    writeln('                      77II?I777777777777777777IIII?I~I?,77 77777::77777777');
    writeln('                      7=IIII7777777 777777777IIIIIIIIII:=     7777777');
    writeln('                     77,,I?II7II7777777 77777I?IIIIIIII:77     77777');
    writeln('                      77,7IIII?II777I777I777?IIIII7IIII:777');
    writeln('                      77777IIII:IIIIII?IIIIII,,II777IIII777');
    writeln('                      7~77I7III??,IIII?I.,,~7.I?I7777777~77');
    writeln('                    77,=7777II?,.777777777777,,,I777777?777');
    writeln('                   7 7?.777777III7777777 777777+I7777777777');
    writeln('                     77:777777II77          777III777777~77');
    writeln('                      7.777I7II,77          777,:+~,+:,7I777');
    writeln('                  77777.:~:~+:~,?7          7777???I??????777');
    writeln('                  77777~I????I~,77          777+~~:+?~:~,:,77');
    writeln('                  777:,,,~,?:??+,7          7777=+=,:=,+7777');
    writeln('                  77777777??777777           7777777777777');
    writeln('                  777777777777777               77777777');
    writeln('                                                                             ');
end;



procedure FinalScreen();
var
    name: string; //имя игрока.

begin
    if (CurHeight >= 800) then
    begin
        DrawEverest();
        writeln('И вот облака у твоих ног.');
        delay(1000);
        writeln('Чувствуешь, как сладок ветер, обвевающий твое горящее лицо?');
        delay(1000);
        writeln('Ощущаешь восторг, охватывающий изнеможденное тело, прилив бодрости и сил?');
        delay(1000);
        writeln('Это тебе не слабенький кофеин из ближайшей кофейни, это ЭВЕРЕСТ!');
        delay(1000);
        writeln('Ты победил! Ты смог! Ты на Вершине Мира!');
        delay(1000);
        writeln('Кстати, как тебя зовут?');
        readln(name);
        writeln('Интересное дело, ', name, ' ... Ни один победитель не верит в случайность.');
    end
    else
    begin
        DrawEverest();

        writeln('Посмотри, как близко была победа.');
        delay(1000);
        writeln('Немного усилий, и облака простерлись бы у твоих ног.');
        delay(1000);
        writeln('Быть может, ты хотел бы собраться с силами и попробовать еще раз?');
        delay(1000);
        writeln('Что ж, Эверест будет ждать.');
    end; 

    if YetiFoto=true then
    begin
        ClrScr;
        writeln('Твой путь пересекся с уникальным созданием, и эта встреча не прошла даром.');
        delay(1000);
        writeln('По возвращении домой туристические журналы заплатили тебе приличный гонорар за сделанное с Йети фото.');
        delay(1000);
        writeln('Завод по сжиганию фотографов сегодня остался без обеда.');
        delay(1000);
        writeln('Поздравления от народа Непала! Ожидается туристический бум и повышение благосостояния страны.');
        DrawYetiPhoto();
        readln();
    end;       
end;


procedure Bear();
    var
        Choice_Bear: Integer;
begin
    ClrScr;
    writeln('Вы встретили медведя');
    writeln('Нажмите 1 если хотите спрятаться, нажмите 2 если хотите подраться с медведем');
    writeln('Нажмите 3 если хотите напугать его');
    readln(Choice_Bear);
    case Choice_Bear of

        1:
        begin
            writeln('Вы спрятались.');
            writeln('Прошло много времени, пока вы решили продолжить путь.');
            
            CurHour := CurHour + 1;
        end;

        2:
        begin
            writeln('Вы начинаете кидать в медведя ветками');
            writeln('Плохая стратегия, медведь разъерен и пытается напасть.');
            writeln('Все обошлось царапиной и потерей части припасов.');
            CurHeight := CurHeight - 30;
            health := health - 15;

        end;

        3:
        begin
            writeln('Вы пытаетесь напугать медведя, но на него это не действует');
            writeln('Вы убегаете');
            CurHeight := CurHeight - 100;
        end;

        else 
            writeln('Invalid input');
    end;
end;

procedure Girl();
var
    Action_id: Integer;
begin
    ClrScr;

    writeln('                       .WWWWWWWWWWWWWWWWWWWWWWWWWWW.');
writeln('                     .WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW.');
writeln('                    .WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW.');
writeln('                   .WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW.');
writeln('                  .WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW.');
writeln('                 .WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW');
writeln('                .WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW');
writeln('                WWWWWWWWWWWWWWWWWWWWWWWWWWWWW WWWWWWWWWWW.');
writeln('               .WWWWWWWWWWWWWWWWWWWWWWWWWWW W WWWWWWWWWWWW');
writeln('               WWWWWWWWWWWWWWWWWWWWWWWWWWWWW WWWWWWWWWWWWW');
writeln('              .WWWWWWWWWWWWWWWWWWWWWWWWW...WWWWWWWWWWWWWWW');
writeln('             .WWWWWWWWWWWWWW.WWWWW.WWWWW.WWWWWWWW...WWWWWW');
writeln('             .WWWWWWWWWWWWWW...WWWWW        WWWWW...WWWWWW');
writeln('            .WWWWWWWWWWWWWWW.:.:.WW MM   WWWWWW...WWWWWWW`');
writeln('            WWWWWWWWWWWWWWWM..:.:  ::MM        ..::WWWWWW');
writeln('           .WWWWWWWWWWWWWWWM.:.:. ..MMM       ..::WWWWWWW');
writeln('           WWWWWWWWWWWWWWWWWM.:.: .:MMMMMM :   ::WWWWWWWW');
writeln('           `WWWWWWWWWWWWWWWWM :::.:           :.WWWWWWWWW.');
writeln('            .WWWWWWWWWWWWWWWWM:.:. MMMMMMMMM: :.WWWW WWWWW.');
writeln('             .WWWWWWWWWWWWWWWM.:.:  MMMMMMM  .MWWWWW WWWWW.');
writeln('              .WWWWWWWWWWWWWWWWW:.:::.:.:. :.:.WWW  WWWWWW.');
writeln('               .WWWWWWWWWWWWWWWWM:.::----.: MWWWWWWWWWWWWWW');
writeln('               .WWWWWWWWWWWWWWW  MM :::  MMM WWW  WWWWWWWWW');
writeln('            .WWWWWWWWWWWWWWWWWWW   MMMMMM   WWW  :WWWWWWWWW.');
writeln('          .WWWWWWWWWWWWWWWWWWW  MM:.:        WW  :WWWWWWWWWW');
writeln('         .WWWWWWWWWWWWWWWWWWWW MMM:.:.:.: :::  .WWWWWWW WW`');
writeln('         .WWWWWWWWWWWWWWWWWWWW  MM.:.:.:  ::W :WWWWWWWWWW`');
writeln('         .WWW:::        WWWWWW MMMM.:.::  ::WWWWW::WW W`');
writeln('         `WW:::::      W     :.:  ::        WWWWWWWW  W');
writeln('          `:::::::     WW  WWWWWWW:.:.:      WWWWWWW W W.');
writeln('            ::::::::    WWW WWWWWW:.:.:.:::    WWWWW  WW W');
writeln('           :::::::::    WWWW:::::::  : WWWWWW : WWWWW WW  W.');
writeln('          .::::::::     WWWWWWWW   .:::::::::  :  WWWWWW W  W.');
writeln('          :::::::::       WWW      ::::::::   ::  WWWWWW WWWW.');
writeln('          :::::::::                .:::::::    ::  WWWWWW    .');
writeln('         .::::::::.:                 .:::::    ::::: W WWWWWW.');
writeln('         ::::::::::.:                .:::::      :::WWW W  WWW');
writeln('         ::::::::::.:      .:         .::::           WWW');
writeln('         ::M::::::.:.     :M...        ..::           . .');
writeln('         ::M:::::::..    .:M:..             :          .');
writeln('         ::M::::::::.    MM:M..            .:..        ::');
writeln('         ::M:::::::.:.   M:M:.:.            ::..        ::');
writeln('         ::M::::::.:..  .MM:M:.:.            :...        :');
writeln('         ::M:::::.:.:. .:M:MM.:...            :...       :');
writeln('         :M::::.:.:.:. MMM:.:.:..             :...       :.');
writeln('          M:::::::.:.. MMM:M:.MM..        :::  :..       .:.');
writeln('          M::::::.:.:. MM:.:.:.M:M..   ..... :..          .:.');
writeln('          :::::::.:..  MM:.::::M:M:M:::::MM: : ..         .:.');
writeln('          M::::::.:.:. MM::.:M:M:M:M:::::::: :  ...        .:.');

    writeln('Вы встречаете красивую девушку');

    writeln('Нажмите 1 если хотите поговорить с девушкой, нажмите 2 если вам не интересно');
    readln(Action_id);

    case Action_id of
        1:
        begin
            writeln('You spend a really good time together. Time flies quickly');
            health:= health + 10;
            CurHour:= CurHour + 2;

            end;

        2:
        begin
            writeln('Вы продолжаете свой путь. Вы немного сожалеете о своем решении.');
            health:= health - 10;

        end;
        else 
            writeln('Ясно');
    end;

end;

procedure Min_health();
begin
   if (health < 10) and (random(5) = 0) then
       if (oxygen > 0) then
       begin
           oxygen := oxygen-1;
           health:= health + 20;
           writeln('Уже который час тебя мучают головые боли и сильный озноб. Дышать становится все тяжелее.');
           writeln('Уж не высотная ли болезнь подкосила тебя?');
           writeln('Озаренный догадкой, ты с трудом достал кислородный баллон и сумел привести себя в чувство.');
           writeln('Следи за своим здоровьем, приятель. В следующий раз баллона может не оказаться.');
       end

       else
       begin
           writeln('Уже который час тебя мучают головые боли и сильный озноб. Дышать становится все тяжелее.');
           writeln('Уж не высотная ли болезнь подкосила тебя?');
           writeln('Озаренный догадкой, ты потянулся было за кислородом, но его больше не осталось. Что же делать?..');
           writeln('К счастью, тебе под руку попалась рация. Ты связываешься с базовым лагерем и они высылают тебе спасателя.');
           FinalScreen();
       end;
end; 

procedure Sphinx();
var
        Action_id: Integer;
        answer: Integer;
begin
    writeln('На вершине горы вы встречаете загадочное существо.');
    writeln('Оно оборачивается к вам и задает вопрос:');
    writeln('Какое число следующее в последовательности —');
    writeln('8, 13, 21, 34, 55, ?');

    readln(answer);

    if answer = 89 then
    begin
        writeln('Правильный ответ.');
        writeln('Существо пропускает вас на вершину');
    end
    else
    begin
        writeln('Существо вас пожирает. Конец');
        exit;

    end;
    

end;


procedure Action_choose();
var
    Action_id: Integer;
begin
    writeln('Теперь вы можете выбрать несколько действий');
        writeln('Нажмите 1 если хотите подремать - здоровье +20, время + 1');
        writeln('Нажмите 2 если хотите выложится на полную - здоровье -20, время + 1, прогресс + 100m ');
        writeln('Нажмите 3 если хотите просто продолжать двигаться с той же скоростью');
        
        readln(Action_id);

        case Action_id of
            1: 
            begin
                health:= health + 20;
                CurHour:= CurHour + 1;
            end;

            2: 
            begin
                health := health - 20;
                CurHour := CurHour + 1;
                CurHeight := CurHeight + 100;
            end;
            
            3: 
            begin
                writeln('Хороший выбор!');
            end;
        end;


end;



procedure Yeti;
var
    choise: Integer;
begin
    ClrScr;
    writeln('Хрррр... Да, не показалось. Это действительно Йети. Призрачная легенда гор.');
    writeln('Не многим удавалось его встретить, еще меньшим выжить (или вообще никому). Поздравлять, или как?');
    delay(1000);
    writeln('Выбери действие: ');
    delay(1000);
    writeln('1 Бежать изо всех сил, подобно трусливой газели');
    writeln('2 Познать исскуство ниндзя и затаиться средь камней');
    writeln('3 Достать бутерброд');
    readln(choise);
    
    case choise of
    1: begin
        writeln('Казалось, ты бежал быстрее луча света... ну, по крайней мере, уж точно быстрее вальяжного Йети.');
        writeln('Однако и вымотался ты прилично. Лишний бургер на пузике плохо помогает в походе, амиго?');
        health:=health+2;
        CurHeight:=CurHeight+100;
       end;
    2: begin
        writeln('Вся мощь японской философии сконцентрировалась в твоем теле, ты замер подобно валуну давных времен');
        writeln('Йети продолжил свой путь и не заметил тебя. А ты получил отличный шанс сделать фоточку.');
        writeln('Разве не милота?');
        YetiFoto:=true;
       end;
    3: begin
        if (foodPacks>0) then
        begin
            if foodPacks<0 then
            foodPacks:=0;
            YetiFoto:=true;
            health:=health-1;
            if health<0 then
                health:=0;
            CurHeight:=CurHeight+100;
            writeln('Оголодавший Йети с удовольствием полакомился твоей снедью.');
            writeln('Его благодушное урчание подсказывает тебе, что это отличный шанс сделать фоточку.');
        end
        else
        begin
            writeln('А бутерброда-то не оказалось в рюкзаке. Оголодалый Йети не оценил.');
            delay(1000);
            writeln('Беги, Форест, беги!');
            delay(1000);
            writeln('Фух, удалось... Как неожиданно, правда? Топтать бутеры надо поменьше.');
            health:=health+2;
            CurHeight:=CurHeight+100;
        end;
       end;
    else
    begin
        writeln('Ошеломленный твоим нонкоформизмом, Йети впал в оцепенение на час. Продолжай свой путь, маленький бунтарь!.');
        writeln('Ну и фото на память, конечно.');
        YetiFoto:=true;
        CurHeight:=CurHeight+100;
        end;
    end;
end;

procedure Meditation;
var
    choise: Integer;
begin
    writeln('Вы встретили "святого человека". Он погружен в медитацию и занял собою весь узкий проход.');
    writeln('Выбери действие: ');
    writeln('1 Подождать окончания процесса');
    writeln('2 Дать волшебного пинка и пройти');
    writeln('3 Мастерски закинуть крюк в скалу за оккупированным проходом и подтянуться на веревке');
    readln(choise);
    
    case choise of
    1: begin
        writeln('С относительным комфортом засположившись на мерзлых камнях, ты принялся ждать');
        delay(2000);
        writeln('Ты ждал, и ждал, и ждал.');
        delay(2000);
        writeln('Казалось, будто время замерло. Будто твоя девушка пакует чемодан в отпуск. Будто ты сидишь на балете.');
        delay(2000);
        writeln('Ты неспешно съел два бутерброда, закусил талым снегом, подумал о смысле жизни и Космосе...');
        writeln('И вот наконец свершилось.');
        writeln('Странный человек вышел из состояния окаменелости, закинул на плечи нехитрый скарб и побрел по тропе вниз.');
        foodPacks:=foodPacks-2;
        if foodPacks<0 then
            foodPacks:=0;
        health:=health-2;
        if health<0 then
            health:=0;
        end;
    2: begin
        writeln('Точность - вежливость королей. Дав нагло рассевшемуся медитанту точный пинок, ты расчистил себе путь');
        writeln('Медитант спокойно посмотрел на тебя, покачал головой и продолжил медитацию в стороне от прохода.');
        writeln('Ты радостно рванул вперед, не заметив оледенения тропы, и подскользнувшись, стремительно откатился назад по склону.');
        writeln('Что ж, мой маленький агрессор, дорога несколько затянется.');
        CurHeight:=CurHeight-100;
       end;
    3: begin
        if (hooks>0) then
        begin
            health:=health+1;
            CurHeight:=CurHeight+200;
            writeln('И хотелось бы пошутить, да не над чем. Ты блестяще закинул крюк и поднялся по веревке, миновав преграду.');
            writeln('Поднявшись на уступ, ты заметил, что более эффективно миновал сложный отрезок дороги,');
            writeln('и продвинулся к вершине быстрее, чем ожидал. Дерзай, герой!');
        end
        else
        begin
            writeln('Крюк улетел в расщелину и безвозвратно утерян. Мастером закидывания крюка считать тебя рановато.');
            writeln('Однако цели ты достигнул, странный человек заметил тебя');
            writeln('Удивленно поглядел на твои манипуляции с крюком и передвинулся в сторону вместе со своим нехитрым скарбом.');
            writeln('Путь свободен благодаря твоей удивительной ловкости и смекалке.');
            health:=health+1;
            CurHeight:=CurHeight+100;
            hooks:=hooks-1;
        end;
       end;
    else
    begin
        writeln('Ты принял самое неочевидное решение в данной ситуации. Просто подошел к странному человеку и попросил пройти');
        writeln('Он вежливо передвинулся в сторону вместе со своим нехитрым скарбоми освободил дорогу.');
        CurHeight:=CurHeight+100;
        end;
    end;
end;

procedure RandomEvent();
var
    Event_id: integer;
begin
    
   
    Event_id:= Random(8);

        case Event_id of
            
            0: 
            begin
            writeln('Отличная прогулка ');
            writeln('Вы прошли 200 метров за 1 час');
            CurHeight := CurHeight + 200;
            CurHour := CurHour + 1;
                
            end;

            1: 
            begin
            writeln('You made a moderate progress today, it was really freezing');
            writeln('You made 100 metres leap in 1 hour ');
            CurHeight := CurHeight + 100;
            CurHour := CurHour + 1;
            health := health - 10;

            end;

            2: 
            begin

            Bear();
            
            end;

            3: 
            begin
            writeln('Вас атаковал медведь');
            writeln('Вы не выжили');

            health := health - 100;

            end;

            4: 
            begin
            writeln('Отличный результат');
            writeln('Вы прошли 300 метров');

            CurHeight := CurHeight + 300;
            CurHour := CurHour + 1;
            end;

            5: 
            begin

            Girl();

            end;

            6: 
            begin

            Meditation();

            end;

            7: 
            begin

            Yeti();

            end;



    end;

end;

begin
    Init();    // Инициализация
    
    StartScreen();

    while (CurHour < 12) and (CurHeight < 800)  do
    begin
 
        RandomEvent();

        // Выбор действия
        writeln('Нажмите Enter');
        readln();

        // Обработка действия
        
        Status();
        Action_choose();
        Min_health();

    end;

    Sphinx();
    FinalScreen();
    readln();
end.