%% Diwali is a festival celebarted in India and is a festival of lights.
% The word Diwali or Deepawali literally means rows of lights. 
% This code produces an image with rows and lights and diwali greetings in
% Devnagari script that read - shubbh Deepawali - Wishing everyone a happy,
% safe  Diwali and a prosperous new year. 
% 
% Inputs : None 
% Output : Matlab figure with diwali greetings in Devnagari script
% 
% Copyright : Neha Shaah
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r=1500;
f=3;
t=1.5;
Z = 0;
[x,y]=meshgrid(linspace(0.7,1.08,r),linspace(-.2,.2,r).*1i);
M=x+y;
%iterate  
for p=1:f
    Z=tan(Z.^t+M);                                           
end
imshow(real(Z'),'C',copper)
%get big picture
set(gcf,'Position',[0,0,3000,3000])
annotation(gcf,'textbox',...
     [0.42775467775468 0.658384311044581 0.149948020634123 0.0506454804151983],...
    'Color',[0.929411764705882 0.694117647058824 0.125490196078431],...
    'String','शुभ दीपावली',...
    'HorizontalAlignment','center',...
    'FontSize',36,...
    'FontName','AvantGarde',...
    'FitBoxToText','off');

annotation(gcf,'textbox',...
    [0.284303534303534 0.101284012419702 0.0857588333579211 0.0268123133002587],...
    'Color',[0.650980392156863 0.592156862745098 0.274509803921569],...
    'String',{'Copyright : Neha Shaah'},...
    'Rotation',90);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
