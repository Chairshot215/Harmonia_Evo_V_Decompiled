.class public final Lcom/htc/cscore/transport/ReliableMessaging;
.super Ljava/lang/Object;
.source "ReliableMessaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;,
        Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Communications_MessageQueue_PbReliableMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_MessageQueue_PbReliableMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_MessageQueue_PbReliableMessages_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_MessageQueue_PbReliableMessages_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 825
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n0com/htc/cscore/transport/ReliableMessaging.proto\u0012\u001bCommunications.MessageQueue\"\u00ea\u0002\n\u0011PbReliableMessage\u0012H\n\u0004Type\u0018\u0001 \u0002(\u000e2:.Communications.MessageQueue.PbReliableMessage.MessageType\u0012\u0012\n\nSequenceId\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bSequenceNum\u0018\u0003 \u0002(\u0005\u0012\u0012\n\nPayloadBuf\u0018\u0004 \u0001(\u000c\"\u00cd\u0001\n\u000bMessageType\u0012\u000b\n\u0007Payload\u0010\u0000\u0012\u000e\n\nPayloadAck\u0010\u0001\u0012\u000e\n\nEndOfQueue\u0010\u0002\u0012\u0019\n\u0015CreateSequenceRequest\u0010\n\u0012\u001a\n\u0016CreateSequenceResponse\u0010\u000b\u0012\u001d\n\u0019RepositionSequenceRequest\u0010\u000f\u0012\u001d\n\u0019RepositionSeq"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "uenceFailure\u0010\u0010\u0012\u000c\n\u0008SeqFault\u0010d\u0012\u000e\n\nStorePanic\u0010e\"V\n\u0012PbReliableMessages\u0012@\n\u0008messages\u0018\u0001 \u0003(\u000b2..Communications.MessageQueue.PbReliableMessageB\u001a\n\u0018com.htc.cscore.transport"

    aput-object v3, v1, v2

    .line 841
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ReliableMessaging$1;-><init>()V

    .line 865
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 869
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessages_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessages_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessages_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ReliableMessaging;->internal_static_Communications_MessageQueue_PbReliableMessages_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ReliableMessaging;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 820
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method
