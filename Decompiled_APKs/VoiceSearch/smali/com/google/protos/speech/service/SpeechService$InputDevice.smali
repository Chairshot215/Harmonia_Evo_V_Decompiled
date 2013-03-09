.class public final enum Lcom/google/protos/speech/service/SpeechService$InputDevice;
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
    name = "InputDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$InputDevice;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field public static final enum BLUETOOTH_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field public static final enum EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field public static final enum EMBEDDED_MICROPHONE_HANDFREE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field public static final enum WIRED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$InputDevice;",
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

    .line 310
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;

    const-string v1, "EMBEDDED_MICROPHONE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/speech/service/SpeechService$InputDevice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 311
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;

    const-string v1, "WIRED_MICROPHONE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/speech/service/SpeechService$InputDevice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->WIRED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 312
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;

    const-string v1, "BLUETOOTH_MICROPHONE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/speech/service/SpeechService$InputDevice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->BLUETOOTH_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 313
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;

    const-string v1, "EMBEDDED_MICROPHONE_HANDFREE"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/speech/service/SpeechService$InputDevice;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE_HANDFREE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 308
    new-array v0, v6, [Lcom/google/protos/speech/service/SpeechService$InputDevice;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputDevice;->WIRED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputDevice;->BLUETOOTH_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE_HANDFREE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 339
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputDevice$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$InputDevice$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 349
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->value:I

    .line 350
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$InputDevice;
    .locals 1
    .parameter "value"

    .prologue
    .line 325
    packed-switch p0, :pswitch_data_0

    .line 330
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 326
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    goto :goto_0

    .line 327
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->WIRED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    goto :goto_0

    .line 328
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->BLUETOOTH_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    goto :goto_0

    .line 329
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE_HANDFREE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$InputDevice;
    .locals 1
    .parameter

    .prologue
    .line 308
    const-class v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$InputDevice;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$InputDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$InputDevice;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->value:I

    return v0
.end method
