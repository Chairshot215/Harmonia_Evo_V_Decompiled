.class Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 4183
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4183
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4186
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 4190
    .local v1, event:Landroid/view/KeyEvent;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_10

    .line 4191
    const/4 v0, 0x0

    .line 4192
    .local v0, consumed:Z
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    .line 4207
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4209
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4214
    :cond_0
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_6

    .line 4223
    const/4 v0, 0x1

    .line 4231
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4232
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4301
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4302
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4303
    const-string v5, "PhoneApp"

    const-string v6, "MediaButtonBroadcastReceiver : abortBroadcast()!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 4350
    .end local v0           #consumed:Z
    :cond_5
    :goto_2
    return-void

    .line 4224
    .restart local v0       #consumed:Z
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 4225
    const/4 v0, 0x1

    goto :goto_0

    .line 4235
    :cond_7
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 4236
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4237
    const-string v5, "PhoneApp"

    const-string v6, "MediaButtonBroadcastReceiver: HEADSETHOOK up!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    :cond_8
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4240
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4244
    :cond_9
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4245
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4249
    :cond_a
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$4200(Lcom/android/phone/PhoneApp;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 4250
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4251
    const-string v5, "PhoneApp"

    const-string v6, "MediaButtonBroadcastReceiver : headset plug-out!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4256
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Z

    move-result v5

    if-nez v5, :cond_f

    .line 4257
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 4259
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4260
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateMenu()Z

    .line 4268
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    if-ne v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v5, v5, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 4269
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 4270
    .local v2, lEventTime:J
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleHeadsetHook(): lEventTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5800()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-gez v5, :cond_d

    .line 4272
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$5802(J)J

    .line 4273
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->reDialLastNumber()V
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$5900(Lcom/android/phone/PhoneApp;)V

    .line 4277
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    .line 4279
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x320

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 4281
    :cond_d
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$5802(J)J

    .line 4282
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4283
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleHeadsetHook(): mLastMediaButtonUpTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5800()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4288
    .end local v2           #lEventTime:J
    :cond_e
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$5802(J)J

    goto/16 :goto_1

    .line 4291
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 4292
    const/4 v0, 0x1

    .line 4293
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$1902(Z)Z

    goto/16 :goto_1

    .line 4307
    .end local v0           #consumed:Z
    :cond_10
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_5

    .line 4308
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_11

    .line 4309
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_11

    .line 4310
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_11

    .line 4311
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    .line 4312
    .local v4, muteState:Z
    if-nez v4, :cond_12

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4318
    .end local v4           #muteState:Z
    :cond_11
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_5

    .line 4325
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto/16 :goto_2

    .line 4312
    .restart local v4       #muteState:Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_3
.end method
