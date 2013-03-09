.class Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GreetingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 338
    const-string v0, "VoiceDialerActivity"

    const-string v1, "===GreetingRunnable()\'s run==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v0, "VoiceDialerActivity"

    const-string v1, "TTS, speak speak_now~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===SPEAKING_GREETING==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0, v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$702(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 342
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "utteranceId"

    const-string v2, "speak_now"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 348
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1402(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 349
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1400(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    return-void
.end method
