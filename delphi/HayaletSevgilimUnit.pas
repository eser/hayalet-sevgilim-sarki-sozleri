unit HayaletSevgilimUnit;

interface

uses
  System.SysUtils;

type
  THayaletSevgilim = class
  private
    const
      DATA: array[0..64] of string = (
        'Ceza mı bu',
        'Çektiğim çile mi',
        'Yıllardır tuttuğum nöbet bitmeyecek mi?',
        'Bir küçük kar tanesi gibiyim',
        'Avucunda eriyen dön bebeğim',
        '',
        'Gözyaşlarını görürsem',
        'Erir kanatlarım',
        'Uçamam rüyalarında yanına',
        'Sonsuzluk senle başladı',
        'O küçük dünyamda',
        'Unutma gittiğinde yarım kaldım',
        '',
        'Çöllerdeyim yanıyorum',
        'Kutuptayım üşüyorum',
        'Ceza benim çekiyorum ne olur dön',
        'Uzanıyorum tutamıyorum',
        'Özlüyorum ağlıyorum',
        'Yasak mısın anlamıyorum ne olur dön',
        '',
        'Sevmesen de beni özledim sesini',
        'Git desem de yine gitmesen',
        'Yıllardır çektiğim bu hasret mi çile mi?',
        'Haram mısın bana bi'' bilsem',
        '',
        'Sevmesen de beni özledim sesini',
        'Git desem de yine gitmesen',
        'Yıllardır çektiğim bu hasret mi çile mi?',
        'Haram mısın bana bi'' bilsem',
        '',
        'Bebeğim benim, hayalet sevgilim',
        'Bebeğim benim, hayalet sevgilim',
        '',
        'Hayalet sevgilim',
        '',
        'Çöllerdeyim yanıyorum',
        'Kutuptayım üşüyorum',
        'Ceza benim çekiyorum ne olur dön',
        'Uzanıyorum tutamıyorum',
        'Özlüyorum ağlıyorum',
        'Yasak mısın anlamıyorum ne olur dön',
        '',
        'Sevmesen de beni özledim sesini',
        'Git desem de yine gitmesen',
        'Yıllardır çektiğim bu hasret mi çile mi?',
        'Haram mısın bana bi'' bilsem',
        '',
        'Sevmesen de beni özledim sesini',
        'Git desem de yine gitmesen',
        'Yıllardır çektiğim bu hasret mi çile mi?',
        'Haram mısın bana bi'' bilsem',
        '',
        'Bebeğim benim hayalet sevgilim',
        'Bebeğim benim hayalet sevgilim',
        '',
        'Hayalet sevgilim',
        'Hayalet sevgilim'
      );
  public
    function GetData: string;
    function GetLines: TArray<string>;
  end;

implementation

{ THayaletSevgilim }

function THayaletSevgilim.GetData: string;
begin
  Result := string.Join(sLineBreak, DATA);
end;

function THayaletSevgilim.GetLines: TArray<string>;
begin
  Result := DATA;
end;

end.
