loadstring(exports["MahLib"]:getFunctions())()


local localPlayer = getLocalPlayer()

local screenW, screenH = guiGetScreenSize()
panel = guiCreateWindow((screenW - 616) / 2, (screenH - 389) / 2, 616, 389, "Birlik Alım Asistanı", false)
guiWindowSetSizable(panel, false)
guiWindowSetMovable(panel, false)

tabpanel = guiCreateTabPanel(9, 23, 597, 327, false, panel)

Birlikler = guiCreateTab("Askeri Birlikler", tabpanel)

tab1 = guiCreateTabPanel(6, 10, 581, 283, false, Birlikler)

tsk = guiCreateTab("Türk Silahlı Kuvvetleri", tab1)

tskLabel = guiCreateLabel(7, 7, 569, 179, "Türk Silahlı Kuvvetleri (TSK), yurt dışından gelecek tehdit ve tehlikelere karşı Türk vatanını\nsavunmakla görevli askerî kuvvettir.\n\nGörevi caydırıcılık sağlayacak şekilde askerî gücün muhafazasını ve güçlendirilmesini sağlamaktır,\nTürkiye Büyük Millet Meclisi kararıyla yurt dışında verilen görevleri yapmak ve uluslararası barışın\nsağlanmasına yardımcı olmaktır.\n\nTürk Silahlı Kuvvetlerinin başkomutanlığı Türkiye Büyük Millet Meclisinin manevi varlığından ayrılamaz\nve cumhurbaşkanı tarafından temsil olunur. Genelkurmay başkanı, savaşta başkomutanlık görevini\nCumhurbaşkanlığı namına yerine getirir.", false, tsk)
tskbutton = guiCreateButton(174, 223, 245, 26, "Birlik Asistan Teleport", false, tsk)

addEventHandler("onClientGUIClick", tskbutton, function()
    local targetX, targetY, targetZ = tsk1, tsk2 ,tsk3 -- Hedef koordinatları burada ayarlayın
    setElementPosition(localPlayer, targetX, targetY, targetZ+2)
end, false)
guiSetProperty(tskbutton, "NormalTextColour", "FFFFFFFF")

jgk = guiCreateTab("Jandarma Genel Komutanlığı", tab1)

jgkLabel = guiCreateLabel(7, 7, 569, 179, "Jandarma Genel Komutanlığı, Türkiye'de il ve ilçe belediye sınırları dışında kalan veya polis teşkilatı\nyerler ile sahil güvenlik bulunmayan kıyı, deniz ve sahillerde görev yapan silahlı genel kolluk kuvvetidir.\n\n1983 tarih ve 2803 sayılı Jandarma Teşkilatı Görev ve Yetkileri Kanunu ile 1934 tarih ve 2559 sayılı Polis\nVazife ve Sâlahiyet Kanunu'nda ve diğer yasalarda kendisine verilen görevleri yerine getiren Jandarma\nTeşkilatı, İçişleri Bakanlığına bağlı olarak çalışır.\n\nJandarma birlikleri; seferberlik ve savaş hallerinde, Genelkurmay Başkanlığı ve Türk Silahlı Kuvvetlerinin\nemrine geçer.", false, jgk)
jgkbutton = guiCreateButton(174, 223, 245, 26, "Birlik Asistan Teleport", false, jgk)

addEventHandler("onClientGUIClick", jgkbutton, function()
    local targetX, targetY, targetZ = jgk1, jgk2, jgk3 -- Hedef koordinatları burada ayarlayın
    setElementPosition(localPlayer, targetX, targetY, targetZ+2)
end, false)
guiSetProperty(jgkbutton, "NormalTextColour", "FFFFFFFF")



polisiyebirlik = guiCreateTab("Polisiye Birlikler", tabpanel)

tab2 = guiCreateTabPanel(6, 10, 581, 283, false, polisiyebirlik)

egm = guiCreateTab("Emniyet Genel Müdürlüğü", tab2)


