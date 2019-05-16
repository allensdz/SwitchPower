clc 
clear all
m = 3;
Q = 0;
for i = 1:6
    X = 0:0.01:2;
    M = 1./((1 + m - m*X.^2).^2 + (Q * ((X.^2 - 1)./X)).^2).^0.5;
    title('LCC��ѹ����|M|���һ��Ƶ��X�ı仯����(QƷ������ȡ2.0)','FontSize',20,'FontWeight','bold','Color','r');
    xlim = get(gca, 'xlim');
    ylim = get(gca, 'ylim');
    xlabel('X','FontSize',15,'FontWeight','bold','Color','r','position',[(xlim(2)) ,(ylim(1) - 0.05)]);
    ylabel('|M|','Rotation',0,'FontSize',15,'FontWeight','bold','Color','r','position',[(xlim(1) - 0.05) ,(ylim(2))]);
    plot(X, M,'b')
    hold on
    grid on
    Q = Q + 0.5;
    % m = m + 1;
    i = i + 1;
end