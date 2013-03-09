.class Lcom/htc/android/psclient/HDMIReceiver$1;
.super Ljava/lang/Object;
.source "HDMIReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/HDMIReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/HDMIReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/HDMIReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->this$0:Lcom/htc/android/psclient/HDMIReceiver;

    iput-object p2, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x91

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const-string v0, "HDMIReceiver"

    const-string v1, "HDMI cable is plugged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v4, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->this$0:Lcom/htc/android/psclient/HDMIReceiver;

    #calls: Lcom/htc/android/psclient/HDMIReceiver;->UpdateHDMIPlugStatus(Z)V
    invoke-static {v0, v3}, Lcom/htc/android/psclient/HDMIReceiver;->access$000(Lcom/htc/android/psclient/HDMIReceiver;Z)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->this$0:Lcom/htc/android/psclient/HDMIReceiver;

    iget-object v1, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/psclient/HDMIReceiver;->setHDMINotification(Landroid/content/Context;Z)V

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "HDMIReceiver"

    const-string v1, "HDMI cable is unplugged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v4, :cond_3

    .line 59
    iget-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->this$0:Lcom/htc/android/psclient/HDMIReceiver;

    #calls: Lcom/htc/android/psclient/HDMIReceiver;->UpdateHDMIPlugStatus(Z)V
    invoke-static {v0, v2}, Lcom/htc/android/psclient/HDMIReceiver;->access$000(Lcom/htc/android/psclient/HDMIReceiver;Z)V

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->this$0:Lcom/htc/android/psclient/HDMIReceiver;

    iget-object v1, p0, Lcom/htc/android/psclient/HDMIReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/psclient/HDMIReceiver;->setHDMINotification(Landroid/content/Context;Z)V

    goto :goto_0
.end method
