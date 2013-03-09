.class public final Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
.super Ljava/lang/Object;
.source "BufferedSynthesisHandle.java"


# instance fields
.field private hOutput:J

.field private hState:J

.field private hSynthesizer:J

.field private id:J

.field private status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->initialize(J)V

    .line 82
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "hSynthesizer"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->initialize(J)V

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 28
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hOutput:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 29
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hSynthesizer:J

    iget-wide v2, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hOutput:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/speech/synthesizer/flint/engine/api/CommonApi;->deleteSynthesisOutput(JJ)V

    .line 30
    iput-wide v4, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hOutput:J

    .line 32
    :cond_0
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hState:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 33
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hState:J

    invoke-static {v0, v1}, Lcom/google/speech/synthesizer/flint/engine/api/CommonApi;->deleteSynthesisState(J)V

    .line 34
    iput-wide v4, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hState:J

    .line 36
    :cond_1
    iput-wide v4, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hSynthesizer:J

    .line 37
    return-void
.end method

.method public getOutputHandle()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hOutput:J

    return-wide v0
.end method

.method public getStateHandle()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hState:J

    return-wide v0
.end method

.method protected initialize(J)V
    .locals 3
    .parameter "synthHandle"

    .prologue
    const-wide/16 v1, 0x0

    .line 90
    iput-wide p1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hSynthesizer:J

    .line 91
    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hOutput:J

    .line 92
    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hState:J

    .line 93
    sget-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_INITIAL:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    iput-object v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    .line 94
    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->id:J

    .line 95
    return-void
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    sget-object v1, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_IN_PROGRESS:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(J)V
    .locals 0
    .parameter "newId"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->id:J

    .line 65
    return-void
.end method

.method public setOutputHandle(J)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hOutput:J

    .line 44
    return-void
.end method

.method public setStateHandle(J)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->hState:J

    .line 51
    return-void
.end method

.method public setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    .line 58
    return-void
.end method
