.class public final enum Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
.super Ljava/lang/Enum;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum FOCUS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum GAIA_AUTHENTICATION_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum GAIA_AUTHENTICATION_TOKEN_EXPIRED:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum GRAMMAR_COMPILE_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum INVALID_REQUEST:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum KANSAS_INVALID_ID:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum KANSAS_NO_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum KANSAS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum UNKNOWN_APPLICATION_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field public static final enum UNSUPPORTED_LANGUAGE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 24
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "KANSAS_INVALID_ID"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_INVALID_ID:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 25
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "KANSAS_SERVER_EXCEPTION"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 26
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "GAIA_AUTHENTICATION_ERROR"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GAIA_AUTHENTICATION_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 27
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "FOCUS_SERVER_EXCEPTION"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->FOCUS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 28
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "KANSAS_NO_DATA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_NO_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 29
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "GRAMMAR_COMPILE_EXCEPTION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GRAMMAR_COMPILE_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 30
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "UNKNOWN_APPLICATION_DATA"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_APPLICATION_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 31
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "GAIA_AUTHENTICATION_TOKEN_EXPIRED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GAIA_AUTHENTICATION_TOKEN_EXPIRED:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 32
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "UNSUPPORTED_LANGUAGE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNSUPPORTED_LANGUAGE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 33
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    const-string v1, "INVALID_REQUEST"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->INVALID_REQUEST:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_INVALID_ID:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GAIA_AUTHENTICATION_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->FOCUS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_NO_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GRAMMAR_COMPILE_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_APPLICATION_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GAIA_AUTHENTICATION_TOKEN_EXPIRED:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNSUPPORTED_LANGUAGE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->INVALID_REQUEST:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 73
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->value:I

    .line 84
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_INVALID_ID:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GAIA_AUTHENTICATION_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->FOCUS_SERVER_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->KANSAS_NO_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 59
    :pswitch_6
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GRAMMAR_COMPILE_EXCEPTION:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 60
    :pswitch_7
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_APPLICATION_DATA:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 61
    :pswitch_8
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->GAIA_AUTHENTICATION_TOKEN_EXPIRED:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 62
    :pswitch_9
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNSUPPORTED_LANGUAGE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 63
    :pswitch_a
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->INVALID_REQUEST:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-virtual {v0}, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->value:I

    return v0
.end method
