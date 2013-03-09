.class Lcom/android/voicedialer/VoiceDialerActivity$2;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity;->askToTryAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v2, 0x7f050001

    const/4 v3, 0x0

    .line 570
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$300(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 576
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===SPEAKING_TRY_AGAIN==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x3

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$702(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 584
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "utteranceId"

    const-string v2, "try_again"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v0, "VoiceDialerActivity"

    const-string v1, "TTS, speak no results~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 592
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1402(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 593
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1400(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v1, 0x1a

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$600(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_1
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$800(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    goto :goto_1
.end method
