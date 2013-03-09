.class public final enum Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
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
    name = "InputEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$InputEnvironment;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

.field public static final enum DESKTOP:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

.field public static final enum MOBILE_CAR_DOCK:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

.field public static final enum MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$InputEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 357
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    const-string v1, "MOBILE_UNDOCKED"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 358
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    const-string v1, "MOBILE_CAR_DOCK"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_CAR_DOCK:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 359
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    const-string v1, "DESKTOP"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->DESKTOP:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 355
    new-array v0, v5, [Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_CAR_DOCK:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->DESKTOP:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 383
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 393
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->value:I

    .line 394
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    .locals 1
    .parameter "value"

    .prologue
    .line 370
    packed-switch p0, :pswitch_data_0

    .line 374
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 371
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    goto :goto_0

    .line 372
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_CAR_DOCK:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    goto :goto_0

    .line 373
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->DESKTOP:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    .locals 1
    .parameter

    .prologue
    .line 355
    const-class v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->value:I

    return v0
.end method
