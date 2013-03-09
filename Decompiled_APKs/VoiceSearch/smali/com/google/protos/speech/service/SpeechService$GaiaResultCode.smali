.class public final enum Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
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
    name = "GaiaResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field public static final enum AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field public static final enum GAIA_ERROR:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field public static final enum GAIA_TOKEN_EXPIRED:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 445
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    const-string v1, "AUTHENTICATION_OK"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 446
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    const-string v1, "GAIA_TOKEN_EXPIRED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_TOKEN_EXPIRED:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 447
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    const-string v1, "GAIA_ERROR"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_ERROR:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 443
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_TOKEN_EXPIRED:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_ERROR:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 471
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 480
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 481
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->value:I

    .line 482
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 458
    packed-switch p0, :pswitch_data_0

    .line 462
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 459
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    goto :goto_0

    .line 460
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_TOKEN_EXPIRED:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    goto :goto_0

    .line 461
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_ERROR:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    .locals 1
    .parameter

    .prologue
    .line 443
    const-class v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->value:I

    return v0
.end method
