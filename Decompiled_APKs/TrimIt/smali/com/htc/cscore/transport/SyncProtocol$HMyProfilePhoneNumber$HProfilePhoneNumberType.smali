.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HProfilePhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;


# instance fields
.field private final index:I

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

    .line 21119
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneMobile"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21120
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneHome"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21121
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneWork"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21122
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneWorkFax"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21123
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneHomeFax"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21124
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhonePager"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21125
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneCar"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21126
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneCompanyMain"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21127
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneMMS"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21128
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneRadio"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21129
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneAssistant"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21130
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneOther"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21131
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneCustom"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21132
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "plurk"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21133
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "facebook"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21134
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "twitter"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21117
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21167
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 21187
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 21206
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 21207
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
    .line 21200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21201
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->index:I

    .line 21202
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->value:I

    .line 21203
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 21184
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21164
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 1
    .parameter "value"

    .prologue
    .line 21141
    packed-switch p0, :pswitch_data_0

    .line 21158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 21142
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21143
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21144
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21145
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21146
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21147
    :pswitch_5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21148
    :pswitch_6
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21149
    :pswitch_7
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21150
    :pswitch_8
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21151
    :pswitch_9
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21152
    :pswitch_a
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21153
    :pswitch_b
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21154
    :pswitch_c
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21155
    :pswitch_d
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21156
    :pswitch_e
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21157
    :pswitch_f
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 21141
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
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 21192
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 21193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21196
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 1
    .parameter "name"

    .prologue
    .line 21117
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 1

    .prologue
    .line 21117
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 21180
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 21138
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 21176
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
