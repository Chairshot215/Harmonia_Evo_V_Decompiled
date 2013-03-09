.class public Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;
.super Ljava/lang/Object;
.source "VoiceInputMethodService.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/VoiceInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DictationListener"
.end annotation


# instance fields
.field private mInvalid:Z

.field private mResultReceived:Z

.field final synthetic this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 618
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mInvalid:Z

    .line 620
    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mResultReceived:Z

    .line 621
    return-void
.end method


# virtual methods
.method public hasResultReceived()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mResultReceived:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mInvalid:Z

    .line 628
    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 731
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->scheduleWorking()V

    .line 726
    return-void
.end method

.method public onError(IZ)V
    .locals 2
    .parameter "errorCode"
    .parameter "retryable"

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 704
    const-string v0, "VoiceInputMethodService"

    const-string v1, "onError - obsolete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->invalidate()V

    .line 710
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 693
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_0
    return-void

    .line 695
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->scheduleDisplayListening()V

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onInProgressPartialResults(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 657
    const-string v0, "VoiceInputMethodService"

    const-string v1, "#onInProgressPartialResults - obsolete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    .line 661
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mResultReceived:Z

    .line 662
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter "recognitionId"
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p3, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .local p4, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "VoiceInputMethodService"

    const-string v1, "onInProgressResults - obsolete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mResultReceived:Z

    .line 677
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onReadyForSpeech(FF)V
    .locals 0
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 651
    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "recognitionId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p3, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->mResultReceived:Z

    .line 686
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 689
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->updateRmsdB(F)V

    .line 640
    return-void
.end method

.method public onVoiceSearchResults(Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;Z)V
    .locals 2
    .parameter
    .parameter "rawAudio"
    .parameter "addFullRecognitionResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Ljava/io/ByteArrayOutputStream;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No voice search results during dictation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
