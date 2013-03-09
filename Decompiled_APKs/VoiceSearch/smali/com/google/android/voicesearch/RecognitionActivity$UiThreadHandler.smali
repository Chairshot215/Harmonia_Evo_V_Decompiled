.class final Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;
.super Landroid/os/Handler;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$900(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 369
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V
    invoke-static {v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 370
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionDialog;->showListening()V

    .line 371
    const-string v1, "RecognitionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start-up latency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->latency()J
    invoke-static {v3}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1100(Lcom/google/android/voicesearch/RecognitionActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v1, "SPEAK_NOW"

    invoke-static {v1}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionDialog;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 383
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 385
    .local v0, buf:Ljava/nio/ShortBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 387
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V
    invoke-static {v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 388
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionDialog;->showWorking()V

    .line 390
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget v2, v2, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget v3, v3, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/voicesearch/RecognitionDialog;->showWave(Ljava/nio/ShortBuffer;II)V

    .line 393
    const-string v1, "WORKING"

    invoke-static {v1}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v0           #buf:Ljava/nio/ShortBuffer;
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V
    invoke-static {v3}, Lcom/google/android/voicesearch/RecognitionActivity;->access$900(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 400
    iget v3, p1, Landroid/os/Message;->arg1:I

    const v4, 0x7f0a0703

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->arg1:I

    const v4, 0x7f0a0708

    if-ne v3, v4, :cond_3

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    invoke-static {v3}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 405
    :goto_1
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V
    invoke-static {v3, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 406
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v3}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_4

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->showError(IZ)V

    .line 407
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/Vibrator;->vibrate(Landroid/view/View;)V

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/TestPlatformLog;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_3
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    invoke-static {v3}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v3

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 406
    goto :goto_2

    .line 419
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showResults()V
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 420
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 421
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/Vibrator;->vibrate(Landroid/view/View;)V

    .line 425
    :cond_5
    const-string v1, "VOICE_SEARCH_COMPLETE"

    invoke-static {v1}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    :pswitch_4
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V
    invoke-static {v2, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1500(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    goto/16 :goto_0

    .line 436
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    const v2, 0x7f0a0719

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    goto/16 :goto_0

    .line 440
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showProgressSpinner()V
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1600(Lcom/google/android/voicesearch/RecognitionActivity;)V

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
