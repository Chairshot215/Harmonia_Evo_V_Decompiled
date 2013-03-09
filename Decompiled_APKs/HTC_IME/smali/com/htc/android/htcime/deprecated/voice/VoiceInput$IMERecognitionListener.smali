.class Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/deprecated/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IMERecognitionListener"
.end annotation


# instance fields
.field private mEndpointed:Z

.field mSpeechStart:I

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V
    .locals 1
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mEndpointed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;-><init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mSpeechStart:I

    .line 591
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buf"

    .prologue
    .line 602
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->setTextMarginLayout(II)V

    .line 608
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mSpeechStart:I

    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V

    .line 609
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter "errorType"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    const/4 v1, 0x3

    #setter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$202(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;I)I

    .line 614
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-boolean v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->mEndpointed:Z

    #calls: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->onError(IZ)V
    invoke-static {v0, p1, v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$300(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;IZ)V

    .line 615
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 647
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .parameter "partialResults"

    .prologue
    .line 643
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3
    .parameter "noiseParams"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->setTextMarginLayout(II)V

    .line 585
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showListening()V

    .line 586
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 6
    .parameter "resultsBundle"

    .prologue
    const/4 v5, 0x0

    .line 620
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 622
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #setter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I
    invoke-static {v1, v5}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$202(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;I)I

    .line 628
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #calls: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->closeDialog()V
    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$400(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V

    .line 629
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->finish()V

    .line 632
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v1, v1, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 633
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v2, v1, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 634
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v1, v1, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v2, v2, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v3, v3, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 635
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$500(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v2, v2, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    iget-object v3, v3, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 637
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$602(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;Z)Z

    .line 638
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #setter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognizing:Z
    invoke-static {v1, v5}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$702(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;Z)Z

    .line 639
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1
    .parameter "rmsdB"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;->this$0:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    #getter for: Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    invoke-static {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->updateVoiceMeter(F)V

    .line 595
    return-void
.end method
