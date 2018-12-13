//服务器入口文件
//加载模块
const express=require("express")
const pool=require("./pool")
const cors=require("cors")
//创建express对象
var app=express()

//指定静态目录
app.use(express.static(__dirname+"/public"))
//配置允许那个程序跨域访问脚手架
app.use(cors({
    origin:["http://127.0.0.1:5050","http://localhost:5050"],
    credentials:true
}))
//监听端口
app.listen(5000)

app.get("/image",(req,res)=>{
    var obj=[
        {id:1,img_url:"http://127.0.0.1:5000/img/640.jpg"},
        {id:2,img_url:"http://127.0.0.1:5000/img/641.jpg"},
        {id:3,img_url:"http://127.0.0.1:5000/img/1.jpg"},
        {id:4,img_url:"http://127.0.0.1:5000/img/640 (2).jpg"},
        {id:5,img_url:"http://127.0.0.1:5000/img/640 (3).jpg"},
        {id:6,img_url:"http://127.0.0.1:5000/img/4.jpg"},
        {id:7,img_url:"http://127.0.0.1:5000/img/2.jpg"},
        {id:8,img_url:"http://127.0.0.1:5000/img/3.jpg"}
    ];
    res.send(obj)
})

app.get("/home",(req,res)=>{
    var obj=[
        {id:1,img_url:"http://127.0.0.1:5000/img/300(5)",title:"转发锦鲤祈福招财猫治愈系原创矢量插画"},
        {id:2,img_url:"http://127.0.0.1:5000/img/17B58PICGpm.jpg!qt226",title:"简约蓝色亮光星星背景"},
        {id:3,img_url:"http://127.0.0.1:5000/img/300(2)",title:"清新卡通六一儿童节彩旗边框动物背景素材"},
        {id:4,img_url:"http://127.0.0.1:5000/img/300(3)",title:"原创手绘小清新水果少女心可爱格子背景素材"},
        {id:5,img_url:"http://127.0.0.1:5000/img/300(7)",title:"商业计划书PPT模板"},
        {id:6,img_url:"http://127.0.0.1:5000/img/300(8)",title:"扁平橙色校园招聘"}
    ];
    res.send(obj)
})

//分页显示:新闻分页
app.get("/news",(req,res)=>{
    //1:参数  当前页码  页大小(一页显示几行数据)
    var pno = req.query.pno;            //2
    var pageSize = req.query.pageSize;  //5
    //2:sql
    //2.1:查找总记录数->转换总页数  15->3
    var sql = "SELECT count(id) as c FROM app_news";  
    var obj = {};      //保存发送客户端数据
    var progress = 0;  //进度
    pool.query(sql,[],(err,result)=>{
        if(err)throw err;
        var c = Math.ceil(result[0].c/pageSize);
        obj.pageCount = c;
        progress+=50;
        if(progress==100){
          res.send(obj);
        }
    });
    //2.2:查找当前页内容           中间5行
    var sql = " SELECT id,title,ctime,img_url";
       sql += " FROM app_news";
       sql += " LIMIT ?,?";
        var offset = parseInt((pno-1)*pageSize);   //计算分页偏移量
        pageSize = parseInt(pageSize)
        pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err)throw err;
        //console.log(result);
        obj.data = result;
        progress+=50;
        if(progress==100){
          res.send(obj);
        }
    })
    //3:结果格式
    //res.send({code:"ok"})
  });

