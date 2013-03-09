.class Lcom/google/android/videochat/CallAudioHelper$3;
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
    .line 157
    iput-object p1, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 167
    .local v1, state:I
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiredHeadsetReceiver.onReceive: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isInitialStickyBroadcast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/videochat/CallAudioHelper$3;->isInitialStickyBroadcast()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/videochat/CallAudioHelper;->access$100(Lcom/google/android/videochat/CallAudioHelper;Ljava/lang/String;)V

    .line 169
    packed-switch v1, :pswitch_data_0

    .line 191
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v1       #state:I
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->hasEarpiece()Z
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$800(Lcom/google/android/videochat/CallAudioHelper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$200(Lcom/google/android/videochat/CallAudioHelper;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v2

    sget-object v3, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-ne v2, v3, :cond_2

    .line 178
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/CallAudioHelper;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$500(Lcom/google/android/videochat/CallAudioHelper;)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #getter for: Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/android/videochat/CallAudioHelper;->access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper$3;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/CallAudioHelper;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
