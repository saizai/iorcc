class  Column;  def       self.format  (s,d=?\   ,a='')
p=->a  {a.map(  &:size)   .max};a=a.   split(?|  ).map{
|j|j[   1]==?:  ??:==j[0  ]?0:1:-1};   m=p[s=    s.map{
|l|l.    split  (d)}];w=  s.map!{      |l|l+     ['']*
(m-l.     size  )}.       transpose.   map       &p;s.map{
|l|l.     zip(  a,w).     map{|c,a,w|  "%*s"%    (a==0?
[w*-1      ,?\  *((w-c.   size)/2)<<   c]:[w*    (a||-1),
c])         }.  join(?\   )};          end;      end