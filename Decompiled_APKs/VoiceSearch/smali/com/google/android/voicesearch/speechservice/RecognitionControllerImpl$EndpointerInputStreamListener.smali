.class Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;
.super Ljava/lang/Object;
.source "RecognitionControllerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndpointerInputStreamListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechBeginTimeMillis:J
    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$602(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;J)J

    .line 1117
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$800(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mExtraTotalResultTimeoutMillis:I
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->extend(J)V

    .line 1119
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onBeginningOfSpeech()V

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1002(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Z)Z

    .line 1124
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1100(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onBufferReceived([B)V

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processAudioEndpointed()V
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V

    .line 1139
    return-void
.end method

.method public onReadyForSpeech(FF)V
    .locals 3
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 1143
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadyForSpeech, noise level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", snr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #setter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F
    invoke-static {v0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1302(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F

    .line 1145
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #setter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F
    invoke-static {v0, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1402(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F

    .line 1146
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onReadyForSpeech(FF)V

    .line 1150
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 2
    .parameter "rmsdB"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1100(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onRmsChanged(F)V

    goto :goto_0
.end method
