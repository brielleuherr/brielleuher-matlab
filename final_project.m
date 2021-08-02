%final project
clc; clear

filename=input('Enter filename: ','s');
pix=imread(filename);
[h,w,c]=siz(pix);
board=zeros(4,4);
imshow(filename);

for ii=1:1:h
    for jj=1:1:w
        if pix(ii,jj,1)==250 && pix(ii,jj,2)==248 && pix(ii,jj,3)==239
            break
        end
    end
end

for cc=1:1:4
    ii=ii+120;
    for rr=1:1:4
        jj=jj+120;
        if pix(ii,jj,1)==205 && pix(ii,jj,2)==193 &&pix(ii,jj,3)==180
            board(cc,rr)=0;
        elseif pix(ii,jj,1)==238 && pix(ii,jj,2)==224 &&pix(ii,jj,3)==218
            board(cc,rr)=2;
        elseif pix(ii,jj,1)==237 && pix(ii,jj,2)==224 &&pix(ii,jj,3)==200
            board(cc,rr)=4;
        elseif pix(ii,jj,1)==242 && pix(ii,jj,2)==177 &&pix(ii,jj,3)==121
            board(cc,rr)=8;
        elseif pix(ii,jj,1)==245 && pix(ii,jj,2)==149 &&pix(ii,jj,3)==9
            board(cc,rr)=16;
        elseif pix(ii,jj,1)==246 && pix(ii,jj,2)==124 &&pix(ii,jj,3)==95
            board(cc,rr)=32;
        elseif pix(ii,jj,1)==246 && pix(ii,jj,2)==94 &&pix(ii,jj,3)==59
            board(cc,rr)=64;
        elseif pix(ii,jj,1)==237 && pix(ii,jj,2)==207 &&pix(ii,jj,3)==114
            board(cc,rr)=128;
        elseif pix(ii,jj,1)==237 && pix(ii,jj,2)==204 &&pix(ii,jj,3)==97
            board(cc,rr)=256;
        elseif pix(ii,jj,1)==237 && pix(ii,jj,2)==200 &&pix(ii,jj,3)==80
            board(cc,rr)=512;
        elseif pix(ii,jj,1)==237 && pix(ii,jj,2)==197 &&pix(ii,jj,3)==63
            board(cc,rr)=1024;
        elseif pix(ii,jj,1)==237 && pix(ii,jj,2)==194 &&pix(ii,jj,3)==46
            board(cc,rr)=2048;
        end
    end
end

%%%logic

disp(board);

%board=[2 2 4 4; 2 0 4 4; 2 2 0 4; 2 2 2 2];
%direction='left';
%if direction(1)=='l'
    %logic
    %new_board=board;
%end
%disp(new_board);