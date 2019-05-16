clc 
clear all
m = 5;
Q = 0.5;
for i = 1:10
    X = 0:0.01:2;
    M = (X.^2) * (m*(m - 1)).^0.5./(((m*X.^2 -1).^2 + (Q* X*(m -1).*(X.^2 - 1)).^2).^0.5);
    title('电压增益|M|随归一化频率X的变化曲线（集成电感）m = 5','FontSize',20,'FontWeight','bold','Color','r');
    xlim = get(gca, 'xlim');
    ylim = get(gca, 'ylim');
    xlabel('X','FontSize',15,'FontWeight','bold','Color','r','position',[(xlim(2)) ,(ylim(1) - 0.05)]);
    ylabel('|M|','Rotation',0,'FontSize',15,'FontWeight','bold','Color','r','position',[(xlim(1) - 0.05) ,(ylim(2))]);
    plot(X, M)
    hold on
    grid on
    Q = Q + 0.25;
   % m = m +1;
    i = i + 1;
end