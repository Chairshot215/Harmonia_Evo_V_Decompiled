.class public final Lcom/htc/cscore/transport/StatusServerProtocol;
.super Ljava/lang/Object;
.source "StatusServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;,
        Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Communications_Proxy_StatusServer_HandsetDeviceID_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_StatusServer_HandsetDeviceID_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_Proxy_StatusServer_StatusResponse_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_StatusServer_StatusResponse_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 758
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n3com/htc/cscore/transport/StatusServerProtocol.proto\u0012!Communications.Proxy.StatusServer\"\u001d\n\u000fHandsetDeviceID\u0012\n\n\u0002Id\u0018\u0001 \u0002(\u000c\"\u0089\u0002\n\u000eStatusResponse\u0012Y\n\u000eQueuesWithData\u0018\u0001 \u0003(\u000e2A.Communications.Proxy.StatusServer.StatusResponse.QueueIdentifier\u0012$\n\u001cMinumumPollIntervalInSeconds\u0018\u0002 \u0002(\u0005\u0012,\n$SuggestedPollVarianceWindowInSeconds\u0018\u0003 \u0002(\u0005\"H\n\u000fQueueIdentifier\u0012\u000b\n\u0007Default\u0010\u0000\u0012\u0014\n\u0010DefaultFullMerge\u0010\u0001\u0012\u0012\n\u000eSimpleSettings\u0010\u0002B\u001a\n\u0018com.htc.c"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "score.transport"

    aput-object v3, v1, v2

    .line 771
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$1;-><init>()V

    .line 795
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 799
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
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_HandsetDeviceID_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_HandsetDeviceID_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_HandsetDeviceID_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_HandsetDeviceID_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/StatusServerProtocol;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_StatusResponse_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_StatusResponse_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_StatusResponse_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/StatusServerProtocol;->internal_static_Communications_Proxy_StatusServer_StatusResponse_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method
