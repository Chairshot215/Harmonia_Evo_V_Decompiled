.class Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$4;
.super Landroid/content/BroadcastReceiver;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->initWeatherReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$4;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 443
    const-string v0, "LocationCtrl"

    const-string v1, "onReceive~ weather ap update"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "com.htc.Weather.delete_current_location"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$4;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mIsWithCurLocation:Z
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$400(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$4;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$000(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 455
    :cond_0
    return-void
.end method
