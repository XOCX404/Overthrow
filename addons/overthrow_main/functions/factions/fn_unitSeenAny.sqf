if((vehicle _this) != _this) then {_this = vehicle _this};

{
    _x = driver _x;
    ((side _x isEqualTo east) || (side _x isEqualTo west) || (side _x isEqualTo civilian)) && (
        (_x distance _this < 7) or
        ((time - ((_x targetKnowledge _this) select 2)) < 10)
    )
}count (_this nearEntities 1200) > 0;
