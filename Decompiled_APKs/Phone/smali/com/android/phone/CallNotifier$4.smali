.class Lcom/android/phone/CallNotifier$4;
.super Landroid/content/BroadcastReceiver;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 4265
    iput-object p1, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 4268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4270
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4271
    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/phone/CallNotifier;->access$1702(Lcom/android/phone/CallNotifier;Z)Z

    .line 4290
    :cond_0
    :goto_0
    return-void

    .line 4272
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4273
    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/CallNotifier;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$1702(Lcom/android/phone/CallNotifier;Z)Z

    .line 4275
    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mNeedToSetScreenTimeout:Z
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4276
    const-string v2, "CallNotifier"

    const-string v3, "-- mScreenStateReceiver screen on and call userActivityPhoneOffHook"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mNeedToSetScreenTimeout:Z
    invoke-static {v2, v4}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;Z)Z

    .line 4281
    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v2, v2, Lcom/android/phone/CallNotifier;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v2, :cond_0

    .line 4283
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->updateScreenDimWithPhoneState()V
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4284
    :catch_0
    move-exception v1

    .line 4285
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CallNotifier"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
