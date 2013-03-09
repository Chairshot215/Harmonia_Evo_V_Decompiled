.class public Lcom/google/android/feedback/proto/AndroidClientMessageTypes;
.super Ljava/lang/Object;
.source "AndroidClientMessageTypes.java"


# static fields
.field public static final ANDROID_BUG_REPORT:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANDROID_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ANR_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final BATTERY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final BUILD_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final COMMON_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CRASH_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final DIMENSIONS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final IMAGE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final PACKAGE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RUNNING_SERVICE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SYSTEM_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final TELEPHONY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final USER_INITIATED_FEEDBACK_DATA:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x11c

    const/16 v5, 0x21c

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->COMMON_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 12
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->DIMENSIONS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 13
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 14
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->IMAGE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->TELEPHONY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_BUG_REPORT:Lcom/google/common/io/protocol/ProtoBufType;

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 19
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->SYSTEM_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 20
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PACKAGE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BUILD_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->CRASH_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANR_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BATTERY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 28
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->COMMON_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x216

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "en"

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "en_US"

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 50
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 58
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->DIMENSIONS:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 64
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 74
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->IMAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->DIMENSIONS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 82
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->IMAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 96
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->TELEPHONY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 104
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_BUG_REPORT:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->COMMON_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 112
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->SYSTEM_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PACKAGE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BUILD_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->CRASH_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANR_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BATTERY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 130
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->SYSTEM_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x116

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->TELEPHONY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 144
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PACKAGE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 158
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BUILD_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 184
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->CRASH_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 200
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANR_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 210
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BATTERY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 220
    sget-object v0, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 226
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
