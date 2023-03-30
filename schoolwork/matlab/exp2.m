clc; clear;
%%
a = 12345.6789;
class(a);
a_s = size(a);
b = 'S';
class(b);
b_s = size(b);
whos;

%%
a = 'This is an example.';
x = fliplr(a)
ascii_a = double(a);

%%
str1 = input('str1 = ','s')
str2 = input('str2 = ','s')

%%
A(1, 1) = {'语文=86分'};
A(2, 1) = {'数学=95分'};
A(3, 1) = {'英语=88分'};
A(4, 1) = {'物理=99分'};
A(5, 1) = {'化学=98分'};
A(6, 1) = {'生物=90分'};

%%
B = cell(2, 2);
B(1,1)={'mat'};

B(2,1)={['lab']};

B(1,2)={int8(5)};

B{2,2}=[1 2;2 3];

cellplot(B);

%%
person = struct('name',{'Jack','Tom','Anne'},'num',{'001','002','003'},'yuwen',{'80','90','95'},'shuxue',{'90','80','85'});
total=0;

for i=1:3

    person(i).total=str2double(person(i).shuxue)+str2double(person(i).yuwen);
    total=person(i).total+total;

end
average=total/3;


for j=1:3

   for k=1:3-j

      if person(k).total<person(k+1).total

          person4=person(k);

          person(k)=person(k+1);

          person(k+1)=person4;

      end
   end
end


disp('学生平均分为'),disp(average);
disp('学生总分分别为：');

for i=1:3
    disp(person(i).name);
    disp(person(i).total);
end

disp('学生名次由高到底为：')

for i=1:3
    disp(person(i).name);
end









