clc 
clear all
Vin = 13;
pwm = 0:1:128;
D = pwm/160;
D1 = (pwm -1)/160;
Vo = Vin./(1 - D);
dVo = Vin./(1 - D) - Vin./(1 - D1);
subplot(2,1,1);
plot(pwm, Vo);
grid on;
xlabel('PWM数值');
ylabel('输出电压');
subplot(2,1,2);
plot(pwm,dVo);
grid on;
xlabel('PWM数值');
ylabel('输出精度');