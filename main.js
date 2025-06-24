var express = require('express');
var mysql = require('mysql2');
var app = express();

app.use(express.json());

//connection
const conn=mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"Password123#@!",
    database:"employee"
});

conn.connect((err)=>{
    if(err)
    {
        console.log(err);
    }
    else
    {
        console.log("Connected to database..");
    }
});

// post method
app.post("/post",(req,res)=>{
    const id=req.body.id;
    const name=req.body.name;
    const age=req.body.age;
    const department=req.body.department;

    conn.query("insert into emp values(?,?,?,?)",[id,name,age,department],(err,result)=>{
        if(err)
        {
            console.log(err);
        }
        else
        {
            res.send("Inserted data");
        }

    });
});

// get all details
app.get("/fetch",(req,res)=>{
    conn.query("select * from emp",(err,result,fields)=>{
        if(err)
        {
             console.log(err);
        }
        else
        {
             res.send(result);
             console.log(JSON.parse(JSON.stringify(result)));
        }
    })
});

// get details by id
app.get("/fetch/:id",(req,res)=>{
    const id=req.params.id;
    conn.query("select * from emp where id=?",[id],(err,result,fields)=>{
        if(err)
        {
            console.log(err);
        }
        else
        {
            res.send(result);
        }
    });
});

// update the details by id
app.put("/update/:id",(req,res)=>{
    conn.query("update emp set name=?,age=?,department=? where id=?",[req.body.name,req.body.age,req.body.department,req.params.id],(err,result)=>{
        if(err)
        {
            console.log(err);
        }
        else
        {
            res.send("Updated data..");
        }
    });
});

//delete the details by id
app.delete("/delete/:id",(req,res)=>{
    conn.query("delete from emp where id=?",[req.params.id],(err,result)=>{
        if(err)
        {
            console.log(err);
        }
        else
        {
            res.send("Record Deleted...");
        }
    });
});

//port
app.listen(3000,(err)=>{
    if(err)
    {
         console.log(err);
    }
    else
    {
          console.log("Listen to the port 3000");
    }
});

