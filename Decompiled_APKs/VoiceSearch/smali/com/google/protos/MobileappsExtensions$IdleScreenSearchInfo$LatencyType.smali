.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LatencyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum BLUETOOTH_ATTEMPT_FAILED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum BLUETOOTH_ATTEMPT_SUCCEEDED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum GAIA_FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum GAIA_SUCCESS_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum GENIE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum NETWORKING_HTTP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum NETWORKING_HTTP_RESPONSE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum NETWORKING_TCP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum NETWORKING_TCP_RECEIVED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum NETWORKING_TCP_SENT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum PHONE_TOP_SEARCH_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum PHONE_TOP_SEARCH_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum PHONE_TOP_SUGGESTION_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum SEARCH_MY_STUFF_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum SEARCH_MY_STUFF_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum TEXT_SEARCH_HTML_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum TEXT_SEARCH_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum VOICE_IME_SESSION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field public static final enum VOICE_IME_WAITING_FOR_RESULT_AFTER_DONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3993
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "PHONE_TOP_SUGGESTION_CONTACT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3994
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "PHONE_TOP_SUGGESTION_EMAIL"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3995
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "PHONE_TOP_SEARCH_CONTACT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SEARCH_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3996
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "PHONE_TOP_SEARCH_EMAIL"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SEARCH_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3997
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "GENIE_SUGGESTION"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GENIE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3998
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "TEXT_SEARCH_HTML_ONLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->TEXT_SEARCH_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3999
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "TEXT_SEARCH_HTML_AND_IMAGES"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->TEXT_SEARCH_HTML_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4000
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "SEARCH_MY_STUFF_HTML_ONLY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->SEARCH_MY_STUFF_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4001
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "SEARCH_MY_STUFF_AND_IMAGES"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->SEARCH_MY_STUFF_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4002
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "GAIA_SUCCESS_AUTHENTICATION"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GAIA_SUCCESS_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4003
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "GAIA_FAILED_AUTHENTICATION"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GAIA_FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4004
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "NETWORKING_HTTP_CREATE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_HTTP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4005
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "NETWORKING_HTTP_RESPONSE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_HTTP_RESPONSE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4006
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "NETWORKING_TCP_CREATE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4007
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "NETWORKING_TCP_RECEIVED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_RECEIVED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4008
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "NETWORKING_TCP_SENT"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_SENT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4009
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "BLUETOOTH_ATTEMPT_FAILED"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->BLUETOOTH_ATTEMPT_FAILED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4010
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "BLUETOOTH_ATTEMPT_SUCCEEDED"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->BLUETOOTH_ATTEMPT_SUCCEEDED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4011
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "VOICE_IME_SESSION"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_SESSION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4012
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const-string v1, "VOICE_IME_WAITING_FOR_RESULT_AFTER_DONE"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_WAITING_FOR_RESULT_AFTER_DONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 3991
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SEARCH_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SEARCH_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GENIE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->TEXT_SEARCH_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->TEXT_SEARCH_HTML_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->SEARCH_MY_STUFF_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->SEARCH_MY_STUFF_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GAIA_SUCCESS_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GAIA_FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_HTTP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_HTTP_RESPONSE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_RECEIVED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_SENT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->BLUETOOTH_ATTEMPT_FAILED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->BLUETOOTH_ATTEMPT_SUCCEEDED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_SESSION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_WAITING_FOR_RESULT_AFTER_DONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4070
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4079
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4080
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->value:I

    .line 4081
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1
    .parameter "value"

    .prologue
    .line 4040
    packed-switch p0, :pswitch_data_0

    .line 4061
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4041
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4042
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4043
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SEARCH_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4044
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SEARCH_EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4045
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GENIE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4046
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->TEXT_SEARCH_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4047
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->TEXT_SEARCH_HTML_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4048
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->SEARCH_MY_STUFF_HTML_ONLY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4049
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->SEARCH_MY_STUFF_AND_IMAGES:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4050
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GAIA_SUCCESS_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4051
    :pswitch_a
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->GAIA_FAILED_AUTHENTICATION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4052
    :pswitch_b
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_HTTP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4053
    :pswitch_c
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_HTTP_RESPONSE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4054
    :pswitch_d
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_CREATE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4055
    :pswitch_e
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_RECEIVED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4056
    :pswitch_f
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->NETWORKING_TCP_SENT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4057
    :pswitch_10
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->BLUETOOTH_ATTEMPT_FAILED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4058
    :pswitch_11
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->BLUETOOTH_ATTEMPT_SUCCEEDED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4059
    :pswitch_12
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_SESSION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4060
    :pswitch_13
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_WAITING_FOR_RESULT_AFTER_DONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto :goto_0

    .line 4040
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1
    .parameter

    .prologue
    .line 3991
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1

    .prologue
    .line 3991
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4037
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->value:I

    return v0
.end method
