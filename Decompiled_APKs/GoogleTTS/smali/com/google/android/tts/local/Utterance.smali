.class Lcom/google/android/tts/local/Utterance;
.super Ljava/lang/Object;
.source "Utterance.java"


# instance fields
.field final mDurationMs:J

.field final mText:Ljava/lang/String;

.field final mType:I


# direct methods
.method private constructor <init>(ILjava/lang/String;J)V
    .locals 0
    .parameter "type"
    .parameter "text"
    .parameter "durationMs"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/android/tts/local/Utterance;->mType:I

    .line 20
    iput-object p2, p0, Lcom/google/android/tts/local/Utterance;->mText:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/google/android/tts/local/Utterance;->mDurationMs:J

    .line 22
    return-void
.end method

.method static createSilence(J)Lcom/google/android/tts/local/Utterance;
    .locals 3
    .parameter "durationMs"

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/tts/local/Utterance;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/android/tts/local/Utterance;-><init>(ILjava/lang/String;J)V

    return-object v0
.end method

.method static createSpeech(Ljava/lang/String;)Lcom/google/android/tts/local/Utterance;
    .locals 4
    .parameter "text"

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/tts/local/Utterance;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/tts/local/Utterance;-><init>(ILjava/lang/String;J)V

    return-object v0
.end method
