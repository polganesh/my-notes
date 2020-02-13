<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1581019562291" ID="ID_276955063" MODIFIED="1581019604541" TEXT="Design new solutions -load balancers">
<node CREATED="1581019873825" ID="ID_1976095009" MODIFIED="1581019876507" POSITION="right" TEXT="types">
<node CREATED="1581019881686" ID="ID_7076960" MODIFIED="1581019885502" TEXT="layer 7">
<node CREATED="1581019921953" ID="ID_871631356" MODIFIED="1581019939910" TEXT="Application load balancer">
<node CREATED="1581021770060" ID="ID_472983089" MODIFIED="1581021783000" TEXT="recommended for path based routing"/>
</node>
</node>
<node CREATED="1581019886232" ID="ID_1716669516" MODIFIED="1581019889695" TEXT="layer 4">
<node CREATED="1581019894223" ID="ID_1354070412" MODIFIED="1581019902119" TEXT="classic load balancer">
<node CREATED="1581021527265" ID="ID_1475309425" MODIFIED="1581021540900" TEXT="earlier generation load balancers"/>
<node CREATED="1581021541851" ID="ID_1978981971" MODIFIED="1581021548912" TEXT="not recommended"/>
<node CREATED="1581021549501" ID="ID_78386300" MODIFIED="1581021578997" TEXT="only needed if instance is in old Ec2 classic network"/>
<node CREATED="1581022437553" ID="ID_315827293" MODIFIED="1581022487898">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      IP as Target not supported
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1581019944848" ID="ID_1102177037" MODIFIED="1581019954418" TEXT="Network load balancer">
<node CREATED="1581021638566" ID="ID_1003183754" MODIFIED="1581021739288">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      recommended when protocol is TCP
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1581020041001" ID="ID_122714946" MODIFIED="1581020046549" POSITION="right" TEXT="Important Notes">
<node CREATED="1581020337456" ID="ID_787027193" MODIFIED="1581020664922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../images/1-diff-lb.PNG" />
  </body>
