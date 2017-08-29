var counts = 5; //设置幻灯片数量
//设置图片路径
img1 = new Image(); img1.src = "images/i1.jpg";
img2 = new Image(); img2.src = "images/i2.jpg";
img3 = new Image(); img3.src = "images/i3.jpg";
img4 = new Image(); img4.src = "images/i4.jpg";
img5 = new Image(); img5.src = "images/i5.jpg";
//设置图片的URL
url1 = new Image(); url1.src = "images/i1.jpg";
url2 = new Image(); url2.src = "images/i2.jpg";
url3 = new Image(); url3.src = "images/i3.jpg";
url4 = new Image(); url4.src = "images/i4.jpg";
url5 = new Image(); url5.src = "images/i5.jpg";

var nn = 1;//当前所显示的滚动图
var key = 0;//标识是否为第一次开始执行
function change_img() {
    if (key == 0) { key = 1; }//如果第一次执行KEY=1，表示已经执行过一次了。
    eval('document.getElementById("pic").src=img' + nn + '.src');//替换图片
    eval('document.getElementById("url").href=url' + nn + '.src');//替换url
    for (var i = 1; i <= counts; i++) {
        document.getElementById("xxjdjj" + i).className = 'axx';
    } //将下面黑条上的所有链接变为未选中状态

    document.getElementById("xxjdjj" + nn).className = 'bxx'; //将当前页面的ID设置为选中状态
    nn++;
    if (nn > counts) { nn = 1; }  //如果ID大于总图片数量。则从头开始循环
    //设置图片切换间隔时间
    tt = setTimeout('change_img()', 2000);
}//在2秒后重新执行change_img()方法.
function changeimg(n) {//点击黑条上的链接执行的方法。
    nn = n;//当前页面的ID等于传入的N值,
    window.clearInterval(tt);//清除用于循环的TT
    change_img();
    //重新执行change_img();但change_img()内所调用的图片ID已经在此处被修改,会从新ID处开始执行.
}

function myMain() {
    change_img();
}
