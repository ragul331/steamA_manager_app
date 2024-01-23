const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const mysql = require("mysql2");
const authRouter = express.Router();
const jwt = require("jsonwebtoken");
const auth = require("../back-end/middleware/auth"); 

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Ragul@123!",
  database: "db", 
});
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
connection.connect((err) => {
  if (err) {
    console.error("Error connecting: " + err.stack);
    return;
  }
  console.log("Connected as id " + connection.threadId);
});

authRouter.post("/signin", async (req, res) => {
  try {
    const { userName, cpId } = req.body;

    connection.query(
      "SELECT * FROM logindetails WHERE username = ? AND cp_id = ?",
      [userName, cpId],
      function (error, results, fields) {
        if (error) {
          console.log("Error: " + error.message);
          return res.status(500).json({ err: error.message });
        }

        if (results.length > 0) {
          console.log(results[0].id);
          const token = jwt.sign({ id: results[0].id }, "passwordKey");
          res
            .status(200)
            .json({ msg: "User exists and cpId matches", results, token });
        } else {
          res
            .status(404)
            .json({ msg: "User does not exist or cpId does not match" });
        }
      }
    );
  } catch (e) {
    return res.status(500).json({ err: e.message }); 
  }
});

authRouter.post("/tokenIsValid", async (req, res) => {
  try {
    const token = req.header("x-auth-token");
    if (!token) return res.json(false);
    const verified = jwt.verify(token, "passwordKey");
    if (!verified) return res.json(false);
    return res.json(true);
  } catch (e) {
    return res.status(500).json({ err: e.message });
  }
}); 
 
authRouter.get("/", auth, async (req, res) => {
  connection.query(
    "SELECT * FROM logindetails WHERE username = ? AND cp_id = ?",
    [req.user.userName, req.user.cpIdcpId],
    function (error, results, fields) {
      if (error) {
        return res.status(500).json({ err: error.message });
      }
      if (results.length > 0) {
        return res.status(200).json({ results, token: req.token });
      }
    }
  ); 
});

authRouter.post('/sendData', (req, res) => {
  let data = req.body;
  let sql = `INSERT INTO testdata(site_id, site_name, boot_notification, heart_beat, hard_reset, change_availability, get_configuration, change_configuration, app_installation, login_signup_existing_customer, login_signup_new_customer, top_up_by_paytm, top_up_by_upi, session_by_rfid, remote_start_from_cms, scan_from_app, remote_start_from_app, auto_cut_off, emergency_stop, interrupted_session_connectivity, autocharge, push_notification, interruptedSessionPowerOff, interruptedSessionConnectivity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
  let values = [
      data.siteId,
      data.sitename,
      data.bootNotification,
      data.heartBeat,
      data.hardReset,
      data.changeAvaialbility,
      data.getConfigurationCSToCP,
      data.changeConfigurationCSToCP,
      data.appInstallation,
      data.loginOrSignUpExistingCustomer,
      data.loginOrSignUpNewCustomer,
      data.topUpByPaytm,
      data.topUpByUPI,
      data.sessionByRFID,
      data.remoteStartFromCMS,
      data.scanFromApp,
      data.remoteStartFromAppForATeamMember,
      data.autoCutOff,
      data.emergencyStop,
      data.interruptedSession,
      data.interruptedSessionPowerOff,  
      data.interruptedSessionConnectivity,
      data.autocharge,
      data.pushNotification
  ];
  connection.query(sql, values, (err, result) => {
      if(err)
      {
        throw err;
      } 
      console.log(result);
      res.send('Data inserted...');
  });
});



app.use(authRouter);

const PORT = process.env.PORT || 8080;

app.get("/test", (req, res) => {
  res.status(200).json({ msg: "connected" });
});

app.listen(PORT, "0.0.0.0", () => {
  console.log("Server Running");
});