</html></richcontent>
</node>
<node CREATED="1581256940483" ID="ID_1150153716" MODIFIED="1581257055358" TEXT="for performance">
<node CREATED="1581020743446" ID="ID_1393507199" MODIFIED="1581264108669">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SSL offloading enable plain HTTP communication between Load balancer and target.
    </p>
    <p>
      since in NLB it does not enable SSL offloading target server needs to perform some extra work and increase CPU utilization
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1581264503848" ID="ID_6347864" MODIFIED="1581264512459" TEXT="cross zone load balancing">
<node CREATED="1581264519882" ID="ID_1176830957" MODIFIED="1581264867234" TEXT="it will distribute traffic evenly across multiple backend instances in all AZ. If we don&#x2019;t check this option while configuring LB  then LB will consider AZ as one single large instance. It is better practice  to select this option while configuring EL "/>
</node>
</node>
<node CREATED="1581257087458" ID="ID_1055468975" MODIFIED="1581257098343" TEXT="maintainability">
<node CREATED="1581257226456" ID="ID_22006062" MODIFIED="1581257256424" TEXT="earlier ALB and NLB dont support IP as a target but this feature introduce recently"/>
<node CREATED="1581021029533" ID="ID_1815222580" MODIFIED="1581257148152" TEXT="IP as Target help us to register IP address as a target in load balancer.  it help us to enable load balance applications not hosted in AWS. &#xa;one use case is to load balance applications hosted on premise and enable direct connect  or VPN connectivity"/>
<node CREATED="1581022553956" ID="ID_7688954" MODIFIED="1581022569106" TEXT="classic load balancer limitations">
<node CREATED="1581022585108" ID="ID_288158054" MODIFIED="1581022600192" TEXT="path based routing not suppported"/>
<node CREATED="1581022625094" ID="ID_832181547" MODIFIED="1581022636394" TEXT="IP as a target not supported"/>
<node CREATED="1581022637076" ID="ID_945895513" MODIFIED="1581022695094" TEXT="does not support Http/2"/>
</node>
<node CREATED="1581022936712" ID="ID_1750882227" MODIFIED="1581022953215" TEXT="application load balancer ">
<node CREATED="1581022961180" ID="ID_762181490" MODIFIED="1581022966367" TEXT="advantages">
<node CREATED="1581022973275" ID="ID_147104093" MODIFIED="1581023007878" TEXT="enable path,host based routing"/>
</node>
</node>
<node CREATED="1581257445952" ID="ID_425415446" MODIFIED="1581257478182" TEXT="load balancer can support any OS as  target instance (windows.unix)"/>
<node CREATED="1581260698288" ID="ID_1866365586" MODIFIED="1581264052967" TEXT="load balancer in AWS can manage load across different instances in same region. it is not possible for route request to instances in different regions if target type is instance"/>
<node CREATED="1581257317987" ID="ID_1174570714" MODIFIED="1581257348860" TEXT="load balancer have feature similar to EC2 known as termination protection"/>
<node CREATED="1581264380150" ID="ID_1881157042" MODIFIED="1581264408057" TEXT="possibility of cookie based sticky sessions"/>
</node>
<node CREATED="1581260693270" ID="ID_265199869" MODIFIED="1581264144482" TEXT="security">
<node CREATED="1581264175747" ID="ID_1535380748" MODIFIED="1581264179745" TEXT="certificates">
<node CREATED="1581264184101" ID="ID_1417505420" MODIFIED="1581264228768" TEXT="not possible to support multiple SSL certificates"/>
<node CREATED="1581264232278" ID="ID_306708983" MODIFIED="1581264246871" TEXT="possibility of wild card certificates"/>
</node>
<node CREATED="1581264270528" ID="ID_357238104" MODIFIED="1581264273457" TEXT="logs">
<node CREATED="1581264277341" ID="ID_561473466" MODIFIED="1581264301480" TEXT="can be integrated with cloud trail logs security analysis"/>
</node>
</node>
<node CREATED="1581257374982" ID="ID_1207753790" MODIFIED="1581257378695" TEXT="other">
<node CREATED="1581256931134" ID="ID_170032587" MODIFIED="1581257017056" TEXT="port range 1 to 65535"/>
<node CREATED="1581256868740" ID="ID_174222009" MODIFIED="1581256879717" TEXT="state of load balancer">
<node CREATED="1581256885090" ID="ID_1401345797" MODIFIED="1581256890378" TEXT="provisioning"/>
<node CREATED="1581256890924" ID="ID_291181152" MODIFIED="1581256894951" TEXT="active"/>
<node CREATED="1581256895403" ID="ID_1628612813" MODIFIED="1581256897938" TEXT="terminated"/>
</node>
<node CREATED="1581259320015" ID="ID_1268950117" MODIFIED="1581259325679" TEXT="request routing">
<node CREATED="1581259332738" ID="ID_1427980248" MODIFIED="1581259348966" TEXT="classic load balancer work on round robin fashion"/>
<node CREATED="1581259349776" ID="ID_375055865" MODIFIED="1581259366997" TEXT="NLB works on flow-hash algorithm"/>
</node>
</node>
</node>
<node CREATED="1581257552610" ID="ID_1196267801" MODIFIED="1581257565973" POSITION="left" TEXT="listeners and target groups">
<node CREATED="1581257580125" ID="ID_1144844906" MODIFIED="1581257590323" TEXT="listener">
<node CREATED="1581257600820" ID="ID_816991827" MODIFIED="1581257605778" TEXT="what it is?">
<node CREATED="1581258115589" ID="ID_515948230" MODIFIED="1581258146450" TEXT="process in load balancer which check connection request with load balancer"/>
</node>
<node CREATED="1581258167629" ID="ID_639697737" MODIFIED="1581258172768" TEXT="important notes">
<node CREATED="1581258201306" ID="ID_1007783661" MODIFIED="1581258225347" TEXT="one listener can associated with multiple target groups"/>
<node CREATED="1581258180225" ID="ID_36808986" MODIFIED="1581258196203" TEXT="listeners associated with target groups"/>
</node>
<node CREATED="1581259104090" ID="ID_125308244" MODIFIED="1581259120393">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../images/lb-tg.png" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1581257591025" ID="ID_1804377788" MODIFIED="1581257595975" TEXT="target group">
<node CREATED="1581259164331" ID="ID_636152319" MODIFIED="1581259170773" TEXT="types of conditions">
<node CREATED="1581259178569" ID="ID_1585411957" MODIFIED="1581259184349" TEXT="path based">
<node CREATED="1581259201688" ID="ID_748656640" MODIFIED="1581259234222" TEXT="forward traffic to appropriate target based on path mentioned in request URI"/>
</node>
<node CREATED="1581259184857" ID="ID_94423480" MODIFIED="1581259189739" TEXT="host based">
<node CREATED="1581259244697" ID="ID_1222165656" MODIFIED="1581259288515" TEXT="forward traffic to appropriate target based on host header received for request"/>
</node>
</node>
</node>
</node>
</node>
</map>