//图片分页
app.get("/photo",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    var sql="select count(id) as c from app_home";
    var obj={}
    var progress=0
    pool.query(sql,[],(err,result)=>{
        if(err) throw err
        var c=Math.ceil(result[0].c/pageSize)
        obj.pageCount=c
        progress+=50
        if(progress==100){
            res.send(obj)
        }
    });
    var sql="select id,img_url,title from app_home limit ?,?"
    var offset=parseInt((pno-1)*pageSize);
    pageSize=parseInt(pageSize)
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) throw err
        obj.data=result
        progress+=50
        if(progress==100){
            res.send(obj)
        }
    })
})
app.get("/gaoqing",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    var sql="select count(id) as c from gaoqing"
    var obj={}
    var progress=0
    pool.query(sql,[],(err,result)=>{
        if(err) throw err
        var c=Math.ceil(result[0].c/pageSize)
        obj.pageCount=c
        progress+=50
        if(progress==100){
            res.send(obj)
        }
    });
    var sql="select id,img_url,title from gaoqing limit ?,?"
    var offset=parseInt((pno-1)*pageSize)
    pageSize=parseInt(pageSize)
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) throw err
        obj.data=result
        progress+=50
        if(progress==100){
            res.send(obj)
        }
    })
})

 app.get("/newsinfo",(req,res)=>{
     var obj={title:"Web端项目总结（设计思路）",content:"1.本次只展示网页更改的部分页面，针对比较有特点的页面进行概括。主要解决了网页的整体性问题和提供更好的交互体验以及对细节问题进行修复。2.在视觉上，采用黑白处理的配色方式，简化页面的颜色，使用户专注于内容编辑和样式选择。添加适当的辅助色，适当的额突出重点功能按钮和主推业务。弱化颜色对于用户文章排版的视觉引导。3.交互上，统一了多端的设计语言，将低频操作整合到二级页面，一定程度的提高了二级页面的曝光了。此外，将会员购买的页面放到首页弹窗的位置，极大的优化了会员购买的体验。4.产品上，为了提高产品的付费率，设计了图文同步、一键排版、保存图片等新功能（部分未上线）。不断完善产品的功能，提高其竞争力。",author:"哈利波特",ctime:"2017-10-27"}
     res.send(obj)
 })

//用户发表评论
//const qs = require("querystring");
app.post("/postcomment",(req,res)=>{
   //为req对象绑定事件data   
   req.on("data",(buf)=>{
     var str = buf.toString();  //1:将参数转字符串
     var obj = JSON.parse(str); //2:将参数转对象
     var msg = obj.msg;         
     var nid = parseInt(obj.nid);
     var sql = "INSERT INTO app_comment(content,user_name,ctime,nid) VALUES(?,'匿名',now(),?)";
     pool.query(sql,[msg,nid],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:"添加成功"});
     })
   })
})

//:用户获取指定新闻编号所有评论
app.get("/getComment",(req,res)=>{
    //获取指定新闻编号  
    var nid = parseInt(req.query.id);
    var pno = req.query.pno;            
    var pageSize = req.query.pageSize;  
    var sql = " SELECT count(id) as c FROM app_comment";
    sql +=" WHERE nid = ?";
    var obj = {};      //保存发送客户端数据
    var progress = 0;  //进度
    pool.query(sql,[nid],(err,result)=>{
        if(err)throw err;
        var c = Math.ceil(result[0].c/pageSize);
        obj.pageCount = c;
        progress+=50;
        if(progress==100){
          res.send(obj);
         }
      });
      //2.2:查找当前页内容
    var sql = " SELECT id,content,ctime,user_name";
       sql += " FROM app_comment";
       sql += " WHERE nid = ?"
       sql += " ORDER BY id DESC";//降序排列
       sql += " LIMIT ?,?";
    var offset = parseInt((pno-1)*pageSize);   
    pageSize = parseInt(pageSize)
    pool.query(sql,[nid,offset,pageSize],(err,result)=>{
       if(err)throw err;
        obj.data = result;
        progress+=50;
        if(progress==100){
        res.send(obj);
        }
    })
  })


app.get("/login",(req,res)=>{
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    var sql="SELECT count(id) as c from app_user where uname=? and upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result[0].c==0){
            res.send({code:-1,msg:"用户名或密码有误"})
        }else{
            res.send({code:1,msg:"登录成功"})
        }
    })
})

app.get("/picture",(req,res)=>{
    var obj={title:"千图网提供精美好看的首页模板素材设计免费下载，本次首页模板作品是美妆洗护行业，主题是京东双11迷彩渐变立体几何页面首页大促，编号是324734，格式是psd，建议使用Photoshop CC 2017 软件打开，该首页模板素材大小是16.036 MB，尺寸为1920x5000。",content:"京东双11迷彩渐变立体几何页面首页大促是由首页模板设计师谜豆上传.浏览本次作品的您可能还对首页模板 京东双11 迷彩渐变 立体几何 大促首页 页面感兴趣",img_url:"http://127.0.0.1:5000/img/true.jpg"}
    res.send(obj)
})
