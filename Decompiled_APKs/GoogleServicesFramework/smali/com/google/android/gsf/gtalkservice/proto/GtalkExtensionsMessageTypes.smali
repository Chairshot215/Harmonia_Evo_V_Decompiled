.class public Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;
.super Ljava/lang/Object;
.source "GtalkExtensionsMessageTypes.java"


# static fields
.field public static final CAPABILITIES:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CHAT_CLOSED:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final CHAT_READ:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final IDLE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final OTR_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final OTR_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final PHOTO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final POST_AUTH_BATCH_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RMQ_ACK:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RMQ_LAST_ID:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ROSTER_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SELECTIVE_ACK:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final STREAM_ACK:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final VCARD:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x218

    const/16 v9, 0x215

    const/16 v8, 0x21c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    .line 12
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_LAST_ID:Lcom/google/common/io/protocol/ProtoBufType;

    .line 13
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    .line 14
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->VCARD:Lcom/google/common/io/protocol/ProtoBufType;

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->PHOTO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CHAT_READ:Lcom/google/common/io/protocol/ProtoBufType;

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CHAT_CLOSED:Lcom/google/common/io/protocol/ProtoBufType;

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CAPABILITIES:Lcom/google/common/io/protocol/ProtoBufType;

    .line 19
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 20
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->IDLE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->POST_AUTH_BATCH_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->STREAM_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SELECTIVE_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    .line 28
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 40
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 58
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_LAST_ID:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 62
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->RMQ_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 66
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->VCARD:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->PHOTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 78
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->PHOTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 84
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CHAT_READ:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 88
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CHAT_CLOSED:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 92
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->CAPABILITIES:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 102
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v9, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x6

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "STATUS_LIST"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x115

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x41c

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 124
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v10, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 134
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x118

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 142
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->IDLE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x118

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 148
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->POST_AUTH_BATCH_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x118

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v9, v1, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 168
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SELECTIVE_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x41c

    invoke-virtual {v0, v1, v7, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 172
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
