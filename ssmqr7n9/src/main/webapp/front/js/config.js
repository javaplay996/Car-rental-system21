
var projectName = '汽车租赁系统业务管理子系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '租赁信息',
	url: './pages/zulinxinxi/list.html'
}, 
{
	name: '汽车出租',
	url: './pages/qichechuzu/list.html'
}, 
{
	name: '汽车续租',
	url: './pages/qichexuzu/list.html'
}, 
{
	name: '还车结算',
	url: './pages/haichejiesuan/list.html'
}, 

{
	name: '租赁资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmqr7n9/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"员工","menuJump":"列表","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"车型","menuJump":"列表","tableName":"chexing"}],"menu":"车型管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"租赁信息","menuJump":"列表","tableName":"zulinxinxi"}],"menu":"租赁信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车出租","menuJump":"列表","tableName":"qichechuzu"}],"menu":"汽车出租管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车续租","menuJump":"列表","tableName":"qichexuzu"}],"menu":"汽车续租管理"},{"child":[{"buttons":["查看"],"menu":"汽车加油","menuJump":"列表","tableName":"qichejiayou"}],"menu":"汽车加油管理"},{"child":[{"buttons":["查看"],"menu":"还车结算","menuJump":"列表","tableName":"haichejiesuan"}],"menu":"还车结算管理"},{"child":[{"buttons":["查看"],"menu":"汽车维修","menuJump":"列表","tableName":"qicheweixiu"}],"menu":"汽车维修管理"},{"child":[{"buttons":["查看"],"menu":"事故登记","menuJump":"列表","tableName":"shigudengji"}],"menu":"事故登记管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"租赁资讯","tableName":"news"},{"buttons":["修改","删除","查看"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"租赁信息列表","menuJump":"列表","tableName":"zulinxinxi"}],"menu":"租赁信息模块"},{"child":[{"buttons":["查看"],"menu":"汽车出租列表","menuJump":"列表","tableName":"qichechuzu"}],"menu":"汽车出租模块"},{"child":[{"buttons":["查看"],"menu":"汽车续租列表","menuJump":"列表","tableName":"qichexuzu"}],"menu":"汽车续租模块"},{"child":[{"buttons":["查看"],"menu":"还车结算列表","menuJump":"列表","tableName":"haichejiesuan"}],"menu":"还车结算模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"车型","menuJump":"列表","tableName":"chexing"}],"menu":"车型管理"},{"child":[{"buttons":["查看","租赁"],"menu":"租赁信息","menuJump":"列表","tableName":"zulinxinxi"}],"menu":"租赁信息管理"},{"child":[{"buttons":["查看","续租","还车"],"menu":"汽车出租","menuJump":"列表","tableName":"qichechuzu"}],"menu":"汽车出租管理"},{"child":[{"buttons":["查看","还车"],"menu":"汽车续租","menuJump":"列表","tableName":"qichexuzu"}],"menu":"汽车续租管理"},{"child":[{"buttons":["查看"],"menu":"汽车加油","menuJump":"列表","tableName":"qichejiayou"}],"menu":"汽车加油管理"},{"child":[{"buttons":["查看","支付"],"menu":"还车结算","menuJump":"列表","tableName":"haichejiesuan"}],"menu":"还车结算管理"},{"child":[{"buttons":["查看"],"menu":"汽车维修","menuJump":"列表","tableName":"qicheweixiu"}],"menu":"汽车维修管理"},{"child":[{"buttons":["查看"],"menu":"事故登记","menuJump":"列表","tableName":"shigudengji"}],"menu":"事故登记管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"租赁信息列表","menuJump":"列表","tableName":"zulinxinxi"}],"menu":"租赁信息模块"},{"child":[{"buttons":["查看"],"menu":"汽车出租列表","menuJump":"列表","tableName":"qichechuzu"}],"menu":"汽车出租模块"},{"child":[{"buttons":["查看"],"menu":"汽车续租列表","menuJump":"列表","tableName":"qichexuzu"}],"menu":"汽车续租模块"},{"child":[{"buttons":["查看"],"menu":"还车结算列表","menuJump":"列表","tableName":"haichejiesuan"}],"menu":"还车结算模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"车型","menuJump":"列表","tableName":"chexing"}],"menu":"车型管理"},{"child":[{"buttons":["查看","租赁"],"menu":"租赁信息","menuJump":"列表","tableName":"zulinxinxi"}],"menu":"租赁信息管理"},{"child":[{"buttons":["查看"],"menu":"汽车出租","menuJump":"列表","tableName":"qichechuzu"}],"menu":"汽车出租管理"},{"child":[{"buttons":["查看"],"menu":"汽车续租","menuJump":"列表","tableName":"qichexuzu"}],"menu":"汽车续租管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车加油","menuJump":"列表","tableName":"qichejiayou"}],"menu":"汽车加油管理"},{"child":[{"buttons":["查看","新增","修改","删除"],"menu":"还车结算","menuJump":"列表","tableName":"haichejiesuan"}],"menu":"还车结算管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车维修","menuJump":"列表","tableName":"qicheweixiu"}],"menu":"汽车维修管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"事故登记","menuJump":"列表","tableName":"shigudengji"}],"menu":"事故登记管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"租赁信息列表","menuJump":"列表","tableName":"zulinxinxi"}],"menu":"租赁信息模块"},{"child":[{"buttons":["查看"],"menu":"汽车出租列表","menuJump":"列表","tableName":"qichechuzu"}],"menu":"汽车出租模块"},{"child":[{"buttons":["查看"],"menu":"汽车续租列表","menuJump":"列表","tableName":"qichexuzu"}],"menu":"汽车续租模块"},{"child":[{"buttons":["查看"],"menu":"还车结算列表","menuJump":"列表","tableName":"haichejiesuan"}],"menu":"还车结算模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"员工","tableName":"yuangong"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
