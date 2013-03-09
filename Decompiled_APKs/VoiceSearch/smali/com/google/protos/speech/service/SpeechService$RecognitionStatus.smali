.class public final enum Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
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
    name = "RecognitionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum GRAMMAR_FAILURE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum NO_DATA:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum NO_INPUT_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum NO_MATCH:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum RECOGNITION_ABORTED:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum RECOGNITION_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum SPEECH_TOO_EARLY:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum TOO_MUCH_COMPUTE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field public static final enum TOO_MUCH_SPEECH_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 84
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "NO_INPUT_TIMEOUT"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_INPUT_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 85
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_MATCH:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 86
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "RECOGNITION_TIMEOUT"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->RECOGNITION_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 87
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "GRAMMAR_FAILURE"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->GRAMMAR_FAILURE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 88
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "NO_DATA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_DATA:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 89
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "TOO_MUCH_SPEECH_TIMEOUT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->TOO_MUCH_SPEECH_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 90
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "TOO_MUCH_COMPUTE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->TOO_MUCH_COMPUTE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 91
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "SPEECH_TOO_EARLY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SPEECH_TOO_EARLY:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 92
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    const-string v1, "RECOGNITION_ABORTED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->RECOGNITION_ABORTED:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 81
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_INPUT_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_MATCH:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->RECOGNITION_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->GRAMMAR_FAILURE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_DATA:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->TOO_MUCH_SPEECH_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->TOO_MUCH_COMPUTE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SPEECH_TOO_EARLY:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->RECOGNITION_ABORTED:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 130
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->value:I

    .line 141
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    packed-switch p0, :pswitch_data_0

    .line 121
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 111
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 112
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_INPUT_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 113
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_MATCH:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 114
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->RECOGNITION_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 115
    :pswitch_5
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->GRAMMAR_FAILURE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 116
    :pswitch_6
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_DATA:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 117
    :pswitch_7
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->TOO_MUCH_SPEECH_TIMEOUT:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 118
    :pswitch_8
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->TOO_MUCH_COMPUTE:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 119
    :pswitch_9
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SPEECH_TOO_EARLY:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 120
    :pswitch_a
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->RECOGNITION_ABORTED:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->value:I

    return v0
.end method
