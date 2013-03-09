.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol;
.super Ljava/lang/Object;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_Authentication_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_Authentication_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_ClientToServer_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_ClientToServer_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_KeepAliveInterval_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_KeepAliveInterval_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_Location_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_Location_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_ServerToClient_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_Proxy_ImmediateModeProtocol_ServerToClient_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1974
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n4com/htc/cscore/transport/ImmediateModeProtocol.proto\u0012*Communications.Proxy.ImmediateModeProtocol\"\u00dc\u0002\n\u000eServerToClient\u0012T\n\u0004Type\u0018\u0001 \u0002(\u000e2F.Communications.Proxy.ImmediateModeProtocol.ServerToClient.MessageType\u0012\u0017\n\u000fMinimumInterval\u0018\u0002 \u0001(\u0005\u0012\u0017\n\u000fMaximumInterval\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nServerTime\u0018\u0004 \u0001(\u0003\u0012S\n\u000eQueuesWithData\u0018\u0005 \u0003(\u000e2;.Communications.Proxy.ImmediateModeProtocol.QueueIdentifier\"Y\n\u000bMessageType\u0012\u0007\n\u0003Nop\u0010\u0000\u0012\u000f\n\u000bDataPending\u0010\u0001\u0012"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0008\n\u0004Ring\u0010\u0002\u0012\u000f\n\u000bGetLocation\u0010\u0003\u0012\u0015\n\u0011InvalidCredential\u0010\u0004\"3\n\u000eAuthentication\u0012\u0012\n\nAuthTicket\u0018\u0001 \u0002(\t\u0012\r\n\u0005Email\u0018\u0002 \u0002(\t\"%\n\u0011KeepAliveInterval\u0012\u0010\n\u0008Interval\u0018\u0001 \u0002(\u0005\"/\n\u0008Location\u0012\u0010\n\u0008Latitude\u0018\u0001 \u0002(\u0001\u0012\u0011\n\tLongitude\u0018\u0002 \u0002(\u0001\"\u00e2\u0001\n\u000eClientToServer\u0012A\n\u0003Loc\u0018\u0001 \u0001(\u000b24.Communications.Proxy.ImmediateModeProtocol.Location\u0012P\n\tKeepAlive\u0018\u0002 \u0001(\u000b2=.Communications.Proxy.ImmediateModeProtocol.KeepAliveInterval\";\n\u000bMessageType\u0012\u0018\n\u0014SetKeepAliveInterval\u0010\u0000\u0012"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0012\n\u000eLocationResult\u0010\u0001*H\n\u000fQueueIdentifier\u0012\u000b\n\u0007Default\u0010\u0000\u0012\u0014\n\u0010DefaultFullMerge\u0010\u0001\u0012\u0012\n\u000eSimpleSettings\u0010\u0002B\u001a\n\u0018com.htc.cscore.transport"

    aput-object v3, v1, v2

    .line 2000
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$1;-><init>()V

    .line 2048
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2052
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
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ServerToClient_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ServerToClient_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ServerToClient_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ServerToClient_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Authentication_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Authentication_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Authentication_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Authentication_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_KeepAliveInterval_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_KeepAliveInterval_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_KeepAliveInterval_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_KeepAliveInterval_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Location_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Location_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Location_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_Location_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ClientToServer_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ClientToServer_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ClientToServer_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internal_static_Communications_Proxy_ImmediateModeProtocol_ClientToServer_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1969
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 2054
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method
