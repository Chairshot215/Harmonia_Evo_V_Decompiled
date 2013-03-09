.class Lcom/htc/android/worldclock/DeskClock$8;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$8;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1369
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1370
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock$8;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v3, Lcom/htc/android/worldclock/WorldClockTabControl;

    iget-boolean v3, v3, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    if-eqz v3, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1373
    :cond_0
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock$8;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->checkWeatherLocInAp()V
    invoke-static {v3}, Lcom/htc/android/worldclock/DeskClock;->access$2600(Lcom/htc/android/worldclock/DeskClock;)V

    .line 1376
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1377
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.Weather"

    const-string v4, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock$8;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;
    invoke-static {v3}, Lcom/htc/android/worldclock/DeskClock;->access$2700(Lcom/htc/android/worldclock/DeskClock;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1379
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock$8;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;
    invoke-static {v3}, Lcom/htc/android/worldclock/DeskClock;->access$2700(Lcom/htc/android/worldclock/DeskClock;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/DeskClock;->getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, cityName:Ljava/lang/String;
    const-string v3, "name_"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick~ cityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1385
    .end local v0           #cityName:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/worldclock/DeskClock$8;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v3, v2}, Lcom/htc/android/worldclock/DeskClock;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1386
    :catch_0
    move-exception v1

    .line 1387
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Can\'t find weather activity."

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