egmLabel = guiCreateLabel(7, 7, 569, 179, "Merkez teşkilatı bünyesinde Ana Komuta Kontrol, Strateji Geliştirme, Arşiv, Asayiş, Bilgi İşlem, Dış İlişkiler,\nGüvenlik, Haberleşme, Havacılık, İdari ve Mali işler, İkmal-Bakım, İnşaat-Emlak, İnterpol, İstihbarat,\nKaçakçılık ve Organize suçlarla mücadele, Koruma, Kriminal, Özel Harekât, Personel, Sağlık İşleri,\n\nSivil Savunma, Sosyal Hizmetler, Bando, Teftiş Kurulu, Terörle Mücadele Harekât, Trafik Eğitim ve\nAraştırma, Trafik ve Denetleme, Yabancılar Hudut İltica Daireleri vardır.\n\nTaşra teşkilatını ise, il emniyet müdürlükleri ve ilçe emniyet amirlikleri oluşturur. Genel müdürlük, \nüst kurum ve yönetim bakımından İçişleri Bakanlığı'na bağlıdır.", false, egm)
egmbutton = guiCreateButton(174, 223, 245, 26, "Birlik Asistan Teleport", false, egm)

addEventHandler("onClientGUIClick", egmbutton, function()
    local targetX, targetY, targetZ = egm1,egm2,egm3 -- Hedef koordinatları burada ayarlayın
    setElementPosition(localPlayer, targetX, targetY, targetZ+2)
end, false)
guiSetProperty(egmbutton, "NormalTextColour", "FFFFFFFF")

poh = guiCreateTab("Polis Özel Harekat", tab2)

pohLabel = guiCreateLabel(7, 7, 569, 188, "İçişleri Bakanlığının onayı ile 22 Mart 1983 tarihinde Asayiş Dairesi Başkanlığı bünyesinde merkezde\n\"Özel Harekat Şube Müdürlüğü\" ve Ankara, İstanbul, İzmir illerinde ise Emniyet Müdürüne doğrudan bağlı\nolarak \"Özel Harekat Grup Amirlikleri\" şeklinde teşkilatlandırılmıştır. Günün değişen ve gelişen\n\n şartları neticesinde 13.03.1987 yılında Asayiş Dairesi Başkanlığı bünyesinden alınarak 23.02.1988 tarihide\nTerörle Mücadele ve Harekât Dairesi Başkanlığı bünyesinde \"Özel Harekat Şube Müdürlüğü\" olarak 1993\n yılına kadar faaliyet göstermiştir. Özellikle bölücü terör olaylarının artması nedeniyle 13.07.1993 yılında\nÖzel Harekât Dairesi Başkanlığı kurulmuş, içinde İzmir İlinin de bulunduğu 48 il Özel Harekât Dairesine\nBağlanmıştır.\n\n25.08.2017 tarihinde Özel Hârekat Daire başkanlığı yeniden yapılandırılmış statüsü yükseltilerek\n Özel Hârekat Başkanlığı olmuştur.", false, poh)
pohbutton = guiCreateButton(174, 223, 245, 26, "Birlik Asistan Teleport", false, poh)

addEventHandler("onClientGUIClick", pohbutton, function()
    local targetX, targetY, targetZ = p1,p2,p3 -- Hedef koordinatları burada ayarlayın
    setElementPosition(localPlayer, targetX, targetY, targetZ+2)
end, false)
guiSetProperty(pohbutton, "NormalTextColour", "FFFFFFFF")



ilegalbirlikler = guiCreateTab("İl-Legal Birlikler", tabpanel)

tab3 = guiCreateTabPanel(6, 10, 581, 283, false, ilegalbirlikler)

srs = guiCreateTab("Sarsılmaz Ailesi", tab3)

