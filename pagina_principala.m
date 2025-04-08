close all;
%Crearea figurii INTERFATA

Fig=figure('Name','Proiect Grafica',... 
           'Units','normalized',...
           'Position',[0.1 0.1 0.8 0.7],...
           'NumberTitle','off');
       
 %Titlu
        uicontrol('Style','text',... 
        'Units','normalized',...
        'Position',[0.55 0.84 0.4 0.14],...
        'foregroundcolor', [0.93 0.91 0.8],...
        'backgroundcolor',[0.6350 0.0780 0.1840],...
        'Fontname','Times New Roman',...
        'FontWeight','Bold',...
        'FontSize',40,...
        'String','Filtru RC Trece Jos');

       
%Afisarea pozei de pe fundal

a=imread('FTJ_poza.jpg');
image(a);
set(gca,'position',[0.05 0.2 0.40 0.5]); %[orizontal,vertical,lungimea,latimea] 


%Grup de meniuri
   m=uimenu('Label','Documentatie Proiect');
   uimenu(m,'Label','Autor','Callback','open(''Autor.pdf'')');
   uimenu(m,'Label','Teorie','Callback','open(''Teorie_FTJ.pdf'')');
   uimenu(m,'Label','Bibliografie','Callback','open(''Bibliografie si sitografie.pdf'')');
   uimenu(m,'Label','Close','Callback','close','Separator','on','Accelerator','Q');
   
%Crearea butoanelor
      
uicontrol('style','pushbutton',...
          'Units','normalized',...
          'Position',[0.65 0.7 0.2 0.11],...
          'string','Schema RC FTJ',...
          'FontName','Comic Sans MS',...
          'FontSize',20,...
          'Foregroundcolor',[0.93 0.91 0.8],...
          'Backgroundcolor',[0.6350 0.0780 0.1840],...
          'FontWeight','Bold',...
          'Callback','grafic');
        
 uicontrol('style','pushbutton',...
          'Units','normalized',...
          'Position',[0.65 0.55 0.2 0.11],...
          'string','Diagrame FTJ',...
          'FontName','Comic Sans MS',...
          'FontSize',17,...
          'foregroundcolor',[0.93 0.91 0.8],...
          'FontWeight','Bold',...
          'backgroundcolor',[0.6350 0.0780 0.1840],...
          'Callback','start');
      uicontrol('style','pushbutton',...
          'Units','normalized',...
          'Position',[0.65 0.4 0.2 0.11],...
          'string','Prezentare PPT',...
          'FontName','Comic Sans MS',...
          'FontSize',17,...
          'foregroundcolor',[0.93 0.91 0.8],...
          'FontWeight','Bold',...
          'backgroundcolor',[0.6350 0.0780 0.1840],...',..
          'Callback','open (''PrezentareFTJ.pptx'')'); 
         
  uicontrol('style','pushbutton',...
          'Units','normalized',...
          'Position',[0.65 0.1 0.2 0.11],...
          'string','Inchide',...
          'FontName','Comic Sans MS',...
          'FontSize',15,...   
          'foregroundcolor',[0.93 0.91 0.8],...
          'backgroundcolor',[0.6350 0.0780 0.1840],...'
          'FontWeight','Bold',...
          'Callback','close;');        
          
