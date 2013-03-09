.class Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;
.super Ljava/lang/Object;
.source "GoogleRecognitionService.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/GoogleRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecognitionCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/RecognitionService$Callback;


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    .line 107
    return-void
.end method

.method private addPartialResult(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 6
    .parameter "bundle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    if-nez p2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [D

    .line 207
    .local v0, confidences:[D
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 209
    .local v3, texts:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 210
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    .line 211
    .local v2, part:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    invoke-virtual {v2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getStabilityConfidence()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 212
    invoke-virtual {v2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscript()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v2           #part:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    :cond_1
    const-string v4, "com.google.android.voicesearch.UNSUPPORTED_PARTIAL_RESULTS_CONFIDENCE"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 215
    const-string v4, "com.google.android.voicesearch.UNSUPPORTED_PARTIAL_RESULTS"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v1}, Landroid/speech/RecognitionService$Callback;->beginningOfSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "GoogleRecognitionService"

    const-string v2, "beginningOfSpeech callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v1, p1}, Landroid/speech/RecognitionService$Callback;->bufferReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "GoogleRecognitionService"

    const-string v2, "bufferReceived callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v1}, Landroid/speech/RecognitionService$Callback;->endOfSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "GoogleRecognitionService"

    const-string v2, "endOfSpeech callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onError(IZ)V
    .locals 3
    .parameter "error"
    .parameter "retryable"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v1, p1}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "GoogleRecognitionService"

    const-string v2, "error callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 167
    return-void
.end method

.method public onInProgressPartialResults(Ljava/util/List;)V
    .locals 4
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
    .line 171
    .local p1, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    iget-object v2, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v2, :cond_0

    .line 174
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v0, p1}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->addPartialResult(Landroid/os/Bundle;Ljava/util/List;)V

    .line 176
    iget-object v2, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v2, v0}, Landroid/speech/RecognitionService$Callback;->partialResults(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "GoogleRecognitionService"

    const-string v3, "partialResults callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
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
    .line 186
    .local p3, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .local p4, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    iget-object v3, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v3, :cond_0

    .line 189
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v2, textResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v3, "results_recognition"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    invoke-direct {p0, v0, p4}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->addPartialResult(Landroid/os/Bundle;Ljava/util/List;)V

    .line 194
    iget-object v3, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v3, v0}, Landroid/speech/RecognitionService$Callback;->partialResults(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #textResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "GoogleRecognitionService"

    const-string v4, "partialResults callback failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReadyForSpeech(FF)V
    .locals 4
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v2, :cond_0

    .line 228
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v1, params:Landroid/os/Bundle;
    const-string v2, "NoiseLevel"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 230
    const-string v2, "SignalNoiseRatio"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 231
    iget-object v2, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v2, v1}, Landroid/speech/RecognitionService$Callback;->readyForSpeech(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1           #params:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "GoogleRecognitionService"

    const-string v3, "readyForSpeech callback failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 222
    .local p3, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 3
    .parameter "rmsdB"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v1, p1}, Landroid/speech/RecognitionService$Callback;->rmsChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "GoogleRecognitionService"

    const-string v2, "rmsChanged callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onVoiceSearchResults(Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;Z)V
    .locals 9
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
    .line 241
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    iget-object v7, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v7, :cond_3

    .line 243
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 245
    .local v4, numResults:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v6, textResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v1, v4, [F

    .line 247
    .local v1, confidenceScores:[F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 248
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 249
    .local v5, r:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/VoiceAction;->getConfidence()F

    move-result v7

    aput v7, v1, v3

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v5           #r:Lcom/google/android/voicesearch/actions/VoiceAction;
    :cond_0
    const-string v7, "results_recognition"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    const-string v7, "confidence_scores"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 254
    if-eqz p3, :cond_1

    .line 255
    const-string v7, "fullRecognitionResults"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    :cond_1
    if-eqz p2, :cond_2

    .line 259
    const-string v7, "android.speech.extras.RAW_AUDIO"

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 263
    :cond_2
    iget-object v7, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v7, v0}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #confidenceScores:[F
    .end local v3           #i:I
    .end local v4           #numResults:I
    .end local v6           #textResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "GoogleRecognitionService"

    const-string v8, "results callback failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
