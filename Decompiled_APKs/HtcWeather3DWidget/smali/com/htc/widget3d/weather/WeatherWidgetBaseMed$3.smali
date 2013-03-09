.class Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetBaseMed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initAppReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 942
    const-string v1, "WeatherWidgetBaseMed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receivered broadcast intent info from WSPPUtility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppDestroy:Z
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$1000(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 946
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "discard the broadcast info: "

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const-string v1, "settingData"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, temperatureUnit:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "mUnit = UNIT._C"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    sput-object v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    .line 965
    :goto_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    const/4 v2, 0x1

    #setter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolRefreshUnit:Z
    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$702(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Z)Z

    .line 966
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$900(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const v2, -0xfffeffd

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 962
    :cond_2
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "mUnit = UNIT._F"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_F:Lcom/htc/widget3d/weather/data/City$UNIT;

    sput-object v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    goto :goto_1
.end method
