local al = gg.alert
local to = gg.toast
local cho = gg.choice
local sn = gg.searchNumber
local cr = gg.clearResults
local ed = gg.editAll
local rr = gg.removeResults
local pr = gg.prompt
local iv = gg.isVisible
local sv = gg.setVisible
local gr = gg.getResults
local sr = gg.setRanges
local sl = gg.sleep
local tpd = gg.TYPE_DWORD
local tpq = gg.TYPE_QWORD
local rca = gg.REGION_CODE_APP
local ali = gg.addListItems
local grc = gg.getResultCount
local ra = gg.REGION_ANONYMOUS
local tpw = gg.TYPE_WORD

GPair = 500
MIN = -2147483648
MAX = 4294967295
Creator = "ChrxnZ"

function WFA() -- WFA function made by horridmodz
    sv(false)
    while true do
    if iv() then
    break
    end
    to("Script Made By " .. #Creator .. "")
    sl(100)
    end
end

function DIS_ENCRYPTION()
    Dec = cho({
        "Disable Encryption"
    }, nil, "Run At ~450MB")

    if Dec == 1 then
        sr(rca)
        cr()
        sn("-788446209D;956336767D::77")
        s1 = gr(2)
        if grc(s1) == 2 then
            ali(s1)
            ed("-698416192" ,tpd)
            rr(s1)
        end
        if grc(s1) == 0 then
            print("First Search: No Results (Run At 500MB?)")
        end
        sn("-6268623683403968519Q;8261102860592567656Q::69")
        s2 = gr(2)
        if grc(s2) == 2 then
            ali(s2)
            ed("-2999674702930181152" ,tpq)
            rr(s2)
        end
        if grc(s2) == 0 then
            print("Second Search: No Results (Run At 500MB?)")
        end
    end
end


function START(VALUE_ARG, EDIT_ARG, PAIR_ARG)
    sr(ra)
    cr()
    if VALUE_ARG <= MIN then
        print("Lowest Searchable Number Is " .. #MIN .. ", Therefore " .. #VALUE_ARG .. " Is Not Searchable.")
    elseif VALUE_ARG >= MAX then
        print("Highest Searchable Number Is " .. #MAX .. ", Therefore " .. #VALUE_ARG .. " Is Not Searchable.")
    else
        sn(VALUE_ARG .. "X4" ,tpd)
        repeat
            Pair = gr(PAIR_ARG)
            ed(EDIT_ARG .. "X4" ,tpd)
            ali(Pair)
            rr(Pair)
        until(grc(Pair) == 0)
    end
end

function MANUPILATE(VALUE_ARG, EDIT_ARG)
    sr(ra)
    cr()
    if VALUE_ARG <= MIN then
        print("Lowest Searchable Number Is " .. #MIN .. ", Therefore " .. #VALUE_ARG .. " Is Not Searchable.")
    elseif VALUE_ARG >= MAX then
        print("Highest Searchable Number Is " .. #MAX .. ", Therefore " .. #VALUE_ARG .. " Is Not Searchable.")
    else
        sn(VALUE_ARG .. "X4" ,tpd)
        repeat
            Pair1 = gr(GPair)
            ed(EDIT_ARG .. "X4" ,tpd)
            ali(Pair1)
            rr(Pair1)
        until(grc(Pair1) == 0)
        al("Go To The Weapon In Gallery And Click On GG When Done So")
        WFA()
        sn(";err" ,tpw)
        for i = 1, 20 do
            Pair2 = gr(GPair)
            ed("0" ,tpw)
        end
        al("Buy Weapon With Coupons Now And Go To Gallery Then Click On GG When Done So")
        WFA()
        repeat
            Pair3 = gr(GPair)
            ed(";err" ,tpw)
            rr(Pair3)
        until(grc(Pair3) == 0)
    end
end



Main_MENU = cho({
    "Disable Value Encryption",
    "Decrypted Values Searcher + Editor",
    "Weapon Manupilation"
}, nil, "BETA")

if Main_MENU == 1 then
    DIS_ENCRYPTION()
end


if Main_MENU == 2 then
    local config = pr({
        "Value To Search:",
        "Edit Values To:",
        "Edit Pairs:",
        "SEND CONFIG TO FUNCTION"
    },
    {[1] = "1000", [2] = "0", [3] = "500", [4] = true},
    {[1] = "Number", [2] = "Number", [3] = "Number", [4] = "Checkbox"}
)
    if config then
        if config[4] then
            START(config[1], config[2], config[3])
        end
    end
end

if Main_MENU == 3 then
    local config = pr({
        "Weapon Record ID To Search:",
        "Edit Weapon Record To:",
        "SEND CONFIG TO FUNCTION"
    },
    {[1] = "178001", [2] = "1403001", [3] = true},
    {[1] = "Number", [2] = "Number", [3] = "Checkbox"}
    )
    if config then
        if config[3] then
            MANUPILATE(config[1], config[2])
        end
    end
end