.class Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->initConnReceiver()V
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
    .line 294
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    .line 298
    const-string v0, "LocationCtrl"

    const-string v1, "mConnectChangeRec onReceive~"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$000(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 300
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$000(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 301
    return-void
.end method
