//进入监听事件
var googleAnalytics = new TPGoogleAnalytics();
document.addEventListener("didAppear",function(){
                          log('didAppear===');
                          googleAnalytics.AnalyticsdidAppearTml();
})

document.addEventListener("load",function(){
                          log('load===');
                          googleAnalytics.AnalyticsLoadTml();
})

document.addEventListener("onunload",function(){
                          log('onunload===');
                          googleAnalytics.AnalyticsOnloadTml();
                          })

var googleAPI = {
    AnalyticsEventHit:function(a,b,c,d){
        googleAnalytics.AnalyticsEventHit(a,b,c,d);
    }
}
