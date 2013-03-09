.class public Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VSTMRReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherActivity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    const-string v0, "WeatherMaGroup"

    const-string v1, "VSTMRReceiver receive VST_MEDIA_RELEASE message"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isWeatherWallpaperAlive:Z

    .line 1280
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isNeedCheckWallpaper:Z

    if-nez v0, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    if-eqz v0, :cond_0

    .line 1286
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v1}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->getSlectedTabType()I

    move-result v1

    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v2}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 1287
    const-string v0, "WeatherMaGroup"

    const-string v1, "VSTMRReceiver receive,but hour view,no resume video"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_2
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1291
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSTMRReceiver,no data view,no resume video.isEmptyDataViewVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$VSTMRReceiver;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherActivity;->resumeGLVideo()V

    goto :goto_0
.end method
