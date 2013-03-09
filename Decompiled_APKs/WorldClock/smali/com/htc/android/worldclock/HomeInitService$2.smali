.class Lcom/htc/android/worldclock/HomeInitService$2;
.super Ljava/lang/Object;
.source "HomeInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/HomeInitService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/HomeInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/HomeInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/android/worldclock/HomeInitService$2;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 39
    const/4 v5, 0x1

    new-array v4, v5, [Lcom/htc/util/weather/WeatherLocation;

    .line 40
    .local v4, w:[Lcom/htc/util/weather/WeatherLocation;
    new-instance v5, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v5}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v5, v4, v7

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    aget-object v5, v4, v7

    invoke-virtual {v5, v3}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 44
    iget-object v5, p0, Lcom/htc/android/worldclock/HomeInitService$2;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    invoke-virtual {v5}, Lcom/htc/android/worldclock/HomeInitService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 45
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/worldclock/HomeInitService$2;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/HomeInitService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".home"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 50
    .local v0, OrignHomeTimezone:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-gtz v5, :cond_0

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/worldclock/HomeInitService$2;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/HomeInitService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".home"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #OrignHomeTimezone:[Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveLocations - home as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->v(Ljava/lang/String;)V

    .line 60
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/worldclock/HomeInitService$2;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    #getter for: Lcom/htc/android/worldclock/HomeInitService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/android/worldclock/HomeInitService;->access$000(Lcom/htc/android/worldclock/HomeInitService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    return-void

    .line 54
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "NOTE onStart() thread: cr = null"

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
