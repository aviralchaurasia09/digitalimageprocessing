close all;
clc;
clear all;
I = imread('lungn11.jpeg');
Img = rgb2gray(I);
[m,n]= imsize(Img);

f=2;
t=5;
su=1;
sm=0;
ks= 2*f+1;
ker = zeroes(ks,ks);
for x=1:ks
    for y=1:ks
        ab = x-f-1;
        cd = y-f-1;
        ker(x,y)= 100*exp(((ab*ab)+(cd*cd))/(-2*(su*su)));
        sm = sm +ker(x,y);
    end
end
kernel = ker ./ f;
kernel = kernel / sm;

noisex = imnoise(Img,'gaussian',0,0.002);
noisy = double(noisex);
cleared = zeros(m,n);
h=10;
noisy2 = padarray(noisy,[f,f],'symmetric');
for i=1:m
    for j=1:n
        im = i+f;
        jn= 1+f;
        W1 = noisy2(im-f:im+f , jn-f:jn+f);
        rmin = max(im-t, f+1);
        rmax = min(rm+t, m+f);
        smin = max(jn-t, f+1);
        smax = min(jn+t, n+f);
        NL=0;
        Z=0;
        for r=rmin:rmax
            for s=smin:smax
                W2 = noisy2(r-f:r+f, s-f:s+f);
                d2 = sum(sum(kernel.*(W1-W2).*(W1-W2)));
                sij = exp(-d2/(h*h));
                Z = Z + sij;
                NL = NL + (sij*noisy2(r,s));
                
    end
        end
cleared(i,j) = NL/Z;
    end
end
cleared = unit8(cleared);
figure(1);
set(gcf,'Position', get(0,'ScreenSize'));
subplot(1,2,1),imshow(noisex),title('noisy Image'),colormap(gray);
subplot(1,2,2),imshow(cleared),title('output of NLM'),colormap(gray);


        