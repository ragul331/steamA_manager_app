const jwt = require("jsonwebtoken");
const auth = async (req, res, next) => {
    try {
        console.log('here');
      const token = req.header("x-auth-token");
      console.log(token);
      if (!token) {
        return res.status(401).json({ msg: "No auth Token, Access Denied" });
      } 
      const verified = jwt.verify(token, "passwordKey");
      if (!verified) {
        return res 
          .status(401)
          .json({ msg: "Token Verification failed, Auth denied" });
      }
      req.user = verified.id;
      console.log(req.user);
      console.log(verified.id);
      req.token = token;
      next();
    } catch (e) {
      return res.status(500).json({ error: e.message }); 
    }
  }; 
  
  module.exports = auth;
  