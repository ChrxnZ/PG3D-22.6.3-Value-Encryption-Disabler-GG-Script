local al = gg.alert
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
local tpd = gg.TYPE_DWORD
local tpq = gg.TYPE_QWORD
local tpw = gg.TYPE_WORD
local rca = gg.REGION_CODE_APP
local ra = gg.REGION_ANONYMOUS
local ali = gg.addListItems
local grc = gg.getResultCount


Creator = "ChrxnZ / Pulsed#1874"
Game_Version = "22.5.4"

function WFA() -- WFA function made by horridmodz
    sv(false) 
    while true do
    if iv() then
    break
    end
    gg.toast("Script Made By " .. #Creator .. "")
    gg.sleep(100)
    end
end


function VDS_E()
    local search = pr({"Enter Value:", "Edit Values To:", "Edit Until Done"},
    {[1] = "EG: 50", [2] = "EG: 5000", [3] = true},
    {[1] = "number", [2] = "number", [3] = "checkbox"}
)

if search then
if search[3] then
        cr()
        sr(ra)
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

function Wep_manipulation()
    local irids = pr({"Weapon Record ID", "Weapon Record ID Of Wanted Weapon", "Manipulate"},
    {[1] = "178001 (Solar Ray)", [2] = "1403001 (Thermal Scythe)", [3] = true},
    {[1] = "number", [2] = "number", [3] = "checkbox"}
)

if irids then
if irids[3] then
    sr(ra)
    cr()
    sn(irids[1] .. "X4" ,tpd)
    repeat
        s1 = gr(500)
        ed(irids[2] .. "X4" ,tpd)
        ali(s1)
        rr(s1)
    until(grc(s1) == 0)
    al("Go To The Weapon In Gallery And Click On GG When Done So")
    WFA()
    sn(";err" ,tpw)
    repeat
        s2 = gr(500)
        ed("0" ,tpw)
    until(grc(s2) == 0)
    al("Buy Weapon With Coupons Now And Go To Gallery Then Click On GG When Done So")
    WFA()
    repeat
        s3 = gr(500)
        ed(";err" ,tpw)
        rr(s3)
    until(grc(s3) == 0)
    al("Find A Weapon And Upgrade It With Gems")
end
end
end



Main = cho({
    "Decryption Process",
    "Value Decrypter Searcher And Editor",
    "Item Records Weapon Manipulation",
    "Credits"
}, nil, "VED 2 By DarkOctet#5778 || Script Made By Pulsed#1874 / ChrxnZ With Permisson From Tonic.")

if Main == 1 then
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

if Main == 2 then
    VDS_E()
end

if Main == 3 then
    Wep_manipulation()
end

if Main == 4 then
    print("Values For Encryption Disabling By DarkOctet#5778 Or Tonic")
    print("\nScript Made By ChrxnZ Or Pulsed#1874")
end