srsLabel = guiCreateLabel(7, 7, 569, 179, "Mafya (İtalyanca: Mafia), yasa dışı işlerle uğraşan, zor kullanarak birtakım gizli çıkarlar sağlayan,\nçoğunlukla gizli ve hiyerarşik bir teşkilatlanmaya dayalı örgüt ya da bu örgütün mensubu kişiler anlamına\ngelir.\n\nKumar, uyuşturucu, finans, inşaat, kaçakçılık, insan/kadın ticareti, fuhuş, tefecilik, karaborsacılık, gasp,\n adam kaçırma/öldürme fidyecilik, çek ve senet tahsilatı gibi yüzlerce legal ve illegal sektörde faaliyet\ngösterebilir.", false, srs)
srsbutton = guiCreateButton(174, 223, 245, 26, "Birlik Asistan Teleport", false, srs)

addEventHandler("onClientGUIClick", srsbutton, function()
    local targetX, targetY, targetZ = srs1,srs2,srs3 -- Hedef koordinatları burada ayarlayın
    setElementPosition(localPlayer, targetX, targetY, targetZ+2)
end, false)
guiSetProperty(srsbutton, "NormalTextColour", "FFFFFFFF")

brtva = guiCreateTab("Bratva Ailesi", tab3)

brtvaLabel = guiCreateLabel(7, 7, 569, 179, "Mafya (İtalyanca: Mafia), yasa dışı işlerle uğraşan, zor kullanarak birtakım gizli çıkarlar sağlayan,\nçoğunlukla gizli ve hiyerarşik bir teşkilatlanmaya dayalı örgüt ya da bu örgütün mensubu kişiler anlamına\ngelir.\n\nKumar, uyuşturucu, finans, inşaat, kaçakçılık, insan/kadın ticareti, fuhuş, tefecilik, karaborsacılık, gasp,\n adam kaçırma/öldürme fidyecilik, çek ve senet tahsilatı gibi yüzlerce legal ve illegal sektörde faaliyet\ngösterebilir.", false, brtva)
brtvabutton = guiCreateButton(174, 223, 245, 26, "Birlik Asistan Teleport", false, brtva)

addEventHandler("onClientGUIClick", brtvabutton, function()
    local targetX, targetY, targetZ = br1,br2,br3 -- Hedef koordinatları burada ayarlayın
    setElementPosition(localPlayer, targetX, targetY, targetZ+2)
end, false)
guiSetProperty(brtvabutton, "NormalTextColour", "FFFFFFFF")
kapat = guiCreateButton(115, 356, 388, 23, "Paneli Kapat", false, panel)
guiSetProperty(kapat, "NormalTextColour", "FFFF0000")
guiSetVisible(panel, false)


function ackapa()
    if (guiGetVisible (panel) == true) then
    guiSetVisible(panel, false)
    showCursor(false)
    elseif (guiGetVisible (panel) == false) then
    guiSetVisible(panel, true)
    showCursor(true)
    end
    end
    bindKey("O", "down", ackapa)


    -- Kapat düğmesine tıklanınca panelin görünürlüğünü kapatma
addEventHandler("onClientGUIClick", kapat, function()
    guiSetVisible(panel, false)
    showCursor(false)
end, false)


addEventHandler("onClientGUIClick", tskbutton, function()
    guiSetVisible(panel, not guiGetVisible(panel))
    showCursor(guiGetVisible(panel))
end, false)

addEventHandler("onClientGUIClick", pohbutton, function()
    guiSetVisible(panel, not guiGetVisible(panel))
    showCursor(guiGetVisible(panel))
end, false)

addEventHandler("onClientGUIClick", egmbutton, function()
    guiSetVisible(panel, not guiGetVisible(panel))
    showCursor(guiGetVisible(panel))
end, false)

addEventHandler("onClientGUIClick", srsbutton, function()
    guiSetVisible(panel, not guiGetVisible(panel))
    showCursor(guiGetVisible(panel))
end, false)

addEventHandler("onClientGUIClick", brtvabutton, function()
    guiSetVisible(panel, not guiGetVisible(panel))
    showCursor(guiGetVisible(panel))
end, false)

addEventHandler("onClientGUIClick", jgkbutton, function()
    guiSetVisible(panel, not guiGetVisible(panel))
    showCursor(guiGetVisible(panel))
end, false)


-- Yapımı "bwtu" Edit "Mami-Bey"