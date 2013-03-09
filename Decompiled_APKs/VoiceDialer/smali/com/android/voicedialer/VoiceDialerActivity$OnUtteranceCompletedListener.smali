.class Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnUtteranceCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 4
    .parameter "utteranceId"

    .prologue
    .line 414
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1400(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1402(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 419
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method
