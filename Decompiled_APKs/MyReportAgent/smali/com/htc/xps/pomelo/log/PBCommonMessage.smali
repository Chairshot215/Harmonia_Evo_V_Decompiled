.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage;
.super Ljava/lang/Object;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;,
        Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;,
        Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pomelo_log_DataPair_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_DataPair_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_DeviceInfo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_DeviceInfo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_LogPayload_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_LogPayload_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1425
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0015PBCommonMessage.proto\u0012\npomelo.log\"\u00d1\u0001\n\nDeviceInfo\u0012\u000e\n\u0006region\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004city\u0018\u0002 \u0001(\t\u0012\u0011\n\ttime_zone\u0018\u0003 \u0001(\u0011\u0012\u0010\n\u0008model_id\u0018\u0004 \u0001(\t\u0012\u0011\n\tdevice_id\u0018\u0005 \u0001(\t\u0012\u0011\n\tdevice_SN\u0018\u0006 \u0001(\t\u0012\u000b\n\u0003cid\u0018\u0007 \u0001(\t\u0012\u0013\n\u000brom_version\u0018\u0008 \u0001(\t\u0012\u0015\n\rsense_version\u0018\t \u0001(\t\u0012!\n\u0019privacy_statement_version\u0018\n \u0001(\t\"&\n\u0008DataPair\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"c\n\nLogPayload\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008category\u0018\u0002 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0003 \u0001(\u0003\u0012\u000c\n\u0004data\u0018\u000b \u0001(\t\u0012\u0012\n\nattachment\u0018\u000c \u0001(\u000cB)\n\u0016com.htc."

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "xps.pomelo.logB\u000fPBCommonMessage"

    aput-object v3, v1, v2

    .line 1438
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$1;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$1;-><init>()V

    .line 1470
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1474
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
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DeviceInfo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DeviceInfo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DeviceInfo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DeviceInfo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DataPair_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DataPair_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DataPair_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_DataPair_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_LogPayload_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_LogPayload_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_LogPayload_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internal_static_pomelo_log_LogPayload_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1420
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 1476
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method
