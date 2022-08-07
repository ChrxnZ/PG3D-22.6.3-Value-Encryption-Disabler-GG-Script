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

Creator = "ChrxnZ / Pulsed#1874"
Game_Version = "22.5.4"


function test()
    local search = pr({"Enter Value:", "Edit Values To:", "1-3000 Result Edit","1-5000 Result Edit", "1-7000 Result Edit  (Reccomended)", "1-10000 Result Edit", "1-15000 Result Edit", "1-20000 Result Edit", "Edit Until Done"},
    {[3] = false, [4] = true, [5] = false, [6] = false, [7] = false, [8] = false},
    {[1] = "number", [2] = "number", [3] = "checkbox", [4] = "checkbox", [5] = "checkbox", [6] = "checkbox", [7] = "checkbox", [8] = "checkbox", [9] = "checkbox"}
)

if search then
if search[3] then
        sr(ra)
        cr()
        sn(search[1] ..  "X4" ,tpd)
        for i = 1, 6 do
        s1 = gr(500)
        if grc(s1) == 0 then
        end
        ed(search[2] ..  "X4" ,tpd)
        ali(s1)
        rr(s1)
    end
elseif search[4] then
        sr(ra)
        cr()
        sn(search[1] ..  "X4" ,tpd)
        for i = 1, 10 do
        s1 = gr(500)
        if grc(s1) == 0 then
        end
        ed(search[2] ..  "X4" ,tpd)
        ali(s1)
        rr(s1)
    end
elseif search[5] then
        sr(ra)
        cr()
        sn(search[1] ..  "X4" ,tpd)
        for i = 1, 14 do
        s1 = gr(500)
        if grc(s1) == 0 then
        end
        ed(search[2] ..  "X4" ,tpd)
        ali(s1)
        rr(s1)
    end
elseif search[6] then
        sr(ra)
        cr()
        sn(search[1] ..  "X4" ,tpd)
        for i = 1, 20 do
        s1 = gr(500)
        if grc(s1) == 0 then
        end
        ed(search[2] ..  "X4" ,tpd)
        ali(s1)
        rr(s1)
    end
elseif search[7] then
        sr(ra)
        cr()
        sn(search[1] ..  "X4" ,tpd)
        for i = 1, 30 do
        s1 = gr(500)
        if grc(s1) == 0 then
        end
        ed(search[2] ..  "X4" ,tpd)
        ali(s1)
        rr(s1)
    end
elseif search[8] then
        sr(ra)
        cr()
        sn(search[1] ..  "X4" ,tpd)
        for i = 1, 40 do
        s1 = gr(500)
        if grc(s1) == 0 then
        end
        ed(search[2] ..  "X4" ,tpd)
        ali(s1)
        rr(s1)
    end
elseif search[9] then
		sn(search[1] .. "X4" ,tpd)
        repeat
            s1 = gr(500)
            ed(search[2] ,tpd)
            ali(s1)
            rr(s1)
        until(grc(s1) == 0)
    end
    end
end




Main = cho({
    "Decryption Process",
    "Value Decrypter Searcher And Editor",
    "Credits"
}, nil, "VED 2 By DarkOctet#5778 || Script Made By Pulsed#1874 / ChrxnZ With Permisson From Tonic.")

if Main == 1 then
    Dec = cho({
        "S1",
        "S2"
    }, nil, "Run At ~450MB?")

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
        else
            print("No Results Found, (Done Correctly?)")
    end
    if Dec == 2 then
        sr(rca)
        cr()
        sn("-6268623683403968519Q;8261102860592567656Q::69")
        s1 = gr(2)
        if grc(s1) == 2 then
            ali(s1)
            ed("-2999674702930181152" ,tpq)
            rr(s1)
        end
        if grc(s1) == 0 then
            print("No Results Found, (Done Correctly?)")
    end
end
end

if Main == 2 then
    test()
end

if Main == 3 then
    print("Values For Encryption Disabling By DarkOctet#5778 Or Tonic")
    print("\nScript Made By ChrxnZ Or Pulsed#1874")
end

