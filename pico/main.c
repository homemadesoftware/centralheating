//#include "pico/stdlib.h"
//#include "pico/cyw43_arch.h"
//
//int main() {
//    stdio_init_all();
//    if (cyw43_arch_init()) {
//        printf("Wi-Fi init failed");
//        return -1;
//    }
//    while (true) {
//        cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 1);
//        sleep_ms(250);
//        cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 0);
//        sleep_ms(250);
//    }
//}

#include "EPD_Test.h"


int main(void)
{
    DEV_Delay_ms(500);
    EPD_2in13_V3_test();
    
    return 0;
}