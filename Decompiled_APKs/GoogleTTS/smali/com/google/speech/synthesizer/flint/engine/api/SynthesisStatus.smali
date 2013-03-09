.class public final enum Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
.super Ljava/lang/Enum;
.source "SynthesisStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

.field public static final enum STATUS_COMPLETED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

.field public static final enum STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

.field public static final enum STATUS_INITIAL:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

.field public static final enum STATUS_IN_PROGRESS:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    const-string v1, "STATUS_INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_INITIAL:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    .line 9
    new-instance v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    const-string v1, "STATUS_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_IN_PROGRESS:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    .line 10
    new-instance v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    const-string v1, "STATUS_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    .line 11
    new-instance v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    const-string v1, "STATUS_COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_COMPLETED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    sget-object v1, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_INITIAL:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_IN_PROGRESS:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_COMPLETED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->$VALUES:[Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->$VALUES:[Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-virtual {v0}, [Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    return-object v0
.end method
