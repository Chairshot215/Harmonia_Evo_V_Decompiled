.class final Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlushReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager;


# direct methods
.method private constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;Lcom/htc/server/HtcDeviceInfoManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;-><init>(Lcom/htc/server/HtcDeviceInfoManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$400(Lcom/htc/server/HtcDeviceInfoManager;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.htc.DEVICE_INFO_FLUSH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v0, "com.htc.DEVICE_INFO_LogInstalledApp"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v0, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v0, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.htc.screen_capture_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
