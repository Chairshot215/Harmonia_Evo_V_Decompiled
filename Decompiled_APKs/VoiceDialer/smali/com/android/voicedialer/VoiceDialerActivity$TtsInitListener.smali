.class Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TtsInitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x7f04000a

    const/4 v6, 0x0

    const/4 v5, 0x6

    .line 357
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TtsInitListener:onInit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v2, "VoiceDialerActivity"

    const-string v3, "onInit for tts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz p1, :cond_0

    .line 363
    const-string v2, "VoiceDialerActivity"

    const-string v3, "Could not initialize TextToSpeech."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v3, v4, v7}, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 407
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-nez v2, :cond_1

    .line 371
    const-string v2, "VoiceDialerActivity"

    const-string v3, "null tts"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v3, v4, v7}, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 380
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForTts:Z
    invoke-static {v2, v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1602(Lcom/android/voicedialer/VoiceDialerActivity;Z)Z

    .line 386
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1800(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1702(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 387
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1800(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 388
    .local v0, maxVolume:I
    const/16 v2, 0x12

    const/16 v3, 0x32

    div-int/2addr v3, v0

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sub-int v1, v0, v2

    .line 389
    .local v1, volume:I
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBluetoothVoiceVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v2

    if-le v2, v1, :cond_2

    .line 392
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamVolume(STREAM_BLUETOOTH_SCO) to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1800(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1900(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    const-string v2, "VoiceDialerActivity"

    const-string v3, "the bluetooth connection is not up yet, still waiting."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 403
    :cond_3
    const-string v2, "VoiceDialerActivity"

    const-string v3, "start to post GreetingRunnable()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
