.class public final enum Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
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
    name = "DeprecatedPersonalizationSettingCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

.field public static final enum INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

.field public static final enum SET_PERSONALIZATION_OPT_IN:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

.field public static final enum SET_PERSONALIZATION_OPT_OUT:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;",
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

    .line 489
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    const-string v1, "INQUIRE_PERSONALIZATION"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 490
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    const-string v1, "SET_PERSONALIZATION_OPT_OUT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->SET_PERSONALIZATION_OPT_OUT:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 491
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    const-string v1, "SET_PERSONALIZATION_OPT_IN"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->SET_PERSONALIZATION_OPT_IN:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 487
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->SET_PERSONALIZATION_OPT_OUT:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->SET_PERSONALIZATION_OPT_IN:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 515
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 524
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 525
    iput p4, p0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->value:I

    .line 526
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 502
    packed-switch p0, :pswitch_data_0

    .line 506
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 503
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    goto :goto_0

    .line 504
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->SET_PERSONALIZATION_OPT_OUT:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    goto :goto_0

    .line 505
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->SET_PERSONALIZATION_OPT_IN:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    .locals 1
    .parameter

    .prologue
    .line 487
    const-class v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->$VALUES:[Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->value:I

    return v0
.end method
