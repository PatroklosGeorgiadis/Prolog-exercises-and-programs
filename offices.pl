isnextto(member(Office1,_),member(Office2,_),Offices):-
    nextto(Office1,Office2,Offices).
isnextto(member(Office1,_),member(Office2,_),Offices):-
    nextto(Office2,Office1,Offices).

solve_puzzle(Answer1,Answer2,Workplace):-
    Workplace = [
        office(1,Department1,Colour1,Computer1,Drink1,Phone1),
        office(2,Department2,Colour2,Computer2,Drink2,Phone2),
        office(3,Department3,Colour3,Computer3,Drink3,Phone3),
        office(4,Department4,Colour4,Computer4,Drink4,Phone4),
        office(5,Department5,Colour5,Computer5,Drink5,Phone5)],
    member(office(_,"�����������","�������",_,_,_),Workplace),
    member(office(_,"�������� ��� ��������",_,"Macbook Pro",_,_),Workplace),
    member(office(_,_,"�������",_,"�����",_),Workplace),
    member(office(_,"����������",_,_,"����",_),Workplace),
    member(office(_,_,"����",_,_,_),Workplace),
    member(office(_,_,"�������",_,_,_),Workplace),
    nextto(office(_,_,"����",_,_,_),
           office(_,_,"�������",_,_,_),
           Workplace),
    member(office(_,_,_,"Macbook Air",_,"iPhone"),Workplace),
    member(office(_,_,"�������",_,_,"Blackberry"),Workplace),
    member(office(3,_,_,_,"����",_),Workplace),
    member(office(1,"�������� �������",_,_,_,_),Workplace),
    isnextto(member(office(_,_,_,_,_,"Nokia"),Workplace),
             member(office(_,_,_,"Netbook",_,_),Workplace),
             Workplace),
    isnextto(member(office(_,_,_,_,_,"Blackberry"),Workplace),
             member(office(_,_,_,"Windows 7",_,_),Workplace),
             Workplace),
    member(office(_,_,_,_,"�����������","Android"),Workplace),
    member(office(_,"����������",_,_,_,"Ericsson"),Workplace),
    isnextto(member(office(_,"�������� �������",_,_,_,_),Workplace),
             member(office(_,_,"����",_,_,_),Workplace),
             Workplace),
    member(office(_,Answer1,_,_,"����",_),Workplace),
    member(office(_,Answer2,_,"Windows XP",_,_),Workplace).

%    member(office(_,�����������,�������,_,_,_),Workplace),
%    member(office(_,��������_���_��������,_,macbook_pro,_,_),Workplace),
%    member(office(_,_,�������,_,�����,_),Workplace),
%    member(office(_,����������,_,_,����,_),Workplace),
%    member(office(_,_,_,macbook_air,_,iPhone),Workplace),
%    member(office(_,_,�������,_,_,blackberry),Workplace),
%    member(office(3,_,_,_,milk,_),Workplace),
%    member(office(1,��������_�������,_,_,_,_),Workplace),
%    member(office(_,_,_,_,�����������,android),Workplace),
%    member(office(_,����������,_,_,_,ericsson),Workplace),
%    member(office(L,_,����,_,_,_),Workplace),
%    member(office(R,_,�������,_,_,_),Workplace), nextto(L,R,Workplace),
%    member(office(OfficeA,_,_,_,_,nokia),Workplace),
%    member(office(OfficeB,_,_,netbook,_,_),Workplace),
%    isnextto(OfficeA,OfficeB,Workplace),
%    member(office(OfficeC,_,_,_,_,blackberry),Workplace),
%    member(office(OfficeD,_,_,windows_7,_,_),Workplace),
%    isnextto(OfficeC,OfficeD,Workplace),
%    member(office(OfficeE,��������_�������,_,_,_,_),Workplace),
%    member(office(OfficeF,_,����,_,_,_),Workplace),
%    isnextto(OfficeE,OfficeF,Workplace),
%    member(office(_,Answer1,_,_,����,_),Workplace),
%    member(office(_,Answer2,_,windows_xp,_,_),Workplace).
