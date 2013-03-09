.class final Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevicePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager;


# direct methods
.method private constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;Lcom/htc/server/HtcDeviceInfoManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;-><init>(Lcom/htc/server/HtcDeviceInfoManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "DevicePhoneStateListener.onCallStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->getInstance()Lcom/htc/server/HtcDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DevicePhoneStateListener.onCallStateChanged, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "DevicePhoneStateListener.onCallStateChanged, phone disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "DevicePhoneStateListener.onCallStateChanged, phone connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/server/HtcDeviceInfoManager;->access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
