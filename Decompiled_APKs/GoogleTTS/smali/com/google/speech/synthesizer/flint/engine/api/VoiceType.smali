.class public final Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;
.super Ljava/lang/Object;
.source "VoiceType.java"


# instance fields
.field private final cur_val_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;->cur_val_:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;

    if-nez v1, :cond_1

    .line 47
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget v1, p0, Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;->cur_val_:I

    check-cast p1, Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;

    .end local p1
    invoke-virtual {p1}, Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;->cur_val_:I

    return v0
.end method
