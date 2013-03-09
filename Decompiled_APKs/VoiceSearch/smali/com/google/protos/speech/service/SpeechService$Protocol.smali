.class public final enum Lcom/google/protos/speech/service/SpeechService$Protocol;
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
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Protocol;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$Protocol;

.field public static final enum HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field public static final enum STUBBY:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field public static final enum TCP_DIRECT:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field public static final enum TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Protocol;",
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

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 36
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Protocol;

    const-string v1, "TCP_STUN"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/speech/service/SpeechService$Protocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 37
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Protocol;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/speech/service/SpeechService$Protocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 38
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Protocol;

    const-string v1, "STUBBY"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/speech/service/SpeechService$Protocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->STUBBY:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 39
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Protocol;

    const-string v1, "TCP_DIRECT"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/speech/service/SpeechService$Protocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_DIRECT:Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 34
    new-array v0, v6, [Lcom/google/protos/speech/service/SpeechService$Protocol;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Protocol;->STUBBY:Lcom/google/protos/speech/service/SpeechService$Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_DIRECT:Lcom/google/protos/speech/service/SpeechService$Protocol;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$Protocol;

    .line 65
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Protocol$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Protocol$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$Protocol;->value:I

    .line 76
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$Protocol;
    .locals 1
    .parameter "value"

    .prologue
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->STUBBY:Lcom/google/protos/speech/service/SpeechService$Protocol;

    goto :goto_0

    .line 55
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_DIRECT:Lcom/google/protos/speech/service/SpeechService$Protocol;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$Protocol;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$Protocol;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Protocol;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$Protocol;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Protocol;->value:I

    return v0
.end method
