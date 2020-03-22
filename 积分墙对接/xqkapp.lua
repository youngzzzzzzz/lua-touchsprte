-- 积分墙对接
-- jfqhj.lua  

-- Create By TouchSpriteStudio on 21:19:35   
-- Copyright © TouchSpriteStudio . All rights reserved.
	

require("TSLib")
require("AWZ")
require('tsp')


jfq ={}
jfq.url = ''
jfq.model = ''
jfq.adid = ''
jfq.appid = ''
jfq.keyword	= ''
jfq.idfa = ''
jfq.os_version = ''
jfq.device = 'iPhone10,3'
jfq.udid = ''
jfq.callback = 'true'
jfq.appname = ''
jfq.source = ''
jfq.channel = ''
jfq.bid = ''

var = {}

	
function start()
	local sz = require('sz')
	local info = getOnlineName()
	log(info)
	jfq.idfa =  strSplit(info[8],":")[2]
	jfq.os_version = '12.1.2'  --strSplit(info[3],":")[2]
	jfq.devicename = getDeviceName()
	jfq.udid = 'FFA830995CCFB143B1057011CB82A10BB8EA0438' --strSplit(info[4],":")[2]
	jfq.imei = sz.system.serialnumber()
	jfq.medel = 'iPhone10,3'
--	log(jfq);
end


--input('A4941D558FD54855AB0BB7441F8EB9CE5FDAC218')

function get_task()
	local sz = require('sz')
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.gettask'
	local postArr = {}
	postArr.phonename = getDeviceName()
	postArr.imei = sz.system.serialnumber()
	local taskData = post(url,postArr)
	
	if taskData ~= nil then
		log(taskData)
		if taskData.data == "新增手机" or taskData.data == "暂无任务" then
			log(taskData.data,true)
			delay(30)
			return false
		else
			return taskData.data
		end
	end
end

function idfa_Distinct()

	local url = 'http://api.xqkapp.cn/';
	local url_model = 'openapi/upstream/idfaQueryApi'
	local service = url..url_model
	local postArr = {}
	postArr['appkey'] = var['adid']
	postArr['chid'] = '221'
	postArr['idfa'] = jfq['idfa']
	postArr['model'] = jfq.medel
	postArr['udid'] = jfq.udid
	postArr['system'] = jfq['os_version']
	postArr['keyword'] = urlEncoder('薄荷营养师')
--	postArr['keyword'] = '薄荷营养师'
	postArr['user_ip'] = ip()
	
--	log(postArr)
	local postdata = ''
	for k,v in pairs(postArr) do
		postdata = postdata .. '&'..k..'='..v
	end
	local service = service .."?"..postdata
	log(service);
	local res = get(service)
	log(res)
	return res
end

function idfa_Click()
	local url_ = 'http://phalapipro.wenfree.cn/api/app.php';
	var['s']="App.Idfa.Click";
	log('idfa_Click')
--	log(var)
	return post(url_,var)
end
function idfa_Report()
	
	
end

function openApp(bid,opentime)
	local timeLine = os.time()
	while os.time()- timeLine < opentime do
		if active(bid,5)then
			local w,h = getScreenSize()
			moveTo(0.8*w,0.8*h,0.2*w,0.2*h,rd(10,30))
		end
		delay(1)
	end
end

function idfa(way,t,k_)
	local t = t
	
	var.appid = t.appid
	var.adid = t.adid
	var.done = t.done
	var.state = t.state
	var.keyword = t.keyword
	var.appbid = t.appbid
	var.time = t.time
	var.groups = t.groups
	var.id = t.id
	var.note = t.note
	var.todo = t.todo
	var.work = t.work
	var.addtime = t.addtime
	var.task_id = t.task_id
	var.date = t.date
	var.downtime = t.downtime or 60
	var.opentime = t.opentime or rd(150,300);
	
	var.way = t.way
	
	var.idfa = jfq.idfa
	var.os_version = jfq.os_version
	var.device = jfq.device
	var.udid = jfq.udid
	var.imei = jfq.imei
--	var.callback = jfq.callback
	
	if way == 'Distinct' then
		log("Distinct")
		delay(0.5)
		if idfa_Distinct() then
			idfa_setp[k_] = {}
			idfa_setp[k_]['open'] = true
			idfa_setp[k_]['timeLine'] = os.time()
		end
		lua_exit()
	elseif way == 'Click' then
		log("Click")
		if idfa_setp[k_]['open'] then
			log(idfa_Click());
			while os.time()- idfa_setp[k_]['timeLine'] < var.downtime do
				log('等下载时间');
			end
			
			openApp(var.appbid,var.opentime)
		end
	elseif way == 'Report' then
		log('Report')
	end
end

--log( readPasteboard() )




start()
local task_data = get_task()
if task_data then
	
	setp = {  'Distinct','Click','Report' }
	
	idfa_setp = {}
	
	for k,v in ipairs(setp) do

		for k_,v_ in ipairs(task_data) do
			
			--第几个任务的记录
			log(idfa_setp);
			idfa(v,v_,k_)
		end
		
	end
	

end












































