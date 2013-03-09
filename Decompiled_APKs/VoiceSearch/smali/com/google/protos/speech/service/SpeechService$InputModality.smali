.class public final enum Lcom/google/protos/speech/service/SpeechService$InputModality;
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
    name = "InputModality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$InputModality;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$InputModality;

.field public static final enum JUST_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

.field public static final enum PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

.field public static final enum PUSH_AND_HOLD_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

.field public static final enum PUSH_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$InputModality;",
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

    .line 263
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputModality;

    const-string v1, "PHONE_CALL"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/speech/service/SpeechService$InputModality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 264
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputModality;

    const-string v1, "PUSH_TO_TALK"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/speech/service/SpeechService$InputModality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 265
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputModality;

    const-string v1, "PUSH_AND_HOLD_TO_TALK"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/speech/service/SpeechService$InputModality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_AND_HOLD_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 266
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputModality;

    const-string v1, "JUST_TALK"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/speech/service/SpeechService$InputModality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->JUST_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 261
    new-array v0, v6, [Lcom/google/protos/speech/service/SpeechService$InputModality;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_AND_HOLD_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputModality;->JUST_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 292
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$InputModality$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$InputModality$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 302
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$InputModality;->value:I

    .line 303
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$InputModality;
    .locals 1
    .parameter "value"

    .prologue
    .line 278
    packed-switch p0, :pswitch_data_0

    .line 283
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    goto :goto_0

    .line 280
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    goto :goto_0

    .line 281
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_AND_HOLD_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    goto :goto_0

    .line 282
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->JUST_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$InputModality;
    .locals 1
    .parameter

    .prologue
    .line 261
    const-class v0, Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$InputModality;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$InputModality;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$InputModality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$InputModality;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$InputModality;->value:I

    return v0
.end method
