.class Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetBaseMed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initLocReceiver()V
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
    .line 975
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 978
    const-string v0, "WeatherWidgetBaseMed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receivered broadcast intent info from Weather app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppDestroy:Z
    invoke-static {v0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$1000(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "discard the broadcast info: "

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.Weather.delete_current_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z
    invoke-static {v0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$1100(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->clearCurrentLocation()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$1200(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    .line 989
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateData()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$800(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    goto :goto_0
.end method
