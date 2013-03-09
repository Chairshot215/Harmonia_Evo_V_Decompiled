.class public final enum Lcom/google/protos/speech/service/SpeechService$Encoding;
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
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Encoding;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum AMR_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum FLAC:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum LINEAR_16:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum MP3:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum SPEEX_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum SPEEX_WB:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field public static final enum ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Encoding;",
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
    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 207
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "ULAW"

    invoke-direct {v0, v1, v9, v9, v5}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 208
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "LINEAR_16"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->LINEAR_16:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 209
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "AMR_NB"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->AMR_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 210
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "SPEEX_NB"

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->SPEEX_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 211
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "FLAC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->FLAC:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 212
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "MP3"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->MP3:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 213
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    const-string v1, "SPEEX_WB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/protos/speech/service/SpeechService$Encoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->SPEEX_WB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 205
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/protos/speech/service/SpeechService$Encoding;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Encoding;->LINEAR_16:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Encoding;->AMR_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Encoding;->SPEEX_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Encoding;->FLAC:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Encoding;->MP3:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Encoding;->SPEEX_WB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 245
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Encoding$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Encoding$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 255
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$Encoding;->value:I

    .line 256
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    packed-switch p0, :pswitch_data_0

    .line 236
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 229
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 230
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->LINEAR_16:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 231
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->AMR_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 232
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->SPEEX_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 233
    :pswitch_5
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->FLAC:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 234
    :pswitch_6
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->MP3:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 235
    :pswitch_7
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->SPEEX_WB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1
    .parameter

    .prologue
    .line 205
    const-class v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Encoding;->value:I

    return v0
.end method
