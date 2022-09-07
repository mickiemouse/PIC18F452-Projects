# Kodların Temel İşleyişi

•• Proje PIC18F452 kullanılarak yapılmıştır.

•• Gerekli CONFIG ayarları ayarlandıktan sonra PORTC'nin 0, 1 ve 2. pinleri "Input", PORTD'nin ise 5, 6 ve 7. pinleri "Output" olarak ayarlanmıştır.

•• Projenin amacı butona basıldığında, butonla bağlantılı ledin yanması ve programın sonsuz döngüye sokulup ledin RESET atılana kadar veya güç kesilene kadar açık kalmasını sağlamak. RESET atmak için de MCLR portuna Pull-Up Direnç devresi kurulumuştur.

## Button-LED.asm için:

•• Butonların "0" durumunda olup olmadığı kontrol edilir, eğer 0 ise alttaki satır atlanır 1 ise alttaki satır ile diğer MAIN etiketine geçiş yapılır.

•• Bütün MAIN etiketleri kontrol edilir. Eğer butonlardan gelen değer "1" olursa PORTD'ye ait ilgili pine "1" değeri gödnerilir ve led yanar.

•• Led yandıktan sonra kontrol etmeye devam etmemesi için LOOP etiketine dönülür ve sonsuz döngüye girilir.

## Button-LED-2.asm için:

•• Buradaki tek fark buton durumları ve led yakma işlemlerinn ayrı etiketler ile kontrolünün gerçekleşmesidir.


## Projeye ait Resimler

![alt text](
