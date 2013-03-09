.class public final enum Lcom/google/protos/speech/service/SpeechService$Status;
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
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum CANCELED:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum INVALID_REQUEST:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum IN_PROGRESS:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum OK:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum POSTPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum PREPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum SERVER_FAILURE:Lcom/google/protos/speech/service/SpeechService$Status;

.field public static final enum TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Status;",
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
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 148
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 149
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v8, v8, v6}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->INVALID_REQUEST:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 150
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "SERVER_FAILURE"

    invoke-direct {v0, v1, v9, v9, v7}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->SERVER_FAILURE:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 151
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "CANCELED"

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->CANCELED:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 152
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "IN_PROGRESS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->IN_PROGRESS:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 153
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "TOO_BUSY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 154
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "PREPROCESSOR_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->PREPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 155
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status;

    const-string v1, "POSTPROCESSOR_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/SpeechService$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->POSTPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 146
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/protos/speech/service/SpeechService$Status;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Status;->INVALID_REQUEST:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Status;->SERVER_FAILURE:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x3

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Status;->CANCELED:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Status;->IN_PROGRESS:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Status;->TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Status;->PREPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Status;->POSTPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$Status;

    .line 189
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Status$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Status$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$Status;->value:I

    .line 200
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$Status;
    .locals 1
    .parameter "value"

    .prologue
    .line 171
    packed-switch p0, :pswitch_data_0

    .line 180
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 172
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 173
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->INVALID_REQUEST:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 174
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->SERVER_FAILURE:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 175
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->CANCELED:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 176
    :pswitch_5
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->IN_PROGRESS:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 177
    :pswitch_6
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->TOO_BUSY:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 178
    :pswitch_7
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->PREPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 179
    :pswitch_8
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->POSTPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$Status;
    .locals 1
    .parameter

    .prologue
    .line 146
    const-class v0, Lcom/google/protos/speech/service/SpeechService$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$Status;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$Status;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Status;->value:I

    return v0
.end method
