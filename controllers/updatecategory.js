const db = require("../routes/db-config");
const sequelize = require('../config/db')

const post = async (req,res) => {



    const {secret, titleru, titletm} = req.body;
    if(!req.cookies.isAdmin){
        res.render("admin/login", {status:"no", user:"nothing"});
    }
    else{
        let slug1step = titletm.trim();
        let slug2step = slug1step.replaceAll(" ", "_");
        let sql = `UPDATE categories SET category_ru = '${titleru}', category_tm = '${titletm}', category_slug = '${slug2step}', updatedAt = now() WHERE id= '${secret}'`;
        await sequelize.query(sql)
     

        return res.json({status:"success", success:"Category uytgedildi"});
    
    }
}



module.exports = post;