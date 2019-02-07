function[]=main
clc;
clear;
k=99;%flag
n=input('enter the size of input');
%Voltages of Bipolar pseudoternary waveform are given as input
%Three voltage levels used are +5 0 -5
for i= 1:n
    a(i)=input('enter the voltage');
    if(a(i)==5&&k==0||a(i)==-5&&k==1)
    %There should not be continuous input of two positive or two negative voltages
    input('you have entered wrong input');
    exit(0);
    else
        if(a(i)==5)
        k=0;
        else
            if(a(i)==-5)
            k=1;
            end
        end
    end
end
T=n;
n=200;
N=n*T;
dt=T/N;
pulse=-1;
t=0:dt:T;
% 0 to T is divided into partitions each of size dt
y=zeros(1,length(t));
%array elements are initialised to zeroes
   for i=0:T-1;%loop
          if a(i+1)==0
                if pulse==1
                    pulse=-1;
                    y(i*n+1 : (i+1)*n)=1;%voltage level is maintained at 1
                else
                    pulse=1;
                    y(i*n+1 : (i+1)*n)=-1;%voltage level is maintained at -1
                end;
          end;
   end;
   plot(t,y);% plots graph
   
   axis([0 t(end) -2 2]);%vertical axis limits are taken from -2 to 2
   
   grid on;
   
   title('AMI');% graph title

end