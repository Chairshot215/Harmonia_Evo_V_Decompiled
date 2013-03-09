.class final Lcom/google/protos/speech/service/SpeechService$RecognitionStatus$1;
.super Ljava/lang/Object;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus$1;->findValueByNumber(I)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1
    .parameter "number"

    .prologue
    .line 133
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v0

    return-object v0
.end method
