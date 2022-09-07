:tr:

# Kodların Temel İşleyişi

•• Proje PIC18F452 kullanılarak yapılmıştır.

•• Gerekli CONFIG ayarları ayarlandıktan sonra PORTC'nin 0, 1 ve 2. pinleri "Input", PORTD'nin ise 5, 6 ve 7. pinleri "Output" olarak ayarlanmıştır.

•• Projenin amacı butona basıldığında, butonla bağlantılı ledin yanması ve programın sonsuz döngüye sokulup ledin RESET atılana kadar veya güç kesilene kadar açık kalmasını sağlamak. RESET atmak için de MCLR portuna Pull-Up Direnç devresi kurulumuştur. 20 MHz'lik Kristal Osilatör kullanılmıştır.

## Button-LED.asm için:

•• Butonların "0" durumunda olup olmadığı kontrol edilir, eğer 0 ise alttaki satır atlanır 1 ise alttaki satır ile diğer MAIN etiketine geçiş yapılır.

•• Bütün MAIN etiketleri kontrol edilir. Eğer butonlardan gelen değer "1" olursa PORTD'ye ait ilgili pine "1" değeri gödnerilir ve led yanar.

•• Led yandıktan sonra kontrol etmeye devam etmemesi için LOOP etiketine dönülür ve sonsuz döngüye girilir.

## Button-LED-2.asm için:

•• Buradaki tek fark buton durumları ve led yakma işlemlerinin ayrı etiketler ile kontrolünün gerçekleşmesidir.


## Projeye ait Resimler

![alt text](/img/circuit.jpg)


:us:

# Basic Operation of Codes

•• The project was made using PIC18F452.

•• Pins 0, 1 and 2 of PORTC are set to "Input", and pins 5, 6 and 7 of PORTD are set to "Output".

•• The purpose of the project is to set logic 1 the led connected to the relevant pin when the button is pressed, and to keep the led on until reset with the RESET button or the power is cut off. In order to reset with the RESET button, a Pull-Up resistor circuit is installed on the MCLR port. Also, 20 MHz Crystal Oscillator was used in the project.

## For Button-LED.asm:
•• It is checked whether the buttons are in the "0" state, if it is 0, the bottom line is skipped, if it is 1, the bottom line is ran.

•• All MAIN tags are checked. If the button state is "1", the state "1" is sent to the relevant pin of PORTD and the led set to logic 1.

•• After the LED is on, it is returned to the LOOP label and an endless loop is entered so that it does not continue to control.

## For Button-LED-2.asm:
•• The only difference here is that the button and led processes are controlled with separate labels.

## Pictures of the project
![alt text](/img/circuit.jpg)
