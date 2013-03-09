.class Lcom/htc/lockscreen/HtcDeviceUnlockScreen$3;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcDeviceUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$3;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, action:Ljava/lang/String;
    const-string v1, "DeviceUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "com.htc.android.omadm.pin.fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "DeviceUnlockScreen"

    const-string v2, "receive device lock pin fail intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$3;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$300(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$3;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$300(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_0
    return-void
.end method
