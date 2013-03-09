.class public final enum Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;
.super Ljava/lang/Enum;
.source "BufferedSpeexDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/network/BufferedSpeexDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SamplingRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

.field public static final enum NB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

.field public static final enum UWB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

.field public static final enum WB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;


# instance fields
.field private final mRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    const-string v1, "NB"

    const/16 v2, 0x1f40

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->NB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    .line 35
    new-instance v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    const-string v1, "WB"

    const/16 v2, 0x3e80

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->WB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    .line 37
    new-instance v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    const-string v1, "UWB"

    const/16 v2, 0x7d00

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->UWB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    sget-object v1, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->NB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->WB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->UWB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->$VALUES:[Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "rate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->mRate:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    return-object v0
.end method

.method public static values()[Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->$VALUES:[Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    invoke-virtual {v0}, [Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    return-object v0
.end method


# virtual methods
.method public getRate()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->mRate:I

    return v0
.end method
