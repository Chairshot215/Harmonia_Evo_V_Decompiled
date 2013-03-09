.class public final enum Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
.super Ljava/lang/Enum;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum ADS_CRITERIA_ID:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum CALENDAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum CARRIER_COUNTRY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum CIRCULARS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum DEFAULT_LOCATION_OVERRIDE_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum DEVICE_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum GMAIL_THEME:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum GOOGLE_HOST_DOMAIN:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum GWS_MOBILE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum IGOOGLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum IP_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LEGACY_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LEGACY_MOBILE_FRONTEND_GLL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LEGACY_MOBILE_FRONTEND_NEAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LEGACY_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LEGACY_PARTNER_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LEGACY_TOOLBAR_HEADER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LOCAL_UNIVERSAL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum LOGGED_IN_USER_SPECIFIED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum MAPS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum MOBILE_APP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum MOBILE_FE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum MOBILE_SELECTED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum PARTNER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum PREF_L_FIELD_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum PRODUCT_SEARCH_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum QUERY_HISTORY_INFERRED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum RQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum SEARCH_TOOLBELT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum SHOWTIME_ONEBOX:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum SMS_SEARCH:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum SQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum WEB_SEARCH_PREFERENCES_PAGE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum WEB_SEARCH_RESULTS_PAGE_SHARED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field public static final enum WILDCARD_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;",
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

    .line 75
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "UNKNOWN_PRODUCER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 76
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LOGGED_IN_USER_SPECIFIED"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LOGGED_IN_USER_SPECIFIED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 77
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "PREF_L_FIELD_ADDRESS"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PREF_L_FIELD_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 78
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "IP_ADDRESS"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->IP_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 79
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "GOOGLE_HOST_DOMAIN"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GOOGLE_HOST_DOMAIN:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 80
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "RQUERY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->RQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 81
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "SQUERY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 82
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "DEVICE_LOCATION"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEVICE_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 83
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LEGACY_NEAR_PARAM"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 84
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "CARRIER_COUNTRY"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CARRIER_COUNTRY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 85
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "SHOWTIME_ONEBOX"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SHOWTIME_ONEBOX:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 86
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LOCAL_UNIVERSAL"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LOCAL_UNIVERSAL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 87
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "SEARCH_TOOLBELT"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SEARCH_TOOLBELT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 88
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "MOBILE_FE_HISTORY"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_FE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 89
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "GWS_MOBILE_HISTORY"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GWS_MOBILE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 90
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "MOBILE_SELECTED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_SELECTED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 91
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "PARTNER"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PARTNER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 92
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "WEB_SEARCH_RESULTS_PAGE_SHARED"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WEB_SEARCH_RESULTS_PAGE_SHARED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 93
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "WEB_SEARCH_PREFERENCES_PAGE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WEB_SEARCH_PREFERENCES_PAGE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 94
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "MAPS_FRONTEND"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MAPS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 95
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "PRODUCT_SEARCH_FRONTEND"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PRODUCT_SEARCH_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 96
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "ADS_CRITERIA_ID"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->ADS_CRITERIA_ID:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 97
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "MOBILE_APP"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_APP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 98
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "QUERY_HISTORY_INFERRED"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->QUERY_HISTORY_INFERRED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 99
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "GMAIL_THEME"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GMAIL_THEME:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 100
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "IGOOGLE"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->IGOOGLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 101
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "CALENDAR"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CALENDAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 102
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "SMS_SEARCH"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x1d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SMS_SEARCH:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 103
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LEGACY_GL_PARAM"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 104
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LEGACY_PARTNER_GL_PARAM"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_PARTNER_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 105
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "CIRCULARS_FRONTEND"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CIRCULARS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 106
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "DEFAULT_LOCATION_OVERRIDE_PRODUCER"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEFAULT_LOCATION_OVERRIDE_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 107
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "WILDCARD_PRODUCER"

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WILDCARD_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 108
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LEGACY_TOOLBAR_HEADER"

    const/16 v2, 0x21

    const/16 v3, 0x21

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_TOOLBAR_HEADER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 109
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LEGACY_MOBILE_FRONTEND_GLL"

    const/16 v2, 0x22

    const/16 v3, 0x22

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_MOBILE_FRONTEND_GLL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 110
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    const-string v1, "LEGACY_MOBILE_FRONTEND_NEAR"

    const/16 v2, 0x23

    const/16 v3, 0x23

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_MOBILE_FRONTEND_NEAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 73
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LOGGED_IN_USER_SPECIFIED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PREF_L_FIELD_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->IP_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GOOGLE_HOST_DOMAIN:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->RQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEVICE_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CARRIER_COUNTRY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SHOWTIME_ONEBOX:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LOCAL_UNIVERSAL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SEARCH_TOOLBELT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_FE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GWS_MOBILE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_SELECTED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PARTNER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WEB_SEARCH_RESULTS_PAGE_SHARED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WEB_SEARCH_PREFERENCES_PAGE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MAPS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PRODUCT_SEARCH_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->ADS_CRITERIA_ID:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_APP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->QUERY_HISTORY_INFERRED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GMAIL_THEME:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->IGOOGLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CALENDAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SMS_SEARCH:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_PARTNER_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CIRCULARS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEFAULT_LOCATION_OVERRIDE_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WILDCARD_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_TOOLBAR_HEADER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_MOBILE_FRONTEND_GLL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_MOBILE_FRONTEND_NEAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 200
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->value:I

    .line 211
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1
    .parameter "value"

    .prologue
    .line 154
    packed-switch p0, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 156
    :pswitch_1
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LOGGED_IN_USER_SPECIFIED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 157
    :pswitch_2
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PREF_L_FIELD_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->IP_ADDRESS:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 159
    :pswitch_4
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GOOGLE_HOST_DOMAIN:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 160
    :pswitch_5
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->RQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 161
    :pswitch_6
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SQUERY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 162
    :pswitch_7
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEVICE_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 163
    :pswitch_8
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 164
    :pswitch_9
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CARRIER_COUNTRY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 165
    :pswitch_a
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SHOWTIME_ONEBOX:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 166
    :pswitch_b
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LOCAL_UNIVERSAL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 167
    :pswitch_c
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SEARCH_TOOLBELT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 168
    :pswitch_d
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_FE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 169
    :pswitch_e
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GWS_MOBILE_HISTORY:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 170
    :pswitch_f
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_SELECTED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 171
    :pswitch_10
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PARTNER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 172
    :pswitch_11
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WEB_SEARCH_RESULTS_PAGE_SHARED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 173
    :pswitch_12
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WEB_SEARCH_PREFERENCES_PAGE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 174
    :pswitch_13
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MAPS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 175
    :pswitch_14
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->PRODUCT_SEARCH_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 176
    :pswitch_15
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->ADS_CRITERIA_ID:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 177
    :pswitch_16
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->MOBILE_APP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 178
    :pswitch_17
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->QUERY_HISTORY_INFERRED:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 179
    :pswitch_18
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->GMAIL_THEME:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 180
    :pswitch_19
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->IGOOGLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 181
    :pswitch_1a
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CALENDAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 182
    :pswitch_1b
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->SMS_SEARCH:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 183
    :pswitch_1c
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 184
    :pswitch_1d
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_PARTNER_GL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 185
    :pswitch_1e
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->CIRCULARS_FRONTEND:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 186
    :pswitch_1f
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEFAULT_LOCATION_OVERRIDE_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 187
    :pswitch_20
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->WILDCARD_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 188
    :pswitch_21
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_TOOLBAR_HEADER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 189
    :pswitch_22
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_MOBILE_FRONTEND_GLL:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 190
    :pswitch_23
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->LEGACY_MOBILE_FRONTEND_NEAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_21
        :pswitch_22
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_11
        :pswitch_23
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1e
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v0}, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->value:I

    return v0
.end method
