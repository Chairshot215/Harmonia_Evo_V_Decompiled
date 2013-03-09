.class public Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;
.super Ljava/lang/Object;
.source "GmsProtosMessageTypes.java"


# static fields
.field public static final CONVERSATION_HEADER:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_BEGIN_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_BEGIN_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_CHECK_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_CHUNK:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_CONFIG_ACCEPTED:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_CONFIG_INFO:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_END_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_END_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_FORWARD_SYNC_OPERATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_MESSAGE_BATCH:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_NO_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_NO_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_PREAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_START_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_SYNC_POSTAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final RESPONSE_UPHILL_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final SENDER_INSTRUCTIONS:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 10
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHUNK:Lcom/google/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_PREAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CONFIG_INFO:Lcom/google/common/io/protocol/ProtoBufType;

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CONFIG_ACCEPTED:Lcom/google/common/io/protocol/ProtoBufType;

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_START_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

    .line 26
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_UPHILL_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

    .line 27
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHECK_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 28
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_FORWARD_SYNC_OPERATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 29
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_SYNC_POSTAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 30
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_BEGIN_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 31
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_END_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 32
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_BEGIN_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 33
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_END_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 34
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_NO_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    .line 35
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_NO_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 36
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 37
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_MESSAGE_BATCH:Lcom/google/common/io/protocol/ProtoBufType;

    .line 38
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    .line 39
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 40
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->SENDER_INSTRUCTIONS:Lcom/google/common/io/protocol/ProtoBufType;

    .line 41
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->CONVERSATION_HEADER:Lcom/google/common/io/protocol/ProtoBufType;

    .line 44
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/16 v2, 0x8

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "GET_CONFIG_INFO"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x2

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "CONFIG"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x41c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x41c

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x6

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "START_SYNC"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x213

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x5

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x6

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x7

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/16 v5, 0x8

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/16 v5, 0x9

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x4

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "MAIN_SYNC"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x213

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x6

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/16 v5, 0x8

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/16 v5, 0x9

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/16 v5, 0xa

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/16 v5, 0xb

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/16 v5, 0xc

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v7, 0x4

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x3

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "CONVERSATION_SYNC"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x41a

    const/4 v5, 0x1

    new-instance v6, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v7, "CONVERSATION_SYNC_CONVERSATION"

    invoke-direct {v6, v7}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x213

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    const/16 v7, 0x213

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    const/16 v7, 0x413

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x413

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x3

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x413

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x7

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "UPHILL_SYNC"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x41a

    const/4 v5, 0x1

    new-instance v6, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v7, "UPHILL_SYNC_OPERATION"

    invoke-direct {v6, v7}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x213

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    const/16 v7, 0x21a

    const/4 v8, 0x2

    new-instance v9, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v10, "UPHILL_SYNC_OPERATION_MESSAGE_LABEL_ADDED_OR_REMOVED"

    invoke-direct {v9, v10}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x213

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x215

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x218

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    const/16 v7, 0x21a

    const/4 v8, 0x3

    new-instance v9, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v10, "UPHILL_SYNC_OPERATION_CONVERSATION_LABEL_ADDED_OR_REMOVED"

    invoke-direct {v9, v10}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x213

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x215

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x218

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    const/16 v7, 0x21a

    const/4 v8, 0x4

    new-instance v9, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v10, "UPHILL_SYNC_OPERATION_MESSAGE_SAVED_OR_SENT"

    invoke-direct {v9, v10}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x213

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x213

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x41c

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x41a

    const/16 v11, 0x9

    new-instance v12, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v13, "UPHILL_SYNC_OPERATION_MESSAGE_SAVED_OR_SENT_UPLOADED_ATTACHMENT"

    invoke-direct {v12, v13}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x21c

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v12

    const/16 v13, 0x21c

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v12

    const/16 v13, 0x21c

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v12

    const/16 v13, 0x219

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x218

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x218

    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x218

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x215

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x218

    const/16 v11, 0xe

    sget-object v12, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    const/16 v10, 0x21c

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    const/16 v7, 0x213

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x5

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "QUERY"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x21c

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 200
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHUNK:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_PREAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CONFIG_INFO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CONFIG_ACCEPTED:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_START_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_UPHILL_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_FORWARD_SYNC_OPERATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHECK_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_BEGIN_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_BEGIN_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_END_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_END_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_NO_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_NO_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_SYNC_POSTAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_MESSAGE_BATCH:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 236
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_PREAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x215

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x3

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x4

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 250
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CONFIG_INFO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x215

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 258
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CONFIG_ACCEPTED:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 262
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_START_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x4

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "LABEL"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 308
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_UPHILL_SYNC:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x41a

    const/4 v2, 0x1

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "MESSAGE_NOT_HANDLED"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x213

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x2

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "MESSAGE_SAVED_OR_SENT"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x213

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 326
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHECK_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->CONVERSATION_HEADER:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 334
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_FORWARD_SYNC_OPERATION:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x2

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "THREAD_LABELED_OR_UNLABELED"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x413

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x3

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "LABEL_CREATED"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x4

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "LABEL_RENAMED"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x5

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "LABEL_DELETED"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_CHECK_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/16 v2, 0x9

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "PREFERENCE_CHANGE"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x21c

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x3

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 380
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_SYNC_POSTAMBLE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x3

    sget-object v3, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x5

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "LABEL_COUNT_CHANGED"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x215

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 402
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_BEGIN_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 410
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_BEGIN_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 414
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_NO_CONVERSATION:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 418
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_NO_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 422
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_MESSAGE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x415

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/16 v2, 0xf

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "ATTACHMENT"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x21c

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 472
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_MESSAGE_BATCH:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x119

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x113

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x113

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 482
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->RESPONSE_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x215

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x3

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "CONVERSATION"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x213

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x213

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21b

    const/16 v5, 0xa

    sget-object v6, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->SENDER_INSTRUCTIONS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x415

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 512
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->EMAIL_ADDRESS:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21c

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 518
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->SENDER_INSTRUCTIONS:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x215

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/4 v2, 0x3

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "SENDER"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x218

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x218

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x215

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 534
    sget-object v0, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->CONVERSATION_HEADER:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x213

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21c

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gm/provider/protos/GmsProtosMessageTypes;->SENDER_INSTRUCTIONS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x415

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 558
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
