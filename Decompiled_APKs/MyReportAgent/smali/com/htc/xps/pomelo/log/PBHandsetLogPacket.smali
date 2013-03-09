.class public final Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;
.super Ljava/lang/Object;
.source "PBHandsetLogPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pomelo_log_HandsetLogPKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetLogPKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 520
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\n\u0018PBHandsetLogPacket.proto\u0012\npomelo.log\u001a\u0015PBCommonMessage.proto\"\u00a1\u0001\n\rHandsetLogPKT\u0012\u0014\n\u0007version\u0018\u0001 \u0001(\t:\u00031.0\u0012+\n\u000bdevice_info\u0018\u0002 \u0001(\u000b2\u0016.pomelo.log.DeviceInfo\u0012\'\n\u0007payload\u0018\u000b \u0003(\u000b2\u0016.pomelo.log.LogPayload\u0012\u0011\n\u0006lookup\u0018\u0015 \u0001(\u0005:\u00011\u0012\u0011\n\tcheck_sum\u0018\u0016 \u0001(\u0011B,\n\u0016com.htc.xps.pomelo.logB\u0012PBHandsetLogPacket"

    aput-object v2, v1, v4

    .line 529
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$1;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$1;-><init>()V

    .line 545
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 550
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->internal_static_pomelo_log_HandsetLogPKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->internal_static_pomelo_log_HandsetLogPKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->internal_static_pomelo_log_HandsetLogPKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->internal_static_pomelo_log_HandsetLogPKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method
