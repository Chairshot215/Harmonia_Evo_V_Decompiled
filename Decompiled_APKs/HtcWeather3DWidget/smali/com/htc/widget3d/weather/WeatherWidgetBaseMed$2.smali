.class Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetBaseMed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initWSPReceiver()V
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
    .line 729
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 732
    const-string v1, "WeatherWidgetBaseMed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SilderReceiver received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$900(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$900(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 737
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->access$900(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 740
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
