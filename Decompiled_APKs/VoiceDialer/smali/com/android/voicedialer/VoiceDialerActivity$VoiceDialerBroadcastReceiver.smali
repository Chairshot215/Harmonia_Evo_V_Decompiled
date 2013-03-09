.class Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceDialerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    const-string v4, "VoiceDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "===BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 504
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 506
    .local v3, state:I
    const-string v4, "VoiceDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HEADSET STATE -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 510
    if-nez v1, :cond_1

    .line 563
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .line 515
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #state:I
    :cond_1
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2102(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 516
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v5, 0x1

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->updateBluetoothParameters(Z)V
    invoke-static {v4, v5}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2200(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    goto :goto_0

    .line 518
    :cond_2
    if-nez v3, :cond_0

    .line 520
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v5}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2102(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 521
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->updateBluetoothParameters(Z)V
    invoke-static {v4, v8}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2200(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    goto :goto_0

    .line 524
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #state:I
    :cond_3
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 526
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 527
    .restart local v3       #state:I
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 529
    .local v2, prevState:I
    const-string v4, "VoiceDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ===BluetoothHeadset.ACTION_AUDIO_STATE_CHANGED===, state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", prevState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-ne v3, v9, :cond_5

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1900(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 534
    const-string v4, "VoiceDialerActivity"

    const-string v5, "updaing mWaitingForScoConnection to false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v4, v8}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1902(Lcom/android/voicedialer/VoiceDialerActivity;Z)Z

    .line 538
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForTts:Z
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1600(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 540
    const-string v4, "VoiceDialerActivity"

    const-string v5, "still waiting for the TTS to be set up."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_4
    const-string v4, "VoiceDialerActivity"

    const-string v5, "we now have SCO connection and TTS, so we can start."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;

    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v5, v6}, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 548
    :cond_5
    if-ne v2, v9, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1900(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 554
    const-string v4, "VoiceDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lost sco connection, mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    .line 557
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;

    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v7, 0x7f04000b

    invoke-direct {v5, v6, v7}, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 559
    :cond_6
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto/16 :goto_0
.end method
