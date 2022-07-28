clear
clc
close all

l1=1.2;
l2=1.6;
l3=2.0;

theta1=linspace(0,pi/6,10);
theta2=linspace(0,pi/6,10);
theta3=linspace(0,pi/6,10);
x1=l1*cos(theta1);
y1=l1*sin(theta1);
z1=0;
x2=l1*cos(theta1)+l2*cos(theta1+theta2);
y2=l1*sin(theta1)+l2*sin(theta1+theta2);
z2=0;
x3=l1*cos(theta1)+l2*cos(theta1+theta2)+l3*cos(theta1+theta2+theta3);
y3=l1*sin(theta1)+l2*sin(theta1+theta2)+l3*sin(theta1+theta2+theta3);
z3=0;

figure
for k=1:length(theta3)
    clf
    x1_=x1(k);
    y1_=y1(k);
    x2_=x2(k);
    y2_=y2(k);
    x3_=x3(k);
    y3_=y3(k);
    x_a=[0 x1_];
    y_a=[0 y1_];
    x_b=[x1_ x2_];
    y_b=[y1_ y2_];
    x_c=[x2_ x3_];
    y_c=[y2_ y3_];
    plot(x_a,y_a,'LineWidth',3)
    hold on
    plot(x_b,y_b,'LineWidth',3)
    plot(x_c,y_c,'LineWidth',3)
    xlim([0 5])
    ylim([0 6])
    pause(0.2)
end