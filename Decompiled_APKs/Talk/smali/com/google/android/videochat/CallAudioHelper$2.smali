.class Lcom/google/android/videochat/CallAudioHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "CallAudioHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallAudioHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallAudioHelper;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallAudioHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onBluetoothDisconnected()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v0}, Lcom/google/android/videochat/CallAudioHelper;->access$200(Lcom/google/android/videochat/CallAudioHelper;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v0}, Lcom/google/android/videochat/CallAudioHelper;->access$200(Lcom/google/android/videochat/CallAudioHelper;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v0}, Lcom/google/android/videochat/CallAudioHelper;->access$200(Lcom/google/android/videochat/CallAudioHelper;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->usePendingAudioDeviceState()V
    invoke-static {v0}, Lcom/google/android/videochat/CallAudioHelper;->access$700(Lcom/google/android/videochat/CallAudioHelper;)V

    .line 151
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, audioState:I
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothReceiver.onReceive: got ACTION_SCO_AUDIO_STATE_CHANGED, audioState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isInitialSticky="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/videochat/CallAudioHelper$2;->isInitialStickyBroadcast()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/videochat/CallAudioHelper;->access$100(Lcom/google/android/videochat/CallAudioHelper;Ljava/lang/String;)V

    .line 84
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$200(Lcom/google/android/videochat/CallAudioHelper;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v3

    sget-object v4, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eq v3, v4, :cond_0

    .line 86
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    sget-object v4, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    #setter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v3, v4}, Lcom/google/android/videochat/CallAudioHelper;->access$202(Lcom/google/android/videochat/CallAudioHelper;Lcom/google/android/videochat/CallState$AudioDeviceState;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 88
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$300(Lcom/google/android/videochat/CallAudioHelper;)V

    .line 91
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$500(Lcom/google/android/videochat/CallAudioHelper;)V

    .line 138
    .end local v1           #audioState:I
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v1       #audioState:I
    :cond_1
    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/videochat/CallAudioHelper$2;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$300(Lcom/google/android/videochat/CallAudioHelper;)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper$2;->onBluetoothDisconnected()V

    .line 104
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$500(Lcom/google/android/videochat/CallAudioHelper;)V

    goto :goto_0

    .line 108
    .end local v1           #audioState:I
    :cond_2
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    .local v2, profileState:I
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothReceiver.onReceive: got ACTION_CONNECTION_STATE_CHANGED, profileState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isInitialSticky="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/videochat/CallAudioHelper$2;->isInitialStickyBroadcast()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/videochat/CallAudioHelper;->access$100(Lcom/google/android/videochat/CallAudioHelper;Ljava/lang/String;)V

    .line 117
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$600(Lcom/google/android/videochat/CallAudioHelper;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 130
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$300(Lcom/google/android/videochat/CallAudioHelper;)V

    .line 131
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper$2;->onBluetoothDisconnected()V

    .line 133
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$500(Lcom/google/android/videochat/CallAudioHelper;)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/google/android/videochat/CallAudioHelper$2;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V
    invoke-static {v3}, Lcom/google/android/videochat/CallAudioHelper;->access$500(Lcom/google/android/videochat/CallAudioHelper;)V

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
