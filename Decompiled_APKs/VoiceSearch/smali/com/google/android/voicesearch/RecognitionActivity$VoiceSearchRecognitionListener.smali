.class Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceSearchRecognitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/RecognitionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechStartPosition:I

    .line 275
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechEndPosition:I

    .line 290
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showWorking()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->setRecognitionState(I)V

    .line 292
    return-void
.end method

.method public onError(IZ)V
    .locals 1
    .parameter "errorType"
    .parameter "retryable"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->onError(IZ)V
    invoke-static {v0, p1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$200(Lcom/google/android/voicesearch/RecognitionActivity;IZ)V

    .line 297
    return-void
.end method

.method public onEvent(I)V
    .locals 2
    .parameter "eventType"

    .prologue
    .line 306
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onInProgressPartialResults(Ljava/util/List;)V
    .locals 0
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
    .line 344
    .local p1, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    return-void
.end method

.method public onInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 351
    .local p3, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .local p4, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    return-void
.end method

.method public onReadyForSpeech(FF)V
    .locals 2
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->onReadyForSpeech()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$500(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->setRecognitionState(I)V

    .line 320
    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    .line 357
    .local p3, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1
    .parameter "rmsdB"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/RecognitionDialog;->updateAudioLevel(F)V

    .line 302
    return-void
.end method

.method public onVoiceSearchResults(Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;Z)V
    .locals 3
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
    .line 329
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$600(Lcom/google/android/voicesearch/RecognitionActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, audioBytes:[B
    if-eqz p2, :cond_0

    .line 333
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->handleIntentApiResults(Ljava/util/ArrayList;[B)V
    invoke-static {v1, p1, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$700(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;[B)V

    .line 339
    .end local v0           #audioBytes:[B
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->handleVoiceSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v1, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$800(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
