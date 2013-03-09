.class final Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandsfreeMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    .line 2176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2177
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2174
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2180
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2283
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2182
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2188
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2190
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 2191
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2194
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2200
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2201
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2202
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Timeout waiting for call to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2204
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2208
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 2211
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2214
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2215
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2216
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->setAVRCPOn(Z)V

    .line 2217
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Timeout waiting for voice recognition to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2219
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2220
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 2221
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$6100(Lcom/android/phone/BluetoothHandsfree;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2224
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 2227
    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2230
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$6200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2231
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Starting SCO anyway"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2234
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2236
    :cond_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 2239
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2240
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$6300(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v2, 0xa

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2245
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    monitor-enter v2

    .line 2247
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 2251
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2253
    :cond_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 2256
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2257
    const-string v1, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout suspending A2DP for CIEV: 3,1 (mA2dpState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Send CIEV: 3,1 anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "CIEV: 3,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2260
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_0

    .line 2264
    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2265
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Timeout waiting AT+RING for answer call. make call answer anyway"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2267
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2269
    :cond_5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_0

    .line 2274
    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->handleBurstDtmfConfirmation()V

    goto/16 :goto_0

    .line 2277
    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2280
    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2180
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
