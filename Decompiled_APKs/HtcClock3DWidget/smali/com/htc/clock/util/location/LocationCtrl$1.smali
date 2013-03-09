.class Lcom/htc/clock/util/location/LocationCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/clock/util/location/LocationCtrl;->initConnReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl$1;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

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

    .line 300
    const-string v0, "mConnectChangeRec onReceive~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl$1;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/clock/util/location/LocationCtrl;->access$000(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 302
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl$1;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/clock/util/location/LocationCtrl;->access$000(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v3, v1, v2}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 303
    return-void
.end method
