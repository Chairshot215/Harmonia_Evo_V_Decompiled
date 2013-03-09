.class public Lcom/google/android/location/protocol/LocserverMessageTypes;
.super Ljava/lang/Object;
.source "LocserverMessageTypes.java"


# static fields
.field public static final GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GCELL:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GCELLULAR_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GCELLULAR_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GCLIENT_CACHE_STATS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GCLIENT_SERVER_QUERY_STATS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GCLIENT_STATS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GDEBUG_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GFEATURE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GFEATURE_TYPE_RESTRICT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GGATEWAY_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GGPS_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GPLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GPREFETCH_MODE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GSESSION_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GUSER_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GWIFI_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final NLP_ELEMENT_APP_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final NLP_PARAMETERS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_CODES:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x21b

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/16 v7, 0x215

    const/4 v6, 0x0

    .line 10
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GFEATURE_TYPE_RESTRICT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 12
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 13
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_CACHE_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 14
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->NLP_ELEMENT_APP_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GUSER_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->RESPONSE_CODES:Lcom/google/common/io/protocol/ProtoBufType;

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GSESSION_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 19
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    .line 20
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGPS_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 26
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 27
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 28
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 29
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->NLP_PARAMETERS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 30
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GDEBUG_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 31
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGATEWAY_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 32
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GPLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 33
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 34
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 35
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    .line 36
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GFEATURE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 37
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELLULAR_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 38
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELLULAR_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 39
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 40
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GPREFETCH_MODE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 41
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_SERVER_QUERY_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 42
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 45
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GFEATURE_TYPE_RESTRICT:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x415

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x415

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 51
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v10, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x415

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x419

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xf

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 75
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x41c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 81
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_CACHE_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 97
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x217

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v9, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    sget-object v2, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x6

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 111
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->NLP_ELEMENT_APP_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    sget-object v1, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v9, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 125
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GUSER_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 131
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GSESSION_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 139
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x117

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x117

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 145
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GADDRESS_COMPONENT:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 153
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGPS_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 163
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 169
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v10, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 181
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GSESSION_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->NLP_PARAMETERS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 193
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 199
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGATEWAY_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 209
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 231
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x212

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 271
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->NLP_PARAMETERS:Lcom/google/common/io/protocol/ProtoBufType;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v9, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    sget-object v2, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x214

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Long;

    const-wide/32 v4, 0x93a80

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/32 v3, 0x15180

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x214

    const/16 v2, 0xb

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x214

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x64

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x12c

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x15

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x258

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x258

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/Long;

    const-wide/32 v3, 0x15180

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 295
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GDEBUG_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    sget-object v2, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x4

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x6

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 309
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGATEWAY_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 315
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GPLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 335
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 349
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 367
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, -0x270f

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 389
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GFEATURE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 403
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELLULAR_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 415
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELLULAR_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v9, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 427
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v10, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x212

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 437
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_SERVER_QUERY_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 447
    sget-object v0, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 463
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
