.class public Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;
.super Ljava/lang/Object;
.source "CheckinMessageTypes.java"


# static fields
.field public static final ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_INTENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_STATISTIC_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final GSERVICES_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final MCC_DATABASE:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x41c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x21c

    const/4 v6, 0x0

    .line 10
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 12
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_STATISTIC_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 13
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 14
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_INTENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->GSERVICES_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 19
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->MCC_DATABASE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 22
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

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

    .line 50
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 58
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_STATISTIC_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x212

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 66
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x4

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

    .line 84
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_INTENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x5

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "EXTRA"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x11c

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v7, v4, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 100
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x118

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x118

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x11

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x32

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 136
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->GSERVICES_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x119

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x119

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 142
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x216

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 182
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x118

    invoke-virtual {v0, v1, v8, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_INTENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v9, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->GSERVICES_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x216

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x216

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 200
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->MCC_DATABASE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x41a

    new-instance v2, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v3, "MCC"

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11c

    invoke-virtual {v2, v3, v9, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x11c

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v7, v3, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
