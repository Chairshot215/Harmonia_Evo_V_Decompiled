.class public Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;
.super Ljava/lang/Object;
.source "SentenceControls.java"


# instance fields
.field private pitchAddFactor:F

.field private pitchMultFactor:F

.field private speakingRate:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->speakingRate:F

    .line 15
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->pitchMultFactor:F

    .line 16
    iput v1, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->pitchAddFactor:F

    .line 17
    return-void
.end method


# virtual methods
.method public getPitchAddFactor()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->pitchAddFactor:F

    return v0
.end method

.method public getPitchMultFactor()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->pitchMultFactor:F

    return v0
.end method

.method public getSpeakingRate()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->speakingRate:F

    return v0
.end method

.method public setPitchAddFactor(F)V
    .locals 0
    .parameter "newFactor"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->pitchAddFactor:F

    .line 65
    return-void
.end method

.method public setPitchMultFactor(F)V
    .locals 0
    .parameter "newFactor"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->pitchMultFactor:F

    .line 49
    return-void
.end method

.method public setSpeakingRate(F)V
    .locals 0
    .parameter "newRate"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->speakingRate:F

    .line 33
    return-void
.end method
