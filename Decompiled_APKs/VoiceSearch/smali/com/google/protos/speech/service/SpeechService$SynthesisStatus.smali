.class public final enum Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
.super Ljava/lang/Enum;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SynthesisStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

.field public static final enum INVALID_SSML:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

.field public static final enum INVALID_SYNTHESIS_REQUEST:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

.field public static final enum SYNTHESIS_FAILED:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

.field public static final enum SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

.field public static final enum SYNTHESIZER_TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    const-string v1, "SYNTHESIS_SUCCESS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 534
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    const-string v1, "INVALID_SYNTHESIS_REQUEST"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->INVALID_SYNTHESIS_REQUEST:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 535
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    const-string v1, "INVALID_SSML"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->INVALID_SSML:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 536
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    const-string v1, "SYNTHESIS_FAILED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_FAILED:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 537
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    const-string v1, "SYNTHESIZER_TOO_BUSY"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIZER_TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 531
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->INVALID_SYNTHESIS_REQUEST:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->INVALID_SSML:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_FAILED:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIZER_TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 565
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 575
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->value:I

    .line 576
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 550
    packed-switch p0, :pswitch_data_0

    .line 556
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 551
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    goto :goto_0

    .line 552
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->INVALID_SYNTHESIS_REQUEST:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    goto :goto_0

    .line 553
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->INVALID_SSML:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    goto :goto_0

    .line 554
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_FAILED:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    goto :goto_0

    .line 555
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIZER_TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    .locals 1
    .parameter

    .prologue
    .line 531
    const-class v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->value:I

    return v0
.end method
